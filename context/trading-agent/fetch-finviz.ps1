# fetch-finviz.ps1
# Fetches Finviz Elite quote pages for one or more tickers and parses all snapshot fields.
# Requires active Finviz Elite session cookies.
# Usage: .\fetch-finviz.ps1 -Tickers "PFE","COP","MRK"
#
# NOTES:
# - Do NOT include a "Connection" header — PowerShell Invoke-WebRequest rejects it.
# - Chrome UA string is required per task-conventions.md Section 8.
# - Finviz Elite pages use a div-based HTML layout (snapshot-td-label / snapshot-td-content).
#   The classic table layout (snapshot-td2-cp) is also supported as a fallback.
# - Cookies must be refreshed periodically; paste current values from an active browser session.

param(
    [string[]]$Tickers = @("PFE", "COP", "MRK", "LMT", "CVX", "BMY"),

    # Paste current .ASPXAUTH and finviz_t cookie values here (or pass via -AuthCookie)
    [string]$AuthCookie = ""
)

if (-not $AuthCookie) {
    Write-Error "AuthCookie is required. Pass -AuthCookie with your active .ASPXAUTH and finviz_t values."
    Write-Host "Example:"
    Write-Host '  .\fetch-finviz.ps1 -AuthCookie ".ASPXAUTH=<value>; finviz_t=<value>; notice-newsletter=hidden elite"'
    exit 1
}

$ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"

$headers = @{
    "User-Agent"      = $ua
    "Cookie"          = $AuthCookie
    "Accept"          = "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"
    "Accept-Language" = "en-US,en;q=0.9"
    "Accept-Encoding" = "gzip, deflate, br"
    "Referer"         = "https://finviz.com/screener.ashx"
}
# NOTE: "Connection" header intentionally omitted — PowerShell Invoke-WebRequest rejects it.

foreach ($ticker in $Tickers) {
    Write-Host ""
    Write-Host "===== $ticker ====="
    try {
        $url = "https://finviz.com/quote.ashx?t=$ticker"
        $response = Invoke-WebRequest -Uri $url -Headers $headers -UseBasicParsing -TimeoutSec 20
        $html = $response.Content

        $found = $false

        # Method 1: Elite div-based layout
        $labelMatches = [regex]::Matches(
            $html,
            '<div class="snapshot-td-label">([^<]+)</div>\s*<div class="snapshot-td-content[^"]*">(?:<[^>]*>)?([^<]*)(?:</[^>]*>)?</div>'
        )
        if ($labelMatches.Count -gt 0) {
            Write-Host "  [Elite layout - $($labelMatches.Count) fields]"
            foreach ($m in $labelMatches) {
                $lbl = $m.Groups[1].Value.Trim()
                $val = $m.Groups[2].Value.Trim()
                if ($lbl -ne "" -and $val -ne "") {
                    Write-Host "  $lbl : $val"
                }
            }
            $found = $true
        }

        # Method 2: Classic table layout (public / fallback)
        $tableMatches = [regex]::Matches(
            $html,
            '<td class="snapshot-td2-cp[^"]*"[^>]*>\s*<b>([^<]+)</b>\s*</td>\s*<td class="snapshot-td2[^"]*"[^>]*>(?:<[^>]*>)?([^<]*)(?:</[^>]*>)?</td>'
        )
        if ($tableMatches.Count -gt 0) {
            Write-Host "  [Classic table layout - $($tableMatches.Count) fields]"
            foreach ($m in $tableMatches) {
                $lbl = $m.Groups[1].Value.Trim()
                $val = $m.Groups[2].Value.Trim()
                if ($lbl -ne "" -and $val -ne "") {
                    Write-Host "  $lbl : $val"
                }
            }
            $found = $true
        }

        if (-not $found) {
            Write-Host "  [No matching layout found - dumping first 3000 chars for debugging]"
            Write-Host $html.Substring(0, [Math]::Min(3000, $html.Length))
        }

        Start-Sleep -Milliseconds 1200

    } catch {
        Write-Host "  ERROR: $_"
    }
}

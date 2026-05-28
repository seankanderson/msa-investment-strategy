$authCookie = ".ASPXAUTH=FB9ED5D0AB6AA597001E79E746FA14C379F6DF4B888A68F16D83FF4BC183F0E607C03C9DDD05A9ED57837B3A1CF5638DF897559502AD4DB148967A0FFFDC76E499A0CCEFA1E6BC43138D0118557461F0F7097B2CA7A7D0DA96AC7DF592FD7966D7DE47406A2F2E5787E67CACC9F502BC006A88B4A73BB05D2C6B38FEF4E2FBF6841923397637BF08261B5704CE600E164E2082DF2A59DEF701889BFF4D946B0398288D3AE107A11336A30EA49EE64AA3996A88F59FD97747681363D932195842ED78FDE6DB76EB04DA3B82056EAA4EF49C1D53F138D2F0C90C7161A37DF2219DBC558B58; finviz_t=67d0f9db-96bc-4a7a-aae6-34b118f35ecc"
$headers = @{
    "Cookie" = $authCookie
    "User-Agent" = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
    "Accept" = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
}

$tickers = @("MRK", "LMT", "CVX", "COP", "PFE", "BMY", "KHC")

foreach ($ticker in $tickers) {
    Write-Output "===== $ticker =====" 
    try {
        $url = "https://finviz.com/quote.ashx?t=$ticker"
        $response = Invoke-WebRequest -Uri $url -Headers $headers -UseBasicParsing -TimeoutSec 15
        $html = $response.Content
        
        if ($html -match "Please solve the reCAPTCHA") {
            Write-Output "  BLOCKED: reCAPTCHA detected."
            continue
        }

        # Simplified snapshot parsing
        $labelPairs = [regex]::Matches($html, '<td[^>]*class="snapshot-td2-cp"[^>]*><b>([^<]+)</b></td>\s*<td[^>]*class="snapshot-td2"[^>]*>(?:<[^>]*>)?([^<]*)(?:</[^>]*>)?</td>')
        foreach ($pair in $labelPairs) {
            $label = $pair.Groups[1].Value.Trim()
            $value = $pair.Groups[2].Value.Trim()
            Write-Output "  $label : $value"
        }
        
    } catch {
        Write-Output "  ERROR: $_"
    }
    Start-Sleep -Seconds 2
}

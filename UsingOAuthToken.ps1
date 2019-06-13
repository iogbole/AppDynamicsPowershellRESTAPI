#comment the first 3 lines if you're not using proxy 

[system.net.webrequest]::defaultwebproxy = new-object system.net.webproxy('proxyHost:ProxyPort')

[system.net.webrequest]::defaultwebproxy.credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials

[system.net.webrequest]::defaultwebproxy.BypassProxyOnLocal = $true


$hostname = "https://customername.saas.appdynamics.com"

$endpoint = "/controller/rest/applications?output=json"

$url = $hostname+$endpoint

Write-Host "Connecting to URL: $url"

$token = "Bearer paste-token-here"

$headers = @{ Authorization = $token }

$result = Invoke-WebRequest -uri $url -Headers $headers

Write-Host $result

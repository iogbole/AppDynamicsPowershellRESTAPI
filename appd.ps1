$hostname = "https://apmnbstest.saas.appdynamics.com"
$endpoint = "/controller/rest/applications?output=json"
$url = $hostname+$endpoint

$user = "userName@accountName"
$pass= "xxxxxx"

$pair = "${user}:${pass}"
$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [System.Convert]::ToBase64String($bytes)
$basicAuthValue = "Basic $base64"

$headers = @{ Authorization = $basicAuthValue }
$result = Invoke-WebRequest -uri $hostname -Headers $headers

Write-Host $result

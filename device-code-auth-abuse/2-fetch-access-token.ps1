$client_id = "<client_id>" # Replace
$resource = "https://graph.microsoft.com"
$grant_type = "urn:ietf:params:oauth:grant-type:device_code"
$code = "<device code>" # Replace

$body = @{
    client_id = $client_id
    resource = $resource
    grant_type = $grant_type
    code = $code
}

$response = Invoke-WebRequest -Uri "https://login.microsoftonline.com/common/oauth2/token?api-version=1.0" -Method Post -Body $body

$response.Content

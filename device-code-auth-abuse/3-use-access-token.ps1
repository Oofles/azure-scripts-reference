$accessToken = "<access token>" # Replace

$headers = @{
    "Authorization" = "Bearer $accessToken"
    "Content-Type"  = "application/json"
}

# This example requests all the users, but the same method can be applied to make other requests
$response = Invoke-WebRequest -Uri "https://graph.microsoft.com/v1.0/users" -Headers $headers -Method Get

$response.Content
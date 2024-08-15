$body=@{
    # Client ID reference: https://learn.microsoft.com/en-us/troubleshoot/azure/active-directory/verify-first-party-apps-sign-in
    # This is spoofing "Microsoft Office"
    "client_id" = "d3590ed6-52b3-4102-aeff-aad2292ab01c" 
    "resource" = "https://graph.microsoft.com"
    }
    
$authResponse = Invoke-RestMethod -UseBasicParsing -Method Post -Uri "https://login.microsoftonline.com/common/oauth2/devicecode?api-version=1.0" -Body $body
    
$authResponse
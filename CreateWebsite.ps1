Import-Module WebAdministration
#site name of parent
$siteName="Default Web Site"
$iisAppPoolName = "my-test-app"
$iisAppPoolDotNetVersion = "v4.0"
$iisAppName = "my-test-app.test"
$directoryPath = "C:\Testing\IIs Deployment\Dir"

#navigate to the sites root
cd IIS:\Sites\

#check if the site exists
if (Test-Path $iisAppName -pathType container)
{
    Write-Output "test output"
    return
}

#create the site
$iisApp = New-Item $iisAppName -bindings @{protocol="http";bindingInformation=":80:" + $iisAppName} -physicalPath $directoryPath
$iisApp | Set-ItemProperty -Name "applicationPool" -Value $iisAppPoolName

#Out-File -FilePath "C:\inetpub\wwwroot\my_website\test.txt"
#C:\Testing\"IIs Deployment"\CreateWebsite.ps1 | Out-File -FilePath "C:\inetpub\wwwroot\my_website\test.txt"

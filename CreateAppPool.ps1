Import-Module WebAdministration
$iisAppPoolName = "my-test-app"
$iisAppPoolDotNetVersion = "v4.0"
$iisAppName = "my-test-app.test"
$directoryPath = "C:\Testing\IIs Deployment\Dir"

#navigate to the app pools root
cd IIS:\AppPools\

#check if the app pool exists
if (!(Test-Path $iisAppPoolName -pathType container))
{
    #create the app pool
    $appPool = New-Item $iisAppPoolName
    $appPool | Set-ItemProperty -Name "managedRuntimeVersion" -Value $iisAppPoolDotNetVersion
}

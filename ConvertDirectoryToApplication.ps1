Import-Module WebAdministration
#site name of parent
$siteName="Default Web Site"
$iisAppPoolName = "my-test-app"
$iisAppPoolDotNetVersion = "v4.0"
$iisAppName = "my-test-app.test"
$directoryPath = "C:\Testing\IIs Deployment\Dir"

#New-WebVirtualDirectory -Site $siteName -Name file_to_app -PhysicalPath C:\inetpub\wwwroot
#New-WebApplication -Name file_to_app -Site $siteName\file_to_app -PhysicalPath "C:\inetpub\wwwroot\my_website" -ApplicationPool $iisAppPoolName 


ConvertTo-WebApplication "IIS:\Sites\$siteName\my_website" -ApplicationPool $iisAppPoolName 



#navigate to the app pools root
#cd IIS:\AppPools\

#check if the app pool exists
#if (!(Test-Path $iisAppPoolName -pathType container))
#{
    #create the app pool
 #   $appPool = New-Item $iisAppPoolName
  #  $appPool | Set-ItemProperty -Name "managedRuntimeVersion" -Value $iisAppPoolDotNetVersion
#}
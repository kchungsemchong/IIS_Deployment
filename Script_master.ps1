$scriptsList = 
@(
    'C:\Testing\Powershell\Script_1.ps1'
    'C:\Testing\Powershell\Script_2.ps1'
)

foreach($script in $scriptsList)
{

    Start-Process -FilePath "$PSHOME\powershell.exe" -ArgumentList "$($script) -name 'TEST1'" -Wait
<#
    if("$($script)".Contains("Script_1.ps1"))
    {
        Start-Process -FilePath "$PSHOME\powershell.exe" -ArgumentList "-name 'TEST1'" -Wait
        Continue
    }
    if("$($script)".Contains("Script_2.ps1"))
    {
        Start-Process -FilePath "$PSHOME\powershell.exe" -ArgumentList "-name_1 'TEST2'" -Wait
        Continue
    }
    #>
}
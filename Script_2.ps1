param
(
    [Parameter(Mandatory=$true)]
    [string]$name
)


New-Item C:\Testing\Powershell\test2.txt
Set-Content C:\Testing\Powershell\test2.txt "This is script_2 with name $($name)`n"
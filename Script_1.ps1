param
(
    [Parameter(Mandatory=$true)]
    [string]$name
)


New-Item C:\Testing\Powershell\test1.txt
Set-Content C:\Testing\Powershell\test1.txt "This is script_1 with name $($name)`n"

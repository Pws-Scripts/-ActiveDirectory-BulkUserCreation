$UsersToImport = Get-Content -Path 'C:\test\users.txt'

foreach($Item in $UsersToImport)
{
    
    $SecureString = ConvertTo-SecureString -String 'Pa55w.rd' -AsPlainText -Force

    $OU = 'OU=test,DC=Root,DC=Local'


    New-ADuser -Name $Item -AccountPassword $SecureString -Description 'Mordor' -Enabled $true -Path $OU


}
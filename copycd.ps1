$Source = 'C:\rh-setup\Custom Dictionary.txt'
$Destination = 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Default'
Get-ChildItem $Destination | ForEach-Object {Copy-Item -Path $Source -Destination $_ -Force}
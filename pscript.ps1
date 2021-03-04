Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/EMRlogin.txt -Outfile C:\rh-setup\EMRlogin.txt
Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/Custom%20Dictionary.txt -Outfile 'C:\rh-setup\Custom Dictionary.txt'
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer
$Source = 'C:\rh-setup\Custom Dictionary.txt'
$Destination = 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Default'
Get-ChildItem $Destination | ForEach-Object {Copy-Item -Path $Source -Destination $_ -Force}


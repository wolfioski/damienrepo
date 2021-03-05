Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/EMRlogin.txt -Outfile C:\rh-setup\EMRlogin.txt
Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/Custom%20Dictionary.txt -Outfile 'C:\rh-setup\Custom Dictionary.txt'
Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/scpower.ps1 -Outfile C:\rh-setup\scpower.ps1
Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/copycd.ps1 -Outfile C:\rh-setup\copycd.ps1
$Path = $env:TEMP; $Installer = "chrome_installer.exe"; Invoke-WebRequest "http://dl.google.com/chrome/install/375.126/chrome_installer.exe" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait; Remove-Item $Path\$Installer

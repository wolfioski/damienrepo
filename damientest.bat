@echo off
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/pscript.ps1 -Outfile C:\rh-setup\pscript.ps1"
powershell.exe -ExecutionPolicy Bypass -File c:\rh-setup\pscript.ps1
copy C:\rh-setup\EMRlogin.txt "C:\Program Files (x86)\EMR"
powershell.exe -ExecutionPolicy Bypass -File c:\rh-setup\scpower.ps1
powershell.exe -ExecutionPolicy Bypass -File c:\rh-setup\copycd.ps1
echo Done
pause


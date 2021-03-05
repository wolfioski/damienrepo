@echo off
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/wolfioski/damienrepo/main/pscript.ps1 -Outfile C:\rh-setup\pscript.ps1"
powershell.exe -ExecutionPolicy Bypass -File c:\rh-setup\pscript.ps1
copy C:\rh-setup\EMRlogin.txt "C:\Program Files (x86)\EMR"
powershell.exe -ExecutionPolicy Bypass -File c:\rh-setup\scpower.ps1
::Below starts chrome because file path needed to insert Custom Dictionary is not created by chrome installation it is only created from chrome starting
start chrome
timeout /t 7 /nobreak > nul
powershell.exe -ExecutionPolicy Bypass -File c:\rh-setup\copycd.ps1
::Below closes Chrome because Custom Dictionary while in proper folder location does not take affect until chrome is started closed and started again
powershell -command "Get-Process chrome | ForEach-Object { $_.CloseMainWindow() | Out-Null}"
echo Done and SUCCESFUL!!!!!
pause

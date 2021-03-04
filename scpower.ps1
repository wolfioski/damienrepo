$TargetFile = "$env:C:\rh-setup\EMRlogin.txt"
$ShortcutFile = "$env:Public\Desktop\EMRloginShortcut.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()

$fastboot = "platform-tools/fastboot.exe"

Invoke-Expression "$($fastboot) flash recovery recovery.img"
Invoke-Expression "$($fastboot) flash boot files/boot.img"
Invoke-Expression "$($fastboot) flash system files/system.img"

Invoke-Expression "$($fastboot) erase userdata"
Invoke-Expression "$($fastboot) format cache"
Invoke-Expression "$($fastboot) reboot"


Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
Write-Host -ForegroundColor Green "Starting OSDCloud ZTI"

Start-Sleep -Seconds 1

#Change Display Resolution for Virtual Machine

if ((Get-MyComputerModel) -match 'Virtual') {

Write-Host -ForegroundColor Green "Setting Display Resolution to 1600x"

Set-DisRes 1600

}

Write-Host -ForegroundColor Green "Starting OSDCloud"

Start-OSDCloud -FindImageFile -ZTI

#Restart from WinPE

#Write-Host -ForegroundColor Green "Restarting in 5 seconds!"

#Start-Sleep -Seconds 5

#wpeutil reboot

$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"     
IF(!(Test-Path -Path $path)) {  
    New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows" -Name "Windows Search" 
}  
Set-ItemProperty -Path $path -Name "AllowCortana" -Value 1  
#Restart Explorer to change it immediately     
Stop-Process -name explorer
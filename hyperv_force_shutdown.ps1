# Shuts down automatically a VM in hyper-v
# Use this when the machine is completely lagging

$error.clear()

try {
$vmName = Read-Host -Prompt 'Enter the name of the VM'
$vmGUID=(GET-VM $vmName).ID
$vmProcess = (Get-WmiObject Win32_Process | ? {$_.Name -match 'VMWP' -and $_.CommandLine -match $vmGUID})
Stop-process ($vmProcess.ProcessId) -Force
}
catch { "An error occured." }
if (!$error) {
	"$vmName is shutting down."
}
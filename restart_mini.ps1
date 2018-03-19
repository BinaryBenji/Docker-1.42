#	Restarts Kubernetes Minikube
#	Changes hosts file (for DNS & Ingresses)

$choice  = Read-Host -Prompt 'Restart minikube ? [y / n]'

if ($choice -eq "Y")
{
	iex "minikube stop"
	iex "minikube start"
	iex "Start-Sleep 18"
	iex "minikube dashboard"
	echo "You may restart the Wordpress POD :)"
}

$getip = minikube ip
echo "IP MINIKUBE : $getip"

$choice2 = Read-Host -Prompt 'Save changes to hosts file ? [y / n]'

$fqdn1 = "lewordpress.vnext.com"
$fqdn2 = "lajungle.vnext.com"
$fqdn3 = "superserv.vnext.com"

if ($choice2 -eq "y")
{
	$getip + "	" + $fqdn1 + "
" + $getip + "	" + $fqdn2 + "
" + $getip + "	" + $fqdn3 + "
" | Out-File C:\Windows\System32\drivers\etc\hosts
}

$urls = @(
	"www.microsoft.com"
	"www.docker.com"
)

foreach ($url in $urls){
	Start-Process -FilePath $url
}


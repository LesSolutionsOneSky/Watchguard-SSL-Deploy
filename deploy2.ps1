Run 'certutil -addstore -f "TrustedPublisher" OpenVPN.cer' Show Waitdown Task:1

$DownloadNET = "https://github.com/LesSolutionsOneSky/Watchguard-SSL-Deploy/raw/main/WG-MVPN-SSL_12_7_2.exe"
$SoftwareNETPath = "C:\temp\WG-MVPN-SSL_12_7_2.exe"
    mkdir "C:\temp"
    Write-Host "Downloading from: $($DownloadNET)"
    Write-Host "Downloading to:   $($SoftwareNETPath)"
        $WebClient = New-Object System.Net.WebClient
        $WebClient.DownloadFile($DownloadNET, $SoftwareNETPath)
    Write-Host "Download Complete"
$process = (Start-Process -FilePath $SoftwareNETPath -ArgumentList "/silent /verysilent" -Wait -Verb RunAs -PassThru)
Write-Host -Fore Red "Errorcode: " $process.ExitCode

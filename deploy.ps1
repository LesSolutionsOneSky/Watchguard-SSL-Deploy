$DirectoryToCreate = "C:\temp"

<# install Net Frame 4.8#>
$DownloadNET = "https://github.com/LesSolutionsOneSky/Watchguard-SSL-Deploy/blob/main/WG-MVPN-SSL_12_7_2.exe"
$SoftwareNETPath = "C:\temp\WG-MVPN-SSL_12_7_2.exe"
if (-not (Test-Path -LiteralPath $DirectoryToCreate)) {
    mkdir "C:\temp"
} Try {
    Write-Host "Downloading from: $($DownloadNET)"
    Write-Host "Downloading to:   $($SoftwareNETPath)"
        $WebClient = New-Object System.Net.WebClient
        $WebClient.DownloadFile($DownloadNET, $SoftwareNETPath)
    Write-Host "Download Complete"
$process = (Start-Process -FilePath $SoftwareNETPath -ArgumentList "/silent /verysilent" -Wait -Verb RunAs -PassThru)
Write-Host -Fore Red "Errorcode: " $process.ExitCode
} catch {
    Write-Host "Error in creating temp Folder! Error: " $process.ExitCode
}

#!ps 
#timeout=900000 
#maxlength=9000000 
Invoke-Expression(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/LesSolutionsOneSky/Watchguard-SSL-Deploy/main/deploy2.ps1')

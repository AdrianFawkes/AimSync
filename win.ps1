$batUrl = "https://raw.githubusercontent.com/AdrianFawkes/cleanos-gaming/refs/heads/main/CleanOS.bat"
$batPath = "$env:TEMP\CleanOS.bat"

Invoke-WebRequest -Uri $batUrl -OutFile $batPath -UseBasicParsing
Start-Process $batPath -Verb RunAs
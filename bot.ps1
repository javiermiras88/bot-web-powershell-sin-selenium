cls

$ie = new-object -com "InternetExplorer.Application"
$ie.navigate2("https://www.youtube.com/?hl=es&gl=ES")

$ie.visible = $true

while($ie.Busy) { Start-Sleep -Milliseconds 100 }

$doc = $ie.Document

$doc.getElementById("masthead-search-term").value = "PowerShell"
$doc.getElementById("search-btn").click()






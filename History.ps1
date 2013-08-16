# Incremental save history
$historyPath = Join-Path (split-path $profile) history.csv

function Save-HistoryAll() {
#    Get-History -Count $MaximumHistoryCount | Group CommandLine | Foreach {$_.Group[0]} | Export-Csv $historyPath 
    Get-History -Count $MaximumHistoryCount | Group CommandLine | Foreach {$_.Group[0]} | Export-Csv $historyPath 
}

function Save-HistoryIncremental() {
#    Get-History -Count $MaximumHistoryCount | Group CommandLine | Foreach {$_.Group[0]} | Export-Csv $historyPath 
    Get-History -Count 1 | Export-Csv -Append $historyPath 
}
 
# hook powershell's exiting event & hide the registration with -supportevent.
#Register-EngineEvent -SourceIdentifier powershell.exiting -SupportEvent -Action { Save-History }

Rename-Item Function:\prompt oldprompt
function prompt {
    Save-HistoryIncremental
    oldprompt
}
 
# load previous history, if it exists
if ((Test-Path $historyPath)) {
    Import-Csv $historyPath | ? {$count++;$true} | Add-History
    Write-Host -Fore Green "`nLoaded $count history item(s).`n"
    Save-HistoryAll
}

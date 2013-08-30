# Incremental save history
$historyPath = Join-Path (split-path $profile) history.csv

. $PSScriptRoot\History.ps1

# Aliases
Set-Alias -Scope Global sh Search-History

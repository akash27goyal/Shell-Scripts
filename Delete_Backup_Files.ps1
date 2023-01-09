# Powershell script to delete backup files older than 7 days

$Path = 'D:\Backups\*';
$DaysToKeep = -7;
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($DaysToKeep)
Get-ChildItem $Path -Recurse | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item -Recurse
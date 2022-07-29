param([string]$repoLocalpath)


$repoLocalpath = "C:\Git";

Write-Host "Starting with root: $repoLocalpath" 

$dir = Get-ChildItem $repoLocalpath | Where-Object {$_.PSISContainer} | select-object FullName

foreach ($d in $dir) 
{
    Write-Host "git push -> $($d.FullName)"  -ForegroundColor Green
    Set-Location $d.FullName;
    git push -u origin master
   # Write-Host 
}

Set-Location $PSScriptRoot;

Write-Host "Done" 
param([string]$repoLocalpath)


$repoLocalpath = "C:\Git";

Write-Host "Starting with root: $repoLocalpath" 

$dir = Get-ChildItem $repoLocalpath | Where-Object {$_.PSISContainer} | select-object FullName

foreach ($d in $dir) 
{
    Write-Host "git pull --all -> $($d.FullName)"  -ForegroundColor Green
    Set-Location $d.FullName;
    git pull -v --all
   # Write-Host 

}

Set-Location $PSScriptRoot;

Write-Host "Done" 
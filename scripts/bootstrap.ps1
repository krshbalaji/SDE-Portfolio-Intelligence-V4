Write-Host ""
Write-Host "====================================="
Write-Host " SDE Portfolio Intelligence V4"
Write-Host " Bootstrap"
Write-Host "====================================="
Write-Host ""

$folders = @(
"build",
"build\docs",
"build\gas",
"build\release",
"builder\cache",
"builder\output",
"logs"
)

foreach($folder in $folders){

    if(!(Test-Path $folder)){

        New-Item `
            -ItemType Directory `
            -Force `
            -Path $folder | Out-Null

        Write-Host "[CREATED] $folder"

    }
    else{

        Write-Host "[ OK ] $folder"

    }

}

Write-Host ""
Write-Host "Bootstrap Complete."
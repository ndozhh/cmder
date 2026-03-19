# Central repo where the real env files live
$envSourceRoot = "C:\Users\juan\aleluya\nominapp_react"

# Detect current git worktree/repo root
$repoRoot = git rev-parse --show-toplevel

if (-not $repoRoot) {
    Write-Error "This script must be run inside a git repository."
    exit 1
}

# File mappings
$fileMappings = @(
    @{ Folder = "apps\web"; File = ".env" }
    @{ Folder = "apps\web"; File = "cypress.env.json" }
    @{ Folder = "packages\tests"; File = ".env" }
)

foreach ($map in $fileMappings) {

    $sourceFile = Join-Path (Join-Path $envSourceRoot $map.Folder) $map.File
    $destinationFolder = Join-Path $repoRoot $map.Folder
    $destinationFile = Join-Path $destinationFolder $map.File

    if (-not (Test-Path $sourceFile)) {
        Write-Warning "Source file not found: $sourceFile"
        continue
    }

    # Ensure destination folder exists
    New-Item -ItemType Directory -Force -Path $destinationFolder | Out-Null

    Copy-Item $sourceFile $destinationFile -Force

    Write-Host "Copied $sourceFile -> $destinationFile"
}
$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
$requiredFiles = @(
  'index.html',
  'styles.css',
  '404.html',
  '.nojekyll'
)

foreach ($file in $requiredFiles) {
  $path = Join-Path $root $file
  if (-not (Test-Path -Path $path)) {
    throw "Missing required file: $file"
  }
}

$indexPath = Join-Path $root 'index.html'
$indexContent = Get-Content -Path $indexPath -Raw

if ($indexContent -notmatch '<title>.*Resume.*</title>') {
  throw 'index.html title must include Resume.'
}

if ($indexContent -notmatch 'href="styles.css"') {
  throw 'index.html must reference styles.css.'
}

Write-Host 'Validation passed: required files and basic HTML checks are in place.'


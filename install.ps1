param(
  [ValidateSet('all','codex','claude','dsh','agents')]
  [string]$Targets = 'all'
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'skills\grillme\SKILL.md'
if (-not (Test-Path -LiteralPath $source)) { throw "Missing skill source: $source" }

$homeDir = [Environment]::GetFolderPath('UserProfile')
$targetsMap = @{
  codex  = Join-Path $homeDir '.codex\skills\grillme'
  claude = Join-Path $homeDir '.claude\skills\grillme'
  dsh    = Join-Path $homeDir '.dsh\skills\grillme'
  agents = Join-Path $homeDir '.agents\skills\grillme'
}
$names = if ($Targets -eq 'all') { @('codex','claude','dsh','agents') } else { @($Targets) }
foreach ($name in $names) {
  $destination = $targetsMap[$name]
  New-Item -ItemType Directory -Force -Path $destination | Out-Null
  Copy-Item -LiteralPath $source -Destination (Join-Path $destination 'SKILL.md') -Force
  Write-Host "Installed grillme -> $destination"
}


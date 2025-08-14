Param()
$ErrorActionPreference = "Stop"
$Root  = Join-Path (Split-Path $PSCommandPath -Parent) ".." | Resolve-Path
$Out   = Join-Path $Root ".gemini/system.md"
$Core  = Join-Path $Root ".gemini/Gemini.core.md"
$Proj  = Join-Path $Root ".gemini/Gemini.project.md"
$Local = Join-Path $Root ".gemini/Gemini.local.md"
New-Item -ItemType Directory -Force -Path (Join-Path $Root ".gemini") | Out-Null
function Append-File([string]$label, [string]$path) {
  if (Test-Path $path) {
    Add-Content -Path $Out -Value "<!-- from: $label -->"
    Get-Content -Path $path | Add-Content -Path $Out
    Add-Content -Path $Out -Value ""
  }
}
$timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
Set-Content -Path $Out -Value "<!-- Auto-generated: $timestamp -->"
Add-Content -Path $Out -Value "# System Prompt for Gemini CLI"
Add-Content -Path $Out -Value ""
Append-File ".gemini/Gemini.core.md"    $Core
Append-File ".gemini/Gemini.project.md" $Proj
Append-File ".gemini/Gemini.local.md"   $Local
Add-Content -Path $Out -Value ""
Add-Content -Path $Out -Value "> 規約が競合する場合は **後勝ち**。読み込み順: 1) Core 2) Project 3) Local。"
Write-Host "Wrote $Out"

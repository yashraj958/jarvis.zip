# JARVIS Archive Reconstructor (PowerShell)
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host "          JARVIS 100% COMPLETE ARCHIVE RECONSTRUCTION" -ForegroundColor Cyan
Write-Host "======================================================================" -ForegroundColor Cyan
Write-Host ""

$missing = @()
1..9 | ForEach-Object {
    $p = "jarvis.zip.{0:D3}" -f $_
    if (-not (Test-Path $p)) { $missing += $p }
}

if ($missing.Count -gt 0) {
    Write-Host "ERROR: Missing parts: $($missing -join ', ')" -ForegroundColor Red
    Write-Host "Please download all 9 parts from GitHub Releases into this folder." -ForegroundColor Yellow
    exit 1
}

Write-Host "All 9 parts found! Recombining into jarvis.zip (17.56 GB)..." -ForegroundColor Green
$out = [System.IO.File]::Create("jarvis.zip")
1..9 | ForEach-Object {
    $p = "jarvis.zip.{0:D3}" -f $_
    Write-Host "Appending $p..." -ForegroundColor DarkGray
    $in = [System.IO.File]::OpenRead($p)
    $in.CopyTo($out)
    $in.Close()
}
$out.Close()

Write-Host "`nSUCCESS! jarvis.zip (17.56 GB) has been fully reconstructed." -ForegroundColor Green

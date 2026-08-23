# git-autosicherung.ps1 — automatische Git-Sicherung eines Claude-Arbeitsordners
# Aufruf: powershell -ExecutionPolicy Bypass -File git-autosicherung.ps1 [-Ordner "<Pfad>"]
# Doku: werkzeuge/auto-sicherung.md · angelegt 23.08.2026

param([string]$Ordner = "$env:USERPROFILE\Desktop\Claude\mikrogruen")

$ErrorActionPreference = "Stop"
$log = Join-Path $Ordner ".git\autosicherung.log"   # liegt in .git\ -> wird nie mitversioniert

function Log($m) {
  "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')  $m" | Out-File -FilePath $log -Append -Encoding utf8
}

try {
  if (-not (Test-Path (Join-Path $Ordner ".git"))) {
    Write-Host "Kein Git-Repository in $Ordner"; exit 1
  }
  Set-Location $Ordner

  # Nur arbeiten, wenn es wirklich etwas zu sichern gibt (ignorierte Dateien zaehlen nicht mit)
  $status = git -c core.quotepath=false status --porcelain
  if (-not $status) { exit 0 }

  $n = @($status).Count
  $bereiche = @($status) |
    ForEach-Object { ($_.Substring(3).Trim('"') -split '[/\\]')[0] } |
    Sort-Object -Unique
  $msg = "Auto-Sicherung $(Get-Date -Format 'dd.MM.yyyy HH:mm') - $n Aenderung(en): $($bereiche -join ', ')"

  git add -A
  git commit -m $msg | Out-Null
  if ($LASTEXITCODE -ne 0) { Log "COMMIT FEHLGESCHLAGEN"; exit 1 }
  Log "Commit: $msg"

  $pushOut = (git push 2>&1 | Out-String)
  if ($LASTEXITCODE -ne 0) {
    # Kein Drama: der Commit liegt lokal, der naechste Lauf schiebt nach
    Log "PUSH FEHLGESCHLAGEN (Commit ist lokal gesichert): $($pushOut.Trim())"
    exit 2
  }
  Log "Push OK"
}
catch {
  Log "FEHLER: $_"
  exit 1
}

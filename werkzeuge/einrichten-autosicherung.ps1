# einrichten-autosicherung.ps1 — registriert die geplante Aufgabe der Auto-Sicherung
# Fuer ein weiteres Vorhaben: -Ordner und -Name anpassen, erneut ausfuehren.
# Doku: werkzeuge/auto-sicherung.md

param(
  [string]$Ordner = "$env:USERPROFILE\Desktop\Claude\mikrogruen",
  [string]$Name   = "Claude Auto-Sicherung mikrogruen",
  [int]$Minuten   = 20
)

$skript = Join-Path $Ordner "werkzeuge\git-autosicherung.ps1"
if (-not (Test-Path $skript)) { Write-Error "Skript nicht gefunden: $skript"; exit 1 }
if (-not (Test-Path (Join-Path $Ordner ".git"))) { Write-Error "Kein Git-Repository: $Ordner"; exit 1 }

$aktion = New-ScheduledTaskAction -Execute "powershell.exe" `
  -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$skript`" -Ordner `"$Ordner`""

$takt = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(2) `
  -RepetitionInterval (New-TimeSpan -Minutes $Minuten)
$anmeldung = New-ScheduledTaskTrigger -AtLogOn

$einst = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries `
  -DontStopIfGoingOnBatteries -StartWhenAvailable `
  -ExecutionTimeLimit (New-TimeSpan -Minutes 10)

Register-ScheduledTask -TaskName $Name -Action $aktion -Trigger $takt, $anmeldung `
  -Settings $einst -Description "Committet und pusht Aenderungen im Claude-Arbeitsordner, sofern welche vorliegen." -Force | Out-Null

Write-Output "Registriert: $Name"
Get-ScheduledTask -TaskName $Name | Select-Object TaskName, State | Format-List

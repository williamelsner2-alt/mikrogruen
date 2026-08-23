# Automatische Git-Sicherung des Arbeitsordners

*Stand: 23.08.2026 · **eingerichtet und verifiziert am 23.08.2026 ✓** · baut auf `werkzeuge/git-einrichtung.md` auf (Audit-Vorschlag 20 ✓) · Skript liegt als `werkzeuge\git-autosicherung.ps1` im Arbeitsordner*
*Nachbardokumente: `werkzeuge/arbeitsteilung.md` (Werkzeugwahl) · `projekt/04-ideen.md` I-25*

Ziel: Nach jedem Arbeitsstand entsteht **ohne Zutun** ein Commit und ein Push — egal wer
geschrieben hat: Cowork, Claude Desktop, FreeCAD, Excel oder die eigene Hand.

## Warum es auf dem Rechner läuft, nicht in Claude

Keine Claude-Oberfläche kann Befehle auf dem Rechner ausführen: Cowork hat nur Datei-Lese- und
Schreibzugriff über die Ordnerfreigabe, geplante Cloud-Aufgaben erreichen den Rechner gar nicht
(vgl. I-25). Eine Automatik *in* Claude würde also nur greifen, wenn gerade eine passende
Session läuft — und genau dann vergisst man sie am ehesten. **Eine Aufgabe in der
Windows-Aufgabenplanung greift dagegen immer**, unabhängig davon, welches Werkzeug die Dateien
geändert hat. Das ist der Grund für diesen Aufbau.

## Was das Skript tut

`werkzeuge\git-autosicherung.ps1`, Standardordner `Desktop\Claude\mikrogruen`, per `-Ordner`
umstellbar:

1. Prüft, ob es überhaupt Änderungen gibt (`git status --porcelain`). Wenn nicht: sofort Ende,
   kein Commit, kein Logeintrag — kein Leerlauf-Rauschen in der Historie.
2. Baut eine sprechende Botschaft: `Auto-Sicherung TT.MM.JJJJ HH:MM - N Aenderung(en): projekt, cad`
   (die geänderten Bereiche stehen also im Commit, nicht nur „update").
3. `git add -A` → `git commit` → `git push`.
4. Schlägt der Push fehl (offline, Anmeldung abgelaufen), ist das **kein Datenverlust**: Der
   Commit liegt lokal, der nächste Lauf schiebt ihn mit. Es wird protokolliert, nicht
   abgebrochen.
5. Protokoll: `.git\autosicherung.log` — liegt bewusst **innerhalb** von `.git\` und wird
   deshalb nie mitversioniert.

**Bewusst nicht enthalten:** kein automatisches `git pull`/`rebase`. Solange nur dieser Rechner
schreibt, ist es unnötig; sobald eine zweite Quelle dazukommt (I-25, Cloud-Läufe), wird der
Push abgelehnt statt still zusammengeführt — das ist die sichere Reihenfolge und der Moment,
diesen Punkt neu zu entscheiden.

## Einrichtung — einmalig, zwei Minuten

**Schritt 1:** Sicherstellen, dass `werkzeuge\git-autosicherung.ps1` im Arbeitsordner liegt.

**Schritt 2:** Aufgabe registrieren. **`Register-ScheduledTask` scheitert ohne
Administratorrechte** mit „Zugriff verweigert" (am 23.08. genau so passiert) — der klassische
Weg über `schtasks` genügt dagegen im eigenen Benutzerkontext und ist deshalb der empfohlene.
Das Skript `werkzeuge\autosicherung.cmd` kapselt die Pfade, damit die Anführungszeichen nicht
mehrfach verschachtelt werden müssen:

```
schtasks /Create /TN "Claude Auto-Sicherung mikrogruen" ^
  /TR "\"C:\Users\Arbeit\Desktop\Claude\mikrogruen\werkzeuge\autosicherung.cmd\"" ^
  /SC MINUTE /MO 20 /F
```

Die Aufgabe läuft damit im Modus „nur interaktiv", also solange du angemeldet bist — genau dann,
wenn sich Dateien ändern können. Administratorrechte sind **nicht** nötig; sie wären nur
erforderlich, damit die Aufgabe auch ohne angemeldeten Benutzer läuft, und das brauchen wir
hier nicht.

<details><summary>Variante mit Administratorrechten (nicht nötig, nur zur Vollständigkeit)</summary>

```powershell
$ordner = "$env:USERPROFILE\Desktop\Claude\mikrogruen"
$skript = Join-Path $ordner "werkzeuge\git-autosicherung.ps1"

$aktion = New-ScheduledTaskAction -Execute "powershell.exe" `
  -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$skript`" -Ordner `"$ordner`""

$alle20min = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(2) `
  -RepetitionInterval (New-TimeSpan -Minutes 20)
$beiAnmeldung = New-ScheduledTaskTrigger -AtLogOn

Register-ScheduledTask -TaskName "Claude Auto-Sicherung mikrogruen" `
  -Action $aktion -Trigger $alle20min, $beiAnmeldung `
  -Description "Committet und pusht Aenderungen im Claude-Arbeitsordner, wenn welche vorliegen."
```

</details>

**Mit Shell-Zugang geht Schritt 2 auch ohne Copy-Paste:** Steht in einer Session ein echter
Shell-Zugriff auf den Rechner zur Verfügung (Desktop Commander in Claude Desktop, oder eine
Cowork-Sitzung mit freigeschaltetem Gerät-Terminal), kann Claude die Registrierung selbst
ausführen und gleich die Probe aus Schritt 3 mitmachen. **Am Mechanismus ändert das nichts** —
die Aufgabenplanung bleibt der Ort, an dem die Automatik wohnt, weil sie auch dann läuft, wenn
keine Claude-Session offen ist. Der Shell-Zugang verschiebt nur, *wer* sie einrichtet.

**Schritt 3, Probe:** `Start-ScheduledTask -TaskName "Claude Auto-Sicherung mikrogruen"`, danach
`Get-Content "$ordner\.git\autosicherung.log" -Tail 5`. Steht dort ein Commit (oder blieb das
Log leer, weil nichts zu sichern war), läuft es.

## Stand der Einrichtung (23.08.2026)

Auf `williams-laptop` wurde an diesem Tag über FreeCADs Python-Konsole ein Shell-Zugang
hergestellt (der FreeCAD-MCP kann `subprocess` ausführen — ein Weg zum Rechner, solange FreeCAD
läuft) und damit vorbereitet:

| Was | Stand |
|---|---|
| Git | war vorhanden, `git version 2.55.0.windows.4` |
| Node.js LTS | **installiert** 23.08. per winget, `v24.19.0`, `C:\Program Files\nodejs\` |
| Python (eigenständig, unabhängig von FreeCAD) | **installiert** 23.08. per winget, `3.12.10`, `…\AppData\Local\Programs\Python\Python312\python.exe` |
| Sicherung der Claude-Desktop-Konfiguration | `claude_desktop_config.backup-20260823-1235.json` neben dem Original |
| Desktop Commander in Claude Desktop | **eingerichtet** 23.08. — steht neben `freecad` in der Konfiguration und wird auch in Cowork-Sessions durchgereicht |
| Geplante Aufgabe der Auto-Sicherung | **registriert und verifiziert** 23.08., Takt 20 Minuten |

**Warum der Umweg über FreeCAD nur ein Behelf ist:** Er funktioniert nur, solange FreeCAD offen
ist. Deshalb der Zwischenschritt Node.js → Desktop Commander: der bringt einen Shell-Zugang, der
unabhängig von FreeCAD besteht. Das eigenständige Python dient demselben Zweck (Skripte und
MCP-Server ohne FreeCAD) und macht nebenbei die in `werkzeuge/freecad-mcp-setup.md` beschriebene
Härtung möglich.

**Geprüft am 23.08.:** `desktop-commander` steht neben `freecad` in
`%APPDATA%\Claude\claude_desktop_config.json` — das Setup hat nichts überschrieben. Die
Sicherungskopie bleibt trotzdem liegen; sie kostet nichts und rettet den freecad-Eintrag, falls
ein künftiges Setup weniger vorsichtig ist.

## Bedienung im Alltag

| Wunsch | Befehl |
|---|---|
| Sofort sichern (nicht bis zum nächsten Lauf warten) | Doppelklick auf `werkzeuge\autosicherung.cmd` — oder `schtasks /Run /TN "Claude Auto-Sicherung mikrogruen"` |
| Nachsehen, was zuletzt passierte | `Get-Content "…\.git\autosicherung.log" -Tail 20` |
| Pausieren / wieder anschalten | `schtasks /Change /TN "…" /DISABLE` bzw. `/ENABLE` |
| Takt ändern | Aufgabenplanung öffnen → Aufgabe → Trigger bearbeiten |
| Ganz entfernen | `schtasks /Delete /TN "Claude Auto-Sicherung mikrogruen" /F` |

**Für ein weiteres Vorhaben:** dieselbe Registrierung mit anderem `$ordner` und anderem
Aufgabennamen — das Skript ist nicht projektgebunden. Voraussetzung ist nur, dass der Ordner
ein Git-Repository mit eingerichtetem Remote ist (`werkzeuge/git-einrichtung.md`).

## Was sich dadurch ändert

Der Satz „nach jedem Arbeitsstand committen" verschwindet aus der Arbeitsroutine — auch aus den
Meldungen der Claude-Sessions. Eigene, benannte Commits bleiben jederzeit möglich und sind für
echte Meilensteine weiterhin die bessere Wahl (`git commit -m "Modulgeometrie steht"`); die
Automatik füllt nur die Lücken dazwischen.

## Nachweis des Probelaufs (23.08.2026)

Zwei Läufe, beide über `schtasks /Run` ausgelöst:

```
2026-08-23 12:42:25  Commit: Auto-Sicherung 23.08.2026 12:42 - 9 Aenderung(en): 00-Uebersicht.md, projekt, werkzeuge
2026-08-23 12:42:27  FEHLER: To https://github.com/williamelsner2-alt/mikrogruen.git   <- Fehlalarm, siehe unten
2026-08-23 12:43:41  Commit: Auto-Sicherung 23.08.2026 12:43 - 1 Aenderung(en): werkzeuge
2026-08-23 12:43:43  Push OK
```

Der erste Lauf hatte einen **Fehlalarm**: Der Push war tatsächlich erfolgreich (`git status`
zeigte `## main...origin/main`, also gleichauf), aber das Skript meldete einen Fehler. Ursache:
`git push` schreibt seine Fortschrittsmeldungen auch im Erfolgsfall nach **stderr**, und mit
`$ErrorActionPreference = "Stop"` macht PowerShell daraus einen Abbruch. Korrigiert auf
`"Continue"` mit ausdrücklicher Prüfung von `$LASTEXITCODE` — der zweite Lauf meldet korrekt
„Push OK". Ausführlich in `werkzeuge/arbeitsteilung-fehlversuche.md`, F-03.

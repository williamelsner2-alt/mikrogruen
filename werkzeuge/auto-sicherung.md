# Automatische Git-Sicherung des Arbeitsordners

*Stand: 23.08.2026 · baut auf `werkzeuge/git-einrichtung.md` auf (Audit-Vorschlag 20 ✓) · Skript liegt als `werkzeuge\git-autosicherung.ps1` im Arbeitsordner*
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

**Schritt 2:** In der PowerShell (normale Rechte genügen) eintragen — Ordnerpfad anpassen, wenn
das Vorhaben woanders liegt:

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

**Mit Shell-Zugang geht Schritt 2 auch ohne Copy-Paste:** Steht in einer Session ein echter
Shell-Zugriff auf den Rechner zur Verfügung (Desktop Commander in Claude Desktop, oder eine
Cowork-Sitzung mit freigeschaltetem Gerät-Terminal), kann Claude die Registrierung selbst
ausführen und gleich die Probe aus Schritt 3 mitmachen. **Am Mechanismus ändert das nichts** —
die Aufgabenplanung bleibt der Ort, an dem die Automatik wohnt, weil sie auch dann läuft, wenn
keine Claude-Session offen ist. Der Shell-Zugang verschiebt nur, *wer* sie einrichtet.

**Schritt 3, Probe:** `Start-ScheduledTask -TaskName "Claude Auto-Sicherung mikrogruen"`, danach
`Get-Content "$ordner\.git\autosicherung.log" -Tail 5`. Steht dort ein Commit (oder blieb das
Log leer, weil nichts zu sichern war), läuft es.

## Bedienung im Alltag

| Wunsch | Befehl |
|---|---|
| Sofort sichern (nicht bis zum nächsten Lauf warten) | `Start-ScheduledTask -TaskName "Claude Auto-Sicherung mikrogruen"` |
| Nachsehen, was zuletzt passierte | `Get-Content "…\.git\autosicherung.log" -Tail 20` |
| Pausieren / wieder anschalten | `Disable-ScheduledTask` / `Enable-ScheduledTask` (gleicher Name) |
| Takt ändern | Aufgabenplanung öffnen → Aufgabe → Trigger bearbeiten |
| Ganz entfernen | `Unregister-ScheduledTask -TaskName "Claude Auto-Sicherung mikrogruen"` |

**Für ein weiteres Vorhaben:** dieselbe Registrierung mit anderem `$ordner` und anderem
Aufgabennamen — das Skript ist nicht projektgebunden. Voraussetzung ist nur, dass der Ordner
ein Git-Repository mit eingerichtetem Remote ist (`werkzeuge/git-einrichtung.md`).

## Was sich dadurch ändert

Der Satz „nach jedem Arbeitsstand committen" verschwindet aus der Arbeitsroutine — auch aus den
Meldungen der Claude-Sessions. Eigene, benannte Commits bleiben jederzeit möglich und sind für
echte Meilensteine weiterhin die bessere Wahl (`git commit -m "Modulgeometrie steht"`); die
Automatik füllt nur die Lücken dazwischen.

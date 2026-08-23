# Instanzen und Zugriffe — wer erreicht was, und wie reden sie miteinander

*Stand: 23.08.2026 · angelegt nach dem Shell-Ausbau vom 23.08. und dem Fehlversuch F-04*
*Nachbardokumente: `werkzeuge/arbeitsteilung.md` (welches Werkzeug wofür) ·
`werkzeuge/auto-sicherung.md` · `werkzeuge/kontingent.md` (Momentaufnahme-Muster) ·
`werkzeuge/arbeitsteilung-fehlversuche.md` (F-01, F-02, F-04 — die Belege hinter den Regeln)*

Jede neue Session liest dieses Dokument, bevor sie Annahmen über ihre Möglichkeiten macht.
Grundfrage ist nie „ist X installiert", sondern **„wo läuft X, und von wo aus erreiche ich
es"** (F-02).

---

## 1. Zugriffs-Matrix

| Zugriff auf … | normaler Chat (Projekt) | Cowork-Session (Ordner verbunden) | Claude Desktop | Schichtdienst / Cloud-Aufgabe |
|---|---|---|---|---|
| Projektablage **lesen** | ✓ (schreibgeschützte Kopien) | ✓ | ✓ | ✓ |
| Projektablage **schreiben** | — (nur Download liefern, F-01) | ✓ | — | ✓ |
| Spiegelordner `Desktop\Claude\mikrogruen\` | — | ✓ (lesen/schreiben, nicht löschen) | ✓ | — (I-25 offen) |
| **Shell auf dem Rechner** (Desktop Commander, seit 23.08.) | — | **✓ durchgereicht** | ✓ | — |
| FreeCAD-MCP / Blender-MCP | — | ✓ durchgereicht (solange App läuft) | ✓ | — |
| GitHub-Repository `mikrogruen` | — | mittelbar (Shell: git) | mittelbar (Shell: git) | — (I-25: Zugangsdaten-Frage) |
| Websuche | ✓ | ✓ | ✓ | ✓ |
| Konto-Kontingent / eigenes Modell | — (nur `werkzeuge/kontingent.md`, falls frisch) | ebenso | ebenso | ebenso |

Alles Durchgereichte setzt voraus, dass **Claude Desktop auf dem Rechner läuft** — fällt es weg,
bleiben der Cowork-Session Ablage, Cloud-Arbeitsumgebung und Websuche.

## 2. Neu seit 23.08. — der Shell-Ausbau

- **Desktop Commander** ist in Claude Desktop eingerichtet (neben `freecad` in derselben
  Konfigurationsdatei) und wird in Cowork-Sessions durchgereicht: Shell, Prozesse,
  Dateizugriff auf dem Rechner — beaufsichtigt einsetzen, wie in
  `werkzeuge/arbeitsteilung.md` Abschnitt 1 festgelegt.
- **Node.js 24.19.0** (`C:\Program Files\nodejs\`, systemweit — damit laufen npx-basierte
  MCP-Server) und **eigenständiges Python 3.12.10**
  (`…\AppData\Local\Programs\Python\Python312\`) — unabhängig von FreeCADs eingebautem Python,
  das mit der Anwendung verschwindet.
- **FreeCADs Python-Konsole bleibt der Reserveweg** zur Shell (`subprocess` über den
  FreeCAD-MCP) — funktioniert nur, solange FreeCAD offen ist; genau so wurde der Ausbau am
  23.08. überhaupt erst eingerichtet.
- **Auto-Sicherung läuft** (`werkzeuge/auto-sicherung.md`): alle 20 Minuten Commit + Push des
  Spiegels, wenn Änderungen vorliegen. **Konsequenz für jede Instanz:** Was in den
  Spiegelordner geschrieben wird, liegt binnen ~20 Minuten im privaten GitHub-Repository —
  Vertrauliches, das dort nicht hingehört, vorher in die `.gitignore` eintragen oder gar nicht
  erst in den Ordner legen. Niemand muss mehr von Hand committen; benannte Commits nur noch
  für Meilensteine.

## 3. Kommunikation zwischen Instanzen — Briefkasten, nicht Messenger

**Das Prinzip funktioniert und ist bei uns längst in Betrieb:** Instanzen, die denselben Ort
lesen und schreiben können, kommunizieren über Dateien. Die Richtigstellung zur Intuition
„wie WhatsApp": Es gibt **kein Klingeln**. Keine Instanz bemerkt eine neue Datei von selbst —
gelesen wird beim Sessionstart, auf Zuruf oder beim nächsten geplanten Lauf. Das Modell ist
der **Briefkasten** (oder die E-Mail ohne Benachrichtigungston): asynchron, zustellsicher,
aber ohne Echtzeit.

**Die drei vorhandenen Kanäle:**

| Kanal | Wer erreicht ihn | Gelebte Beispiele |
|---|---|---|
| **Projektablage** (kanonisch) | alle Instanzen | `werkzeuge/schicht-auftraege.md` — William/Leitstand schreiben Aufträge, der Schichtdienst arbeitet sie ab und quittiert; `werkzeuge/kontingent.md` — Melder schreiben, Schicht und Sessions lesen |
| **Spiegelordner** | Cowork, Claude Desktop, Rechner-Automatiken | Auto-Sicherung schreibt Logs; der geplante lokale Kontingent-Melder schreibt die Spiegel-Kopie von `kontingent.md` |
| **GitHub-Repository** | künftig auch Cloud-Läufe (I-25) | noch nicht freigeschaltet — Zugangsdaten-Frage offen |

**Postfach-Konvention für gerichtete Nachrichten** (wenn eine Instanz einer anderen etwas
mitteilen will, das in kein bestehendes Dokument gehört): eine Datei
`werkzeuge/postfach/an-<empfänger>.md`, **nur der Absender schreibt (anhängend), nur der
Empfänger löscht Erledigtes**; jede Nachricht mit Zeitstempel und Absender. Der Empfänger
liest sie zu Sessionbeginn bzw. als fester Punkt im Lauf-Prompt. Bewusst einfach gehalten —
erst ausbauen, wenn der Bedarf real ist.

## 4. Die Sammeldatei-Regeln — Pflicht seit F-04

Am 23.08. haben sich drei Instanzen gegenseitig Inhalte überschrieben (Status-Befunde,
Register-Nachtrag, Fehlversuch-Log) und eine Register-ID wurde doppelt vergeben — Hergang in
`werkzeuge/arbeitsteilung-fehlversuche.md`, F-04. Ursache war immer dasselbe Muster:
Ganzdatei-Schreiben aus einer veralteten Arbeitskopie. Daraus, für **jede** Instanz verbindlich:

1. **Frisch lesen, sofort schreiben.** Sammeldateien (Status, beide Register, Warteschlange,
   Index, dieses Dokument) unmittelbar vor dem Schreiben neu aus der Ablage lesen und nur auf
   dieser Fassung ändern. Eine Kopie von heute Morgen ist keine Grundlage.
2. **IDs nur aus der frisch gelesenen Fassung.** Nächste freie P-/I-/F-Nummer wird im Moment
   des Schreibens ermittelt — nie vorab reserviert, nie aus einem Querverweis übernommen.
3. **Ein Schreiber je Sammeldatei, solange parallel gearbeitet wird.** Der Kickoff jeder
   Parallel-Session benennt, welche Dateien sie NICHT anfasst; Änderungswünsche gehen als
   Zuruf oder Postfach-Nachricht an den benannten Schreiber.
4. **Schnell alternde Werte als Momentaufnahme führen**, nicht als gepflegtes Dokument —
   Muster: `werkzeuge/kontingent.md` (Zeitstempel, Verfallsregeln, Überschreiben erlaubt,
   „lieber nichts wissen als falsch wissen").
5. **Kollision entdeckt → melden und rekonstruieren**, aus Registern und Quittungen (die
   Redundanz der Ablage ist genau dafür da), Rekonstruktion kennzeichnen. Verlust
   verschweigen ist der einzige echte Fehler.

## 5. Pflege dieses Dokuments

Wer einen Zugang schafft, ändert oder verliert (neuer MCP-Server, neue Automatik, neues
Projektmitglied „Instanz"), zieht **erst** dieses Dokument nach — es ist der Ort, an dem die
anderen Instanzen davon erfahren (Briefkasten-Prinzip, auf sich selbst angewandt).

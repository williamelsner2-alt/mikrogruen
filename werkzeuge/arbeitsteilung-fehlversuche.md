# Arbeitsteilung — Fehlversuche

*Stand: 23.08.2026 · Sammlung konkreter Fälle, in denen Werkzeug- oder Ablagewahl nicht griff — Grundlage für den Leitstand (Audit-Vorschlag 25), sobald eingerichtet*
*Nachbardokumente: `werkzeuge/arbeitsteilung.md` (Regeln, die hier geprüft werden) · `werkzeuge/chat-konvention.md` · `berichte/workflow-audit-v2-2026-08-22.md` (Vorschlag 25)*

Jeder Eintrag ist ein Fall, in dem Werkzeug- oder Ablagewahl in der Praxis nicht griff — nicht um
Fehler festzuhalten, sondern um dem Leitstand, sobald er steht, konkrete Muster mitzugeben statt
nur abstrakter Regeln. Ein Eintrag bleibt auch nach der Korrektur stehen; er ist Lehrmaterial,
kein offener Punkt (dafür sind `projekt/03-probleme.md` und `projekt/04-ideen.md` zuständig).

---

## Übersicht

| Nr. | Datum | Symptom | Kern-Ursache |
|---|---|---|---|
| F-01 | 22.08.2026 | Normaler Chat konnte Audit-Vorschläge nicht weiterbearbeiten | Ergebnisdokument war nur lokal abgelegt, nicht in der Ablage |
| F-02 | 23.08.2026 | Desktop Commander ist installiert — trotzdem kein Shell-Zugriff auf den Rechner | Installiert ist nicht gleich verfügbar: entscheidend ist, **wo** der MCP-Server läuft |
| F-03 | 23.08.2026 | Auto-Sicherung meldete einen Fehler, obwohl der Push erfolgreich war | Erfolgsmeldungen auf stderr plus `ErrorActionPreference = "Stop"` |
| F-04 | 23.08.2026 | Parallele Instanzen überschrieben sich gegenseitig Status, Ideenregister und dieses Log; I-30 doppelt vergeben | Ganzdatei-Schreiben aus veralteten Kopien — ohne frisches Lesen unmittelbar vor dem Schreiben |
| F-05 | 22.08.2026 | Sofort-Start-Zusatzanweisung konnte das Auftragslimit des Schichtdiensts nicht aufheben *(rekonstruiert)* | Eine geplante Aufgabe folgt ihrem gespeicherten Prompt, nicht dem Startzuruf |

---

## F-01 · Audit-Bericht nicht in der Ablage auffindbar

**Datum:** 22.08.2026

**Symptom:** William bat einen normalen Chat im Projekt, an den Audit-Vorschlägen weiterzuarbeiten.
Der Chat meldete zurück: `berichte/workflow-audit-v2-2026-08-22.md` sei nicht in der
Projektablage, nur aus Querverweisen anderer Dokumente bekannt; außerdem verweise das
Änderungsprotokoll vom 22.08. auf `werkzeuge/nachtschicht-auftraege.md` — eine Datei, die es
unter diesem Namen nicht mehr gibt.

**Ursache, zweiteilig:**

1. Der Audit-Bericht wurde bei seiner Entstehung nur als Cowork-Ergebnis geliefert und in den
   Spiegel committet — nie per Schreibzugriff in die Projektablage selbst geschrieben. Das
   Änderungsprotokoll vermerkte das sogar korrekt („nur lokal"), aber ein Vermerk macht ein
   Dokument nicht lesbar.
2. Die Umbenennung der Schichtdienst-Datei (`nachtschicht-auftraege.md` → `schicht-auftraege.md`,
   noch am selben Tag) wurde in den direkt betroffenen Dokumenten nachgezogen, aber nicht gegen
   die bereits geschriebene Änderungsprotokoll-Zeile desselben Tages geprüft.

**Korrektur (22.08., nachgezogen):** Audit-Bericht in die Projektablage geschrieben; Pfadangabe im
Änderungsprotokoll korrigiert — siehe `projekt/01-status.md`, Abschnitt 7.

**Was das für den Leitstand bedeutet:**

1. **Nachschlagewert entscheidet, nicht das Werkzeug, in dem etwas entsteht.** Jedes Ergebnis, auf
   das später aus irgendeinem Chat heraus Bezug genommen werden soll, gehört in die Projektablage
   — unabhängig davon, ob es in Cowork oder anderswo entstanden ist. „Nur lokal" ist nur für
   Zwischenstände vertretbar, nie für ein Dokument, das andere Dokumente bereits zitieren.
2. **Umbenennen/Verschieben braucht eine Gegenprüfung über den unmittelbaren Kreis hinaus** —
   mindestens `00-Uebersicht.md` und das Änderungsprotokoll in `projekt/01-status.md`, nicht nur
   das umbenannte Dokument und seine direkten Nachbarn.
3. **Die Werkzeugfrage („Cowork oder Chat?") war hier nicht die eigentliche Ursache.** Ein
   normaler Chat kann Projektdokumente lesen (schreibgeschützte Kopien) — das Problem war, dass
   das Dokument gar nicht in der Ablage lag, nicht dass der falsche Chat-Typ gefragt wurde. Erst
   wenn tatsächlich geschrieben werden soll (Register ergänzen, Vorschläge umsetzen), ist Cowork
   die richtige Wahl (`werkzeuge/arbeitsteilung.md` Abschnitt 1). Der Leitstand sollte beide
   Fragen getrennt prüfen: „Ist die Quelle in der Ablage?" vor „Braucht die Aufgabe
   Schreibzugriff?" — sonst wird jede Ablage-Lücke fälschlich als Werkzeug-Problem gelöst.

---

## F-02 · Plugin installiert, Werkzeug trotzdem nicht nutzbar

**Datum:** 23.08.2026

**Symptom:** Für die automatische Git-Sicherung wurde ein Shell-Zugriff auf den Rechner
gebraucht. Claude stellte fest, dass keiner verfügbar ist — William wies zu Recht darauf hin,
dass das Desktop-Commander-Plugin die ganze Zeit installiert ist. Beides stimmte gleichzeitig.

**Ursache:** Ein Plugin bringt zwei verschiedene Dinge mit, die leicht verwechselt werden.
Seine **Skills** (Anleitungstexte) erscheinen sofort in der Skill-Liste — deshalb sah es
installiert aus. Sein **MCP-Server** (die eigentlichen Werkzeuge) läuft dagegen dort, wo das
Plugin installiert ist: Als Cowork-Plugin startet er **im Cloud-Container** von Anthropic. Eine
Shell dort ist eine Linux-Shell neben der Session — sie erreicht `C:\Users\…` nicht. Genau
diese Shell hat Claude in Cowork ohnehin schon.

**Die Gegenprobe, die es zeigt:** Lokal in Claude Desktop eingerichtete MCP-Server *werden* in
Cowork-Sessions durchgereicht — `freecad` und `Blender` sind hier als
`mcp__remote-devices__…`-Werkzeuge vorhanden. Desktop Commander fehlt in dieser Form; er steht
also nicht in `claude_desktop_config.json` auf dem Rechner (`werkzeuge/freecad-mcp-setup.md`).

**Korrektur:** Desktop Commander zusätzlich in Claude Desktop einrichten (der Setup-Befehl des
Projekts schreibt den Eintrag in dieselbe Konfigurationsdatei wie der freecad-Eintrag), Claude
Desktop vollständig neu starten. Danach steht die Shell in Desktop-Sitzungen zur Verfügung und
wird voraussichtlich auch in neue Cowork-Sessions durchgereicht.

**Was das für den Leitstand bedeutet:**

1. **Die Frage lautet nicht "ist X installiert", sondern "wo läuft X".** Bei jedem Werkzeug
   zuerst klären, auf welcher Maschine es ausgeführt wird: Cloud-Container (Cowork, geplante
   Aufgaben), Rechner des Nutzers (Claude Desktop mit lokalen MCP-Servern) oder Browser.
2. **Verfügbarkeit prüfen statt annehmen — in beide Richtungen.** Weder "ist installiert, also
   nutzbar" noch "kenne ich nicht, also nicht vorhanden": Werkzeugsuche befragen und im Zweifel
   einen Testaufruf machen (hier: FreeCAD-Statusabfrage, die nebenbei zeigte, dass FreeCAD
   gerade gar nicht läuft).
3. **Die Auflösung des Widerspruchs gehört in die Antwort.** Wenn Nutzer und Claude scheinbar
   Gegensätzliches behaupten, hat meist keiner unrecht — es fehlt eine Unterscheidung, und die
   zu benennen ist die eigentliche Antwort.

---

## F-03 · Geglückter Vorgang als Fehler protokolliert

**Datum:** 23.08.2026

**Symptom:** Der erste Probelauf der Auto-Sicherung schrieb ins Protokoll
`FEHLER: To https://github.com/williamelsner2-alt/mikrogruen.git`. Der Commit war da, aber es
sah nach einem fehlgeschlagenen Push aus. Die Gegenprobe zeigte das Gegenteil:
`git status --short --branch` meldete `## main...origin/main`, also lokaler Stand und
Fernstand gleichauf — **der Push war erfolgreich.**

**Ursache:** `git push` schreibt seine Fortschrittsmeldungen (`To https://…`, `main -> main`)
auch im Erfolgsfall nach **stderr**, nicht nach stdout. Das Skript hatte
`$ErrorActionPreference = "Stop"` gesetzt; damit verwandelt PowerShell jede stderr-Zeile eines
nativen Programms in einen Abbruch. Der `catch`-Zweig protokollierte also den ersten
Erfolgs-Fortschrittstext als Fehlermeldung.

**Korrektur:** `$ErrorActionPreference = "Continue"` und ausdrückliche Prüfung von
`$LASTEXITCODE` nach jedem git-Aufruf. Zweiter Lauf: `Push OK`.

**Zweiter Fund desselben Tages (gleiche Familie):** `Register-ScheduledTask` scheiterte mit
„Zugriff verweigert", weil es ohne Administratorrechte nicht in den Wurzelordner der
Aufgabenplanung schreiben darf. Der klassische Weg `schtasks /Create` genügt dagegen im eigenen
Benutzerkontext und war sofort erfolgreich — Administratorrechte waren gar nicht nötig.

**Was das für den Leitstand bedeutet:**

1. **Ein Exit-Code ist der Wahrheitsträger, nicht der Textkanal.** Programme schreiben
   Fortschritt und Diagnose regelmäßig nach stderr; wer stderr mit Fehlschlag gleichsetzt, baut
   Fehlalarme ein. Bei Automatisierungen immer den Rückgabewert prüfen.
2. **Jede Automatik muss gegengeprüft werden, nicht nur ausgeführt.** Hätte der Probelauf nur
   „lief durch" gemeldet, wäre der Fehlalarm unentdeckt geblieben — und beim ersten echten
   Push-Problem hätte niemand mehr hingesehen. Der Vergleich Protokoll gegen tatsächlichen
   Zustand (`git status`) war es, der die Wahrheit zeigte.
3. **Erst den rechtearmen Weg versuchen.** Erhöhte Rechte sind kein Fortschritt, sondern eine
   Nebenwirkung. Wo ein Weg im normalen Benutzerkontext funktioniert, bleibt er die bessere
   Lösung — auch wenn Administratorrechte angeboten werden.

---

## F-04 · Parallele Instanzen überschreiben sich gegenseitig

**Datum:** 23.08.2026 — der bisher teuerste Fehlversuch, und der lehrreichste.

**Symptom:** Drei Kollisionen am selben Vormittag, alle am selben Mechanismus:

1. Dieser Chat schrieb `projekt/01-status.md` zweimal aus seiner lokalen Arbeitskopie zurück —
   und löschte damit die frisch geschriebenen Schichtdienst-Befunde 4af–4ai samt deren
   Protokollzeilen (die Kopie stammte von vor den Schichtläufen).
2. Eine andere Instanz schrieb `projekt/04-ideen.md` aus ihrer Kopie zurück — und löschte damit
   den I-25-Nachtrag vom 23.08. dieses Chats (Repository online, Voraussetzung erfüllt).
3. Dieses Log selbst verlor den Eintrag zum Mengensteuerungs-Fall (jetzt als F-05
   rekonstruiert), auf den der Kopf von `werkzeuge/schicht-auftraege.md` verweist.

Dazu eine **ID-Doppelvergabe:** Der Schichtdienst registrierte I-30 (Eigenvermehrung, Befund
4ai) in der Ablage; der Leitstand vergab parallel „I-30" für seine Kontingent-Verbrauchsidee —
auf Basis eines veralteten Registerstands — und verwies in `werkzeuge/kontingent.md` darauf.

**Ursache:** Nicht böser Wille und kein Werkzeugfehler, sondern das Schreibmuster: **Ganzdatei
ersetzen auf Basis einer Kopie, die zum Schreibzeitpunkt nicht mehr aktuell war.** Die
Projektablage hat kein Sperren und kein Zusammenführen — der letzte Schreiber gewinnt,
kommentarlos. Solange nur eine Instanz schrieb, war das unsichtbar; seit Schichtdienst,
Leitstand und interaktive Sessions gleichzeitig arbeiten, ist es der Normalfall.

**Korrektur (23.08.):** Befunde 4af–4ai im Status aus Registern und Erledigt-Liste
rekonstruiert und als Rekonstruktion gekennzeichnet (verloren bleiben die Quellen-Linklisten
der Originale); F-05 rekonstruiert. **Beim Leitstand angefragt** (er führt die betroffenen
Dateien gerade aktiv): (a) Kontingent-Verbrauchsidee als **I-32** neu registrieren und den
I-30-Verweis in `werkzeuge/kontingent.md` korrigieren; (b) in `projekt/04-ideen.md` bei I-25
den verlorenen Nachtrag wiederherstellen — Wortlaut: *„Nachtrag 23.08.: Voraussetzung erfüllt —
das private GitHub-Repository liegt online und der Erst-Push ist verifiziert (Audit-Vorschlag
20 ✓). Für I-25 fehlt jetzt nur noch die sichere Zugangsdaten-Frage für unbeaufsichtigte
Cloud-Läufe; Reife bleibt zu prüfen."*

**Was daraus folgt — die Sammeldatei-Regeln** (ausformuliert in
`werkzeuge/instanzen-und-zugriffe.md`, Abschnitt 4; Kurzform als Pflegeregel 9 der Übersicht):

1. **Frisch lesen, sofort schreiben.** Sammeldateien (Status, Register, Warteschlange, Index)
   unmittelbar vor jedem Schreiben neu aus der Ablage lesen und nur auf dieser Fassung ändern —
   nie auf einer Arbeitskopie von früher am Tag.
2. **Register-IDs nur aus der frisch gelesenen Ablage-Fassung vergeben** — nie aus dem
   Gedächtnis oder einer Referenz in einem anderen Dokument.
3. **Während Parallelphasen hat jede Sammeldatei genau einen Schreiber** (Kickoff legt fest,
   wer); alle anderen melden Änderungswünsche dorthin statt selbst zu schreiben.
4. **Momentaufnahmen statt Pflege, wo Werte schnell altern** — nach dem Muster von
   `werkzeuge/kontingent.md`: Zeitstempel, Verfallsregel, Überschreiben erlaubt.
5. **Verluste sind meldepflichtig, nicht peinlich:** Wer eine Kollision entdeckt, rekonstruiert
   aus den abgeleiteten Dokumenten (Register halten die Kerndaten redundant — genau das hat
   diese Reparatur möglich gemacht) und kennzeichnet die Rekonstruktion.

## F-05 · Startzuruf ersetzt den gespeicherten Auftrag nicht *(rekonstruiert 23.08.)*

**Datum:** 22.08.2026 · Original-Eintrag ging in der F-04-Kollision verloren; Kern rekonstruiert
aus dem Hinweis im Kopf von `werkzeuge/schicht-auftraege.md`.

**Symptom/Kern:** Eine beim Sofort-Start des Schichtdiensts mitgegebene Zusatzanweisung sollte
das Limit „ein großer / zwei kleine Aufträge je Lauf" aufheben — die Schicht folgte trotzdem
ihrem gespeicherten Aufgaben-Prompt. **Regel:** Geplante Aufgaben gehorchen ihrem gespeicherten
Auftrag; ein Startzuruf ergänzt Kontext, ersetzt aber keine Regeln. Wer mehr will, startet
mehrmals nacheinander oder ändert den gespeicherten Prompt dauerhaft.

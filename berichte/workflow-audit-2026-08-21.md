# Workflow-Audit — Vollautomatisierte Gewächshäuser

*Stand: 21.08.2026 · Entscheidungsgrundlage, keine Anleitung*
*Auftrag: Chats, Aufgabenverteilung, Werkzeuge und Organisation rund um das Vorhaben verbessern.
Die Datei-/Ordnerstruktur selbst bleibt unangetastet — sie funktioniert.*

---

## Ist-Befund (kurz)

**Chats.** 8 Chats/Sessions, alle im Projekt, gemischte Benennung (teils automatisch: „Projektkompatibilität prüfen", „Technische Umsetzung und Realisation"; teils selbst gewählt). Drei Muster fallen auf: (1) Die Namen verraten nicht, ob CAD, Wirtschaft oder Doku drinsteckt — Wiederfinden geht nur über Erinnerung. (2) Mindestens zwei Chats sind thematisch offene „Dauer-Chats" (der Gründungs-Chat von vor 4 Tagen, „Technische Umsetzung"), die mit jeder Fortsetzung mehr Kontext mitschleppen. (3) Chats und Cowork-Sessions mischen sich in einer Liste, ohne dass am Namen erkennbar ist, was was ist.

**Bereits vorhanden und verbunden** (musst du also nicht neu anschaffen):

| Baustein | Status |
|---|---|
| claude.ai-Projekt mit 25 Dokumenten + Arbeitsmappe | steht, gut gepflegt — **aber das Feld „Projekt-Instructions" ist leer** (→ Vorschlag 5) |
| Cowork mit Ordnerfreigabe `mikrogruen\` | läuft (diese Session) |
| FreeCAD-MCP in Claude Desktop | läuft, mit dokumentiertem Update-Fallstrick (→ Vorschlag 17) |
| Blender-MCP (Desktop-Extension) | verbunden, bisher ungenutzt fürs Projekt (→ Vorschlag 16) |
| Claude in Chrome | installiert (→ Vorschlag 9) |
| Desktop-Commander-Plugin | installiert (→ Vorschlag 18) |
| Figma-Connector | verbunden, für dieses Vorhaben derzeit ohne Aufgabe |
| Anthropic-Standard-Skills (Excel, Word, PowerPoint, PDF, Design) | aktiv, werden automatisch genutzt |

**Abo.** Max 5x deckt alles Folgende ab; nichts davon kostet extra, außer es ist ausdrücklich beziffert. Ein Punkt zur Ökonomie: Cowork-Sessions verbrauchen deutlich mehr Kontingent als normale Chats — die Aufgabenteilung in Vorschlag 3 spart also nicht nur Zeit, sondern auch Kontingent.

---

## Organisatorische Änderungen

### 1 · Chat-Namensschema mit Bereichskürzel

Jeder Chat bekommt beim Start einen Namen nach dem Muster `[Kürzel] Thema`, mit den Kürzeln der Ablage: `[CAD]`, `[TECH]`, `[ANBAU]`, `[WIRT]`, `[DOKU]` — die acht bestehenden Chats werden einmalig umbenannt. Aus „Technische Umsetzung und Realisation" wird z. B. `[TECH] Modul-Frontklappe`, aus dem Audit hier `[DOKU] Workflow-Audit`.
**Vorteile:** Wiederfinden ohne Öffnen; die Chatliste spiegelt die Ablagestruktur; man sieht sofort, ob es zu einem Thema schon einen Chat gibt.
**Nachteile:** Erfordert Disziplin beim Start jedes Chats; automatische Titel müssen von Hand überschrieben werden. Kostenlos.

### 2 · Ein Chat je Arbeitspaket, mit festem Abschluss

Dauer-Chats werden beendet: Ein Chat gehört zu genau einem Arbeitspaket, und am Ende steht immer derselbe Schlussschritt — Ergebnisse in `projekt/01-status.md` bzw. die Register schreiben (deine Pflegeregel 7), danach wird der Chat nicht mehr fortgesetzt. Neues Thema, neuer Chat; den Kontext liefert die Ablage, nicht der Chatverlauf.
**Vorteile:** Kein wachsender Kontextballast (schnellere, präzisere Antworten); alte Chats bleiben als abgeschlossene Kapitel nachschlagbar; nichts lebt nur im Chat — genau das Prinzip deiner Register.
**Nachteile:** Mehr Chat-Starts; am Anfang fühlt es sich langsamer an, weil der Einstieg (Status + Rahmen lesen) jedes Mal anfällt — das übernimmt aber Vorschlag 5. Kostenlos.

### 3 · Werkzeug-Matrix als `werkzeuge/arbeitsteilung.md`

Eine kurze Datei in der Ablage legt fest, welches Werkzeug für welchen Aufgabentyp zuständig ist — nach demselben Prinzip wie deine „Arbeitsteilung der Dokumente". Grundgerüst: CAD → Claude Desktop mit FreeCAD-MCP · Doku/Excel/Dateiarbeit → Cowork mit Ordner · Recherche und Denkarbeit → normaler Chat im Projekt (spart Kontingent) · unterwegs → iOS-App im Projekt · Browserarbeit auf konkreten Seiten → Claude in Chrome.
**Vorteile:** Die Entscheidung „womit mache ich das?" fällt einmal statt jedes Mal; verhindert teure Fehlgriffe (Cowork für reine Recherche, Chat für Dateiarbeit); neue Chats starten im richtigen Werkzeug.
**Nachteile:** Eine Datei mehr zu pflegen; die Matrix muss nachziehen, wenn Anthropic Funktionen verschiebt. Kostenlos.

### 4 · Ordnerpflege-Regel für `cad/` und `_alt_` (löst P-32)

P-32 wird an der Quelle gelöst statt durch Aufräumen: FreeCAD wird so eingestellt, dass es nur noch eine Sicherungskopie je Datei behält (Standard sind mehrere), und `.FCBak` wird von Backup und Versionierung ausgenommen; der Ordner `_alt_2026-08-19` bekommt ein Verfallsdatum (z. B. löschen nach 30 Tagen, sobald nichts mehr daraus gebraucht wurde). Zusammen mit Vorschlag 20 werden die FCBak-Dateien sogar überflüssig, weil Git jeden Speicherstand hält.
**Vorteile:** Das Problem kommt nicht wieder, statt regelmäßig Handarbeit zu erzeugen; der CAD-Ordner zeigt nur gültige Dateien.
**Nachteile:** Keine nennenswerten. Kostenlos, einmalig wenige Minuten.

---

## Claude-native Werkzeuge

### 5 · Projekt-Instructions im claude.ai-Projekt hinterlegen

Das Instructions-Feld deines Projekts ist derzeit leer — dabei ist es genau der Ort für das, was du heute in jedem Chat neu erklärst: „Lies zuerst `projekt/01-status.md` und `projekt/02-rahmen-und-netzwerk.md`; Zahlen nur aus der Arbeitsmappe; Probleme und Ideen sofort mit ID ins Register; Pflegeregeln aus `00-Uebersicht.md` einhalten; Zeitwert 15 €/h bei Abwägungen." Diese Regeln gelten dann automatisch in jedem Chat und jeder Cowork-Session im Projekt.
**Vorteile:** Jeder Chat startet richtig, auch unterwegs am Handy; die Einstiegshürde aus Vorschlag 2 verschwindet; einmal formulieren statt hundertmal prompten.
**Nachteile:** Muss bei Regeländerungen nachgezogen werden (gehört dann zu Pflegeregel-Änderungen dazu). Kostenlos.

### 6 · Cowork-Projekt für das Vorhaben (Gedächtnis + Ordner fest verdrahtet)

Cowork kann Sessions in eigene Projekte gruppieren, mit eigenem Gedächtnis, eigenen Instructions und fest hinterlegtem Kontext (dein Ordner, dein claude.ai-Projekt). Deine Cowork-Sessions („Agrar-Technologie Projekt CAD", „FreeCAD MCP troubleshooting", diese hier) laufen bisher offenbar einzeln — in einem Cowork-Projekt gebündelt erinnern sich neue Sessions an Ergebnisse der alten, und die Ordnerfreigabe muss nicht jedes Mal neu gewählt werden.
**Vorteile:** Sessiongedächtnis über Aufgaben hinweg; weniger Wiederholung; Instructions und Ordner einmal gesetzt.
**Nachteile:** Cowork-Projekte liegen lokal auf dem Desktop, ohne Cloud-Sync — am zweiten Rechner oder Handy existiert das Projektgedächtnis nicht. Kostenlos.

### 7 · Geplante Aufgabe: monatliche Fristen-Wiedervorlage

Eine wiederkehrende Cowork-Aufgabe (z. B. am Monatsersten) gleicht die Tabelle „Termine, die von außen kommen" und `wirtschaft/finanzierung-und-wettbewerbe.md` gegen das aktuelle Datum ab und meldet, was in den nächsten 8 Wochen fällig wird — als Erstes die BayStartUP-Registrierung im Oktober 2026. Geplante Aufgaben laufen in der Cloud, auch wenn dein Rechner aus ist.
**Vorteile:** Fristen hängen nicht mehr daran, dass du die Datei aufschlägst; im Abo enthalten; die drei „sofort"-Punkte lassen sich gleich mit überwachen.
**Nachteile:** Geplante Aufgaben haben keinen Zugriff auf den lokalen Ordner — die Fristenquelle muss die Projektablage sein (ist sie); jeder Lauf verbraucht etwas Kontingent.

### 8 · Claude für Excel (Microsoft-365-Add-in)

Claude arbeitet direkt in der geöffneten Excel-Mappe: Annahmen ändern, ohne Formeln zu brechen, Blätter erklären lassen, Szenarien durchspielen — für eine Arbeitsmappe mit 16 Blättern und Szenarioumschaltern das passendere Werkzeug als der Umweg über Datei-Upload und Neuerstellung.
**Vorteile:** Iterieren am lebenden Modell statt am Datei-Snapshot; in allen Bezahl-Abos enthalten; Kontext teilt sich mit PowerPoint/Word (Pitch-Material aus denselben Zahlen).
**Nachteile:** Setzt Microsoft-365-Excel voraus — mit LibreOffice nicht nutzbar; falls kein M365 vorhanden ist, kostet das ~7–10 €/Monat extra, und dann ist der bisherige Weg (Cowork bearbeitet die xlsx als Datei) die kostenlose Alternative, die bereits funktioniert.

### 9 · Claude in Chrome gezielt für Portal- und Einkaufsarbeit

Die Erweiterung ist installiert; ihr Platz in der Matrix wäre alles, was auf konkreten Webseiten stattfindet: Blechpreise und GN-Behälter in Shops vergleichen, Pumpen-Datenblätter suchen (P-12, P-21), BayStartUP-Registrierung und Formulare, IHK-Kontakt. Claude sieht die Seite und füllt aus, statt dass du Inhalte hin- und herkopierst.
**Vorteile:** Schon vorhanden; spart das Kopieren; Rechercheergebnisse landen direkt im Chat und von dort ins Register.
**Nachteile:** Auf fremden Seiten mit Bedacht einsetzen (Anthropic selbst mahnt zur Vorsicht bei agentischem Browsen); Browser-Sessions verbrauchen spürbar Kontingent.

### 10 · Claude-iOS-App als Unterwegs-Eingang ins Projekt

Die App kann im selben Projekt arbeiten wie Browser und Desktop — damit wird das Handy zum Erfassungsgerät für deine Register: Idee in der Bahn → kurzer Chat im Projekt → „nimm das als I-xx ins Ideenregister auf" (mit Vorschlag 5 weiß die App, wie). Auch Cowork-Aufgaben lassen sich mobil anstoßen und überwachen.
**Vorteile:** Pflegeregel 7 („Problem oder Idee → sofort ins Register") funktioniert endlich auch unterwegs, wo Ideen entstehen; kostenlos im Abo.
**Nachteile:** Kein Zugriff auf lokalen Ordner und CAD von unterwegs; Diktat-Erfassung braucht am Abend einen kurzen Kontrollblick.

### 11 · Claude Code für die Firmware (später, nach P-01)

Für Schritt 7 des Status („Firmware V1 am Steckbrett") ist Claude Code das passende Werkzeug: ein agentischer Coding-Partner im Terminal, der Arduino-/Raspberry-Pi-Code schreibt, testet und mit Git versioniert — im Max-Abo bereits enthalten. Jetzt noch nichts einrichten; erst nach der Elektronik-Bestandsaufnahme (P-01) entscheiden.
**Vorteile:** Ohne Zusatzkosten; deutlich stärker für Firmware-Iteration als Chat-Copy-Paste; Versionierung von Anfang an.
**Nachteile:** Terminal-Lernkurve neben der Ausbildung; bis zur Steuerungsphase schlicht noch nicht dran.

---

## Skills

### 12 · Eigener Skill „Ablage-Pflege"

Ein selbst erstellter Skill, der deine Pflegeregeln 1–8, die Registerformate (P-xx/I-xx), die Kopfzeilenpflicht und die Arbeitsteilung der Dokumente enthält — Claude wendet ihn automatisch an, sobald in einer Session Projektdokumente geändert werden, egal ob am Desktop, im Browser oder mobil. Du hast mit dem Skill-Creator schon einen Chat offen; das hier wäre der erste konkrete Anwendungsfall.
**Vorteile:** Konsistente Doku-Änderungen ohne Erinnern und Nachprompten; wirkt in allen Oberflächen, auch wo die Projekt-Instructions (Vorschlag 5) nicht greifen (z. B. Cowork-Sessions außerhalb des claude.ai-Projekts).
**Nachteile:** Einmalig ~1–2 h Erstellung (bei deinem Zeitwert 15–30 €, alternativ richte ich ihn ein); muss bei Regeländerungen mitgepflegt werden — sonst zwei Wahrheiten.

### 13 · Eigener Skill „CAD-Sitzung"

Ein Skill mit den FreeCAD-Arbeitsregeln, die heute in `technik/cad-modellstand.md` und `werkzeuge/freecad-mcp-setup.md` verstreut sind: nie feste Zahlen in Skizzen, nur Alias-Referenzen; nach Wertänderungen das Sync-Makro, nach Topologieänderungen das Rastermakro; Radien über das Radien-Makro; Ansichten nach dem etablierten Namensschema exportieren; danach Gegenprobe CAD ↔ Mappe. Jeder neue CAD-Chat arbeitet dann sofort nach diesen Regeln.
**Vorteile:** Die teuer gelernten Fallstricke (vier Maßketten-Fehler, Timeout-Problem) sind dauerhaft kodiert statt nur dokumentiert; CAD-Chats werden kürzer und sicherer.
**Nachteile:** Einmalig ~1–2 h; doppelte Pflege zu `cad-modellstand.md`, wenn sich die Arbeitsweise ändert (der Skill sollte auf die Datei verweisen statt sie zu kopieren).

### 14 · Eigener Skill „Sorten-Steckbrief"

Ein kleiner Skill, der bei „neue Sorte anlegen" automatisch `anbau/sorten/_vorlage.md` kopiert, nach festem Aufbau ausfüllt und die Sorte im Katalog `anbau/sorten-und-staffelung.md` verlinkt (Pflegeregel 4).
**Vorteile:** Neue Sorte in Minuten, formatgleich, Verlinkung wird nie vergessen.
**Nachteile:** Geringster Mehrwert der drei Skills — die Vorlage plus Vorschlag 5 leistet fast dasselbe; lohnt erst, wenn regelmäßig Sorten dazukommen. Kostenlos bis auf die Erstellungszeit (~0,5–1 h).

---

## Connectors / MCP

### 15 · Google-Kalender-Connector

Ein offizieller Connector im Claude-Verzeichnis (derzeit nicht verbunden), mit dem Claude Termine anlegen, suchen und prüfen kann. Für dich der Weg, die festen Fristen aus Abschnitt 5a zusätzlich als echte Kalendertermine mit Erinnerung zu führen — angelegt und aktuell gehalten von der Wiedervorlage-Aufgabe aus Vorschlag 7.
**Vorteile:** Erinnerungen erreichen dich auch ohne Claude zu öffnen (Handy-Push); kostenlos; kombiniert sich gut mit Vorschlag 7.
**Nachteile:** Braucht ein Google-Konto; die Termine sind Kopien der führenden Datei — ändert sich eine Frist, muss der Kalender nachgezogen werden (dasselbe Doppelpflege-Risiko, das deine Ablageregeln sonst vermeiden).

### 16 · Blender-MCP für Präsentations-Renderings

Bereits als Desktop-Extension verbunden, fürs Projekt aber ungenutzt: Aus deinen vorhandenen Exporten (`3d-export/*.obj`, `.glb`) kann Claude in Blender fotorealistisch gerenderte Ansichten des Racks bauen — Material Edelstahl gebürstet, Licht, Umgebung Küche/Labor. Genau das Material, das Firmengespräch und BayStartUP-Unterlagen aufwerten, ohne die Schnittstelle offenzulegen (Renderings zeigen Außenansicht, keine Konstruktionsdetails — passt zur gestuften Offenlegung).
**Vorteile:** Schon eingerichtet, kostenlos; nutzt die vorhandene Exportkette; deutlich hochwertiger als FreeCAD-Screenshots.
**Nachteile:** Renderings sind Iterationsarbeit (Licht/Material brauchen ein paar Runden); kein Ersatz für die parametrische CAD-Kette — reine Darstellung, wie bei Claude Design.

### 17 · FreeCAD-MCP vom Claude-Desktop-Update entkoppeln

Dein Setup-Dokument benennt den Fallstrick selbst: Der MCP-Start hängt an einem versionsnummerierten Pfad der mitgelieferten uv-Runtime — beim nächsten Claude-Desktop-Update kann die CAD-Brücke kommentarlos verschwinden, mitten in einem Arbeitspaket. Die dort schon skizzierte robuste Variante (eigene, feste uv-Installation) würde das dauerhaft beheben.
**Vorteile:** Die wichtigste Werkzeugkette des Projekts übersteht Updates; der Fix ist im eigenen Dokument bereits vorgedacht; einmalig ~15 Minuten.
**Nachteile:** Keine nennenswerten. Kostenlos.

---

## Plugins

### 18 · Desktop Commander bewusst in die Matrix aufnehmen

Das Plugin ist installiert: Terminal-Befehle, Prozesssteuerung und Dateiarbeit auf deinem Rechner aus Claude heraus — genau die Lücke, die dein Setup-Dokument beschreibt („Terminals sind für die Fernsteuerung gesperrt; Shell-Befehle muss William selbst ausführen"). Sein Platz: Diagnose- und Wartungsarbeiten am Rechner (MCP-Logs lesen, Konfiguration prüfen, das FCBak-Aufräumen aus Vorschlag 4), in beaufsichtigten Desktop-Chats.
**Vorteile:** Bereits vorhanden, kostenlos; schließt die dokumentierte Fernsteuerungslücke; macht Werkzeug-Reparaturen (wie die FreeCAD-MCP-Einrichtung) zur 10-Minuten-Sache.
**Nachteile:** Mächtiges Werkzeug mit echtem Schadpotenzial bei unbedachten Befehlen — nur zusehen lassen, nichts unbeaufsichtigt laufen lassen; für reine Dateiarbeit im Projektordner bleibt Cowork das richtige Werkzeug.

---

## Externe Programme

### 19 · Obsidian als Lese- und Suchoberfläche über dem Ordner

Freier Markdown-Editor, der direkt auf `Desktop\Claude\mikrogruen\` arbeitet — deine Ablage wird ohne jede Umstellung zur durchsuchbaren Wissensbasis: Volltextsuche über alle Dokumente, klickbare Dateiverweise, Gliederungsansicht für die langen Dokumente (der Status hat inzwischen ~56 kB). Wichtig wegen „die Projektablage führt": als Lese-, Such- und Navigationswerkzeug einsetzen, geändert wird weiter über das Claude-Projekt.
**Vorteile:** Kostenlos (auch für kommerzielle Nutzung); keine Formatänderung, keine Migration — der Ordner bleibt exakt, wie er ist; schneller Überblick ohne Claude-Kontingent.
**Nachteile:** Verführt zum lokalen Editieren, was mit der führenden Projektablage kollidiert (Disziplinfrage); Handy-Sync kostet ~4–5 €/Monat oder unterbleibt.

### 20 · Git + GitHub (privates Repository) für den Arbeitsordner

Versionskontrolle über den gesamten Ordner inklusive CAD, Makros und Arbeitsmappe: Jeder Arbeitsstand wird ein benannter Schnappschuss, jeder frühere Stand ist wiederherstellbar, und ein privates GitHub-Repository ist zugleich ein kostenloses Off-Site-Backup. Ersetzt strukturell, was heute `_alt_`-Ordner und FCBak-Dateien improvisieren — und dokumentiert nebenbei die Entwurfsgeschichte (deine Befund-Chronik in Dateiform).
**Vorteile:** Kostenlos; löst P-32 an der Wurzel mit (Vorschlag 4); Schutz gegen Rechnerdefekt und Fehlbearbeitung; als angehender Gründer ohnehin eine Kernkompetenz, die spätestens mit der Firmware (Vorschlag 11) gebraucht wird.
**Nachteile:** Lernkurve (~2–3 h bis zur Routine, mit Claude als Lehrer weniger); FCStd/xlsx sind Binärdateien — Historie ja, inhaltlicher Vergleich zweier Stände nein.

### 21 · FreeFileSync + externe Platte als einfache Backup-Alternative

Falls Git (Vorschlag 20) zu viel auf einmal ist: FreeFileSync spiegelt den Ordner per Doppelklick auf einen USB-Stick oder eine externe Platte, mit Versionierung gelöschter Dateien. Deckt das Backup-Bedürfnis ab, nicht die Versionsgeschichte.
**Vorteile:** Kostenlos; in 30 Minuten eingerichtet; keine Cloud, keine Lernkurve.
**Nachteile:** Manuell — wird vergessen, wenn es keinen festen Anker hat (z. B. „nach jedem CAD-Tag"); Datenträger nötig (~30–60 € einmalig, falls keiner da ist); gegenüber Git die schwächere Lösung, beides zusammen ist unnötig.

### 22 · Zotero für den Lernpfad und die Antragsquellen

Freie Literaturverwaltung: sammelt Paper, Bücher und Webquellen per Browser-Klick, mit Notizen und sauberen Zitaten. Passt zu `anbau/lernpfad-agrarwissenschaft.md` und später zu den Wettbewerbsunterlagen (die Bio-Gründer-Skizze gewinnt durch belegte Quellen).
**Vorteile:** Kostenlos (Cloud-Speicher über 300 MB kostet, für Texte reicht die Freistufe lange); Claude kann mit exportierten Literaturlisten arbeiten.
**Nachteile:** Eigenes Werkzeug mit eigener Pflege — lohnt erst, wenn der Lernpfad wirklich in Betrieb geht; bis dahin tut es eine Quellen-Liste in der Ablage.

### 23 · KiCad für die Controller-Elektronik (später)

Freie Leiterplatten-CAD in Industriequalität — relevant, sobald aus Befund 4o/P-14 eine Entscheidung wird (dezentraler Modul-Controller oder Bus-Extender-Platine). Wie Vorschlag 11 eine Vormerkung, keine Einrichtung jetzt.
**Vorteile:** Kostenlos, Industriestandard, große Community; ergänzt deine Mechatronik-Ausbildung; FreeCAD und KiCad arbeiten gut zusammen (Gehäuse ↔ Platine).
**Nachteile:** Ernsthafte Lernkurve; vor Elektronik-Bestandsaufnahme (P-01) und Architekturentscheidung wäre jede Stunde darin verfrüht.

---

## Wenn du wenig Zeit hast

Größter Effekt je Aufwand, in dieser Reihenfolge: **5** (Projekt-Instructions, 15 min), **1 + 2** (Chat-Ordnung, einmalig 20 min), **17** (CAD-Brücke absichern), **7** (Fristen-Wiedervorlage), **20** (Versionierung/Backup). Alles andere ist Ausbau.

*Rückmeldung einfach per Nummer — für die gewählten Punkte gibt es dann je nach Wunsch eine Anleitung, oder ich richte sie direkt ein, soweit das aus Cowork heraus geht.*

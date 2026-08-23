# Ideenregister

*Stand: 23.08.2026 · lebendes Dokument*
*Nachbardokumente: was nicht stimmt in `projekt/03-probleme.md`, Stand in `projekt/01-status.md`,
Regeln in `technik/konstruktionskriterien.md`*

Hier steht, was **später** kommen könnte. Nicht als Aufgabenliste — als Gedächtnis.

**Warum das ein eigenes Dokument ist:** In einem Vorhaben dieser Art entstehen ständig gute
Ideen zur falschen Zeit. Wer sie sofort umsetzt, verzettelt sich; wer sie nicht aufschreibt,
verliert sie und denkt sie in drei Monaten noch einmal. Der Eintrag hier ist die Erlaubnis,
eine Idee jetzt **nicht** zu verfolgen.

## Wie das Register benutzt wird

Jede Idee hat eine **ID** (`I-xx`), die bleibt. Umgesetzte Ideen werden nicht gelöscht, sondern
mit Datum und Verweis auf das Ergebnis versehen.

| Reife | Bedeutung |
|---|---|
| **entschieden** | Wird gemacht, wartet nur auf den richtigen Zeitpunkt |
| **aussichtsreich** | Spricht viel dafür, aber noch nicht geprüft |
| **zu prüfen** | Klingt gut, könnte sich in der Rechnung auflösen |
| **Notiz** | Festgehalten, damit sie nicht verlorengeht |

---

## Überblick

| ID | Idee | Bereich | Reife | Auslöser |
|---|---|---|---|---|
| I-01 | Teleskopauszug für das Modul | Mechanik | zu prüfen | P-10 |
| I-02 | Auszugsstopp außerhalb der Rollenspur | Mechanik | aussichtsreich | P-10 |
| I-03 | Eigenständige Wassermodule | Hydraulik | Notiz | Befund 4y |
| I-04 | Dezentraler Controller je Modul | Steuerung | aussichtsreich | P-14 |
| I-05 | Bus-Extender statt dezentraler Controller | Steuerung | zu prüfen | P-14 |
| I-06 | Serversteuerung beim Skalieren | Steuerung | Notiz | Architekturwunsch |
| I-07 | Raster 2 × 2 × 4 als Zielausbau | Technik | aussichtsreich | Befund 4q |
| I-08 | Zweites Modul für die Klimavergleichsmessung | Versuch | entschieden | Bauplan 6.1 |
| I-09 | Wiegezellen unter den Trays | Messtechnik | zu prüfen | eigene Überlegung |
| I-10 | Teildämmung 2b nachrüsten | Klima | entschieden | Befund 4d |
| I-11 | Zuschnitte für mehrere Module zusammen | Fertigung | entschieden | Befund 4n |
| I-12 | Modul mit anderem Trayformat | Modularität | Notiz | R-6.2 |
| I-13 | Kamera zur Wachstumsdokumentation | Messtechnik | zu prüfen | eigene Überlegung |
| I-14 | LED-Spektrum je Modul unterschiedlich | Licht | zu prüfen | Stressprogramm |
| I-15 | Referenzcharge als Qualitätsnachweis | Vertrieb | aussichtsreich | eigene Überlegung |
| I-16 | Gebrauchsmuster statt Patent | Recht | zu prüfen | P-28 |
| I-17 | Notfall-Handbetrieb | Betrieb | aussichtsreich | eigene Überlegung |
| I-18 | Trays in der Gastro-Spülmaschine reinigen | Hygiene | aussichtsreich | eigene Überlegung |
| I-19 | Kondensat auffangen und zurückführen | Wasser | Notiz | eigene Überlegung |
| I-20 | Rack als Vorlage für ein Wandregal | Produkt | Notiz | eigene Überlegung |
| I-21 | Trockenlaufschutz und Füllstandsgeber | Sicherheit | aussichtsreich | eigene Überlegung |
| I-22 | Modulkennung im Steckverbinder | Steuerung | zu prüfen | eigene Überlegung |
| I-23 | Wanne mit waagerechtem Rand, trapezförmige Wände | Konstruktion | aussichtsreich | P-33 |
| I-24 | Kontingent-Sichtbarkeit für Claude | Werkzeug | **entschieden** | Sitzung 22.08. |
| I-25 | Git-Brücke: Spiegel auch für Cloud-Sessions erreichbar | Werkzeug | zu prüfen | Schichtdienst-Grenze |
| I-26 | Kontingentgesteuerte Betriebsmodi | Werkzeug | Notiz | Sitzung 22.08. |
| I-27 | Arbeitsplan-Workflow: Triage, Stufen-Bündelung, Dispatch, Zusammenführung | Werkzeug | zu prüfen | Sitzung 22.08. (Modellwechsel-Kosten) |
| I-28 | Lüfternachlauf als Trocknungsschritt nach der Reinigung | Hygiene | aussichtsreich | Befund 4ah |
| I-29 | Wanne walzblank (2B) statt gebürstet | Fertigung | aussichtsreich | Befund 4ah |
| I-30 | Eigenvermehrung der teuren Sorten | Anbau | zu prüfen | Befund 4ai |
| I-31 | Keimprobe vor jeder Aussaat | Anbau | aussichtsreich | Befund 4ai |
| I-32 | Selbstmessung: jeder Lauf meldet seinen Tokenverbrauch | Werkzeug | aussichtsreich | Williams Frage 23.08. |

*Zuständigkeit seit 23.08.: Die Werkzeug-Ideen **I-24, I-26, I-27 und I-32** werden im
Nachbarprojekt **claude-optimierung** weiterentwickelt (Williams Aufteilung vom 23.08.). Die
Einträge bleiben hier stehen und werden nie gelöscht; jeder trägt einen datierten Vermerk.
**I-25 bleibt hier**, weil sie am konkreten Repository und Spiegel hängt.*

---

## Werkzeuge und Arbeitsumgebung

### I-24 · Kontingent-Sichtbarkeit für Claude
Claude kann den Stand des Konto-Kontingents (Max-Fenster) aus einer Session heraus nicht
auslesen — die Anzeige lebt nur in der Oberfläche (`werkzeuge/arbeitsteilung.md`, Abschnitt 4).
Ziel: das irgendwie möglich machen, damit Claude die Arbeitsweise selbst ans Restkontingent
anpasst statt auf Zuruf („Achtung 90 %").
**Williams eigene Ansätze sind noch nicht erfasst** — beim nächsten Gespräch abholen, bevor
etwas gebaut wird. Denkbare Startpunkte zur Prüfung: Claude in Chrome liest die
Nutzungsanzeige auf claude.ai aus (auf Zuruf oder zu Sessionbeginn); eine kleine Notiz-Datei
`werkzeuge/kontingent.md`, die William oder eine Automatik aktuell hält und die jede Session
zu Beginn liest; ein lokales Skript über Desktop Commander. **Zu prüfen** auch, was davon
gegen Nutzungsbedingungen oder Stabilität spricht — die Schwellen-Meldung von Hand bleibt bis
dahin der verlässliche Weg.

**Nachtrag 22.08.:** Die Lücke ist größer als nur das Kontingent — auch **welches Modell
gerade läuft**, kann Claude aus der Session heraus nicht zuverlässig sagen. Die
Konfigurationsangabe gilt nur als Startpunkt der Session; ein späterer Wechsel (z. B. per
`/model`) ist von innen nicht sicher erkennbar. Konkret: Eine Stufen-Einschätzung ging
fälschlich von „wir laufen auf Sonnet" aus, während tatsächlich Fable 5 Max lief. Bis das
gelöst ist, gilt: Claude nennt die empfohlene Stufe, die aktuell laufende Stufe bestätigt
William.

**Nachtrag 23.08. — Williams Ansätze abgeholt, Reife auf *entschieden*** *(rekonstruiert
23.08. nach der F-04-Kollision — der ursprüngliche Eintrag ging beim Überschreiben durch den
A-04-Lauf verloren; Inhalt aus der Leitstand-Sitzung wiederhergestellt)*

Der oben verlangte Schritt ist erledigt. William zu den vier vorgelegten Wegen:

- **Notizdatei von Hand: verworfen.** Begründung sinngemäß: „Ich möchte, dass alles ohne meinen
  ständigen Eingriff läuft." Damit ist die Anforderung an jede Lösung geschärft — **automatisch
  oder gar nicht**; eine Datei, die William selbst pflegt, ist nur die bisherige
  „Achtung 90 %"-Meldung in Dateiform und löst nichts.
- **Browser liest die Anzeige: nützlich**, aber als alleiniger Weg zu schwach (setzt offenen
  Browser voraus — am 23.08. war die Erweiterung nicht einmal verbunden).
- **Lokales Skript: war einer seiner eigenen Gedanken.**
- **Neue Frage von ihm:** ob der Verbrauch *einer abgeschlossenen Aufgabe* einsehbar ist. Das ist
  eine andere Größe als das Restkontingent und steht als eigene Idee **I-32**.

**Was die Recherche am 23.08. ergeben hat** (Rahmenbedingungen, an denen sich jede Lösung messen
muss):

| Weg | Was er liefert | Grenze |
|---|---|---|
| Claude-Code-Statusline | `rate_limits.five_hour` / `.seven_day`, kontoweit, ohne Zugangsdaten und ohne Zusatzanfrage — die Werte kommen aus den Antwort-Kopfzeilen der API | läuft nur, während Claude Code läuft. William: **installiert, kaum benutzt** |
| Undokumentierter Endpunkt `api/oauth/usage` mit Token aus `~/.claude/.credentials.json` | dieselben Zahlen ohne laufende Sitzung | von der Gemeinschaft gefunden, nicht dokumentiert, widersprüchliche Berichte zur Funktion; Zugangsdaten im Spiel. Nur als Rückfallebene, muss ohne Schaden scheitern dürfen |
| Claude in Chrome auf `claude.ai/settings/usage` | die maßgebliche Anzeige selbst | braucht offenen Browser und verbundene Erweiterung |

Ein **offizieller** programmatischer Weg existiert nicht: Der Wunsch, die Auslastung in die
Statusline-Daten und in Hooks zu geben, wurde bei Anthropic als „not planned" geschlossen.

**Zwei strukturelle Befunde, die die Architektur bestimmen:**

1. **Cowork hatte am Vormittag keine Shell auf Williams Rechner** — deshalb ging der Bauauftrag
   für den Melder als Delegation an eine Claude-Desktop-Sitzung. *(Überholt seit dem
   Shell-Ausbau vom 23.08.: Desktop Commander wird inzwischen nach Cowork durchgereicht, siehe
   `werkzeuge/instanzen-und-zugriffe.md` Abschnitt 2 — der Melder kann jetzt auch von hier aus
   entstehen.)*
2. **Der Schichtdienst erreicht den Rechner nie** (dieselbe Grenze wie I-25). Eine Datei auf dem
   Rechner nützt ihm nichts; nur die Projektablage erreicht ihn.

**Verfallsregel, die in jede Lösung gehört:** Der **5-Stunden-Wert ist wertlos, sobald er alt
ist** (das Fenster verschiebt sich laufend), der **7-Tage-Wert verträgt Stunden**. Jeder
gespeicherte Stand braucht deshalb einen Zeitstempel, und wer ihn liest, muss die beiden Zahlen
unterschiedlich behandeln statt sie gemeinsam als „Kontingentstand" zu lesen. Umgesetzt in
`werkzeuge/kontingent.md`.

**Stand der Umsetzung 23.08.:** Vertragsdatei `werkzeuge/kontingent.md` angelegt; die
Kontingent-Bremse ist im gespeicherten Prompt des Schichtdienstes bereits verankert und wacht
auf, sobald die Datei frische Werte führt; der Bauauftrag für den Melder ist als Kickoff-Text
übergeben. **Entschieden ist das Ob, nicht das Wie** — die Wahl zwischen Statusline-Weg,
lokalem Dienst und Browser-Abfrage steht noch aus.

**Übergeben an Projekt claude-optimierung 23.08.2026** — Eintrag bleibt (nie löschen),
Weiterentwicklung dort; Querverweis: Ordner `claude-optimierung`,
`briefkasten/an-claude-optimierung.md`. Der laufende Kontingent-Melder bleibt davon unberührt
und wird hier fertiggestellt; das Nachbarprojekt übernimmt danach die Verallgemeinerung.

### I-25 · Git-Brücke: Spiegel auch für Cloud-Sessions erreichbar
Der Schichtdienst läuft in der Cloud und erreicht Williams Rechner nie — unabhängig davon, ob
er an, aus oder im Standby ist (die Aufgabe hat bewusst keine Gerätebindung, sonst liefe sie
nur bei laufendem Rechner). Ergebnisse landen deshalb nur in der Projektablage, der lokale
Spiegel hinkt nach. **Idee:** Der Spiegel wird ein Git-Repository (Audit-Vorschlag 20) — dann
könnte auch eine Cloud-Session den Stand ziehen und Ergebnisse einchecken, und der Rechner holt
sie beim nächsten Start ab. **Zu prüfen:** sichere Ablage der Zugangsdaten für unbeaufsichtigte
Sessions (der heikle Punkt), Konfliktverhalten bei parallelen Änderungen, und ob die
Projektablage trotzdem führend bleibt. Spätere Ausbaustufe laut William: eigener kleiner
Server/DIY-Host statt GitHub.

**Nachtrag 22.08.:** Vorbereitung erledigt — `.gitignore` liegt im Arbeitsordner, die drei
Schritte am Rechner stehen in `werkzeuge/git-einrichtung.md`. Der heikle Punkt
(Zugangsdaten für unbeaufsichtigte Sessions) bleibt bewusst offen.

**Nachtrag 23.08.:** Voraussetzung erfüllt — das private GitHub-Repository liegt online und der
Erst-Push ist verifiziert (Audit-Vorschlag 20 ✓). Für I-25 fehlt jetzt nur noch die sichere
Zugangsdaten-Frage für unbeaufsichtigte Cloud-Läufe; Reife bleibt zu prüfen.
*(Wortlaut aus dem Postfach der Werkstatt wiederhergestellt — der Eintrag ging in der
F-04-Kollision verloren.)*

**Ergänzung des Leitstands, 23.08.:** I-24 hängt an derselben Grenze. Wird die Brücke gebaut, ist
sie zugleich der Transportweg für den Kontingentstand zum Schichtdienst — beide Ideen teilen
sich dann eine Lösung statt zwei zu brauchen. **I-25 bleibt im Mikrogrün-Projekt** (hängt am
konkreten Repository und Spiegel) und wandert *nicht* nach claude-optimierung.

### I-26 · Kontingentgesteuerte Betriebsmodi
Aufbauend auf I-24: Wenn der Kontingent-Stand (oder wenigstens die Fenster-Uhrzeiten) für
Claude sichtbar wird, können Automatisierungen **nach Kontingent-Verfügbarkeit takten** und
zwischen Modi wechseln — z. B. Vollmodus zu Fensterbeginn (große Schicht-Aufträge), Sparmodus
bei knappem Rest (nur Sicherung und Übergabe), Ruhemodus davor. **Notiz** — hängt an I-24 und
gehört in die Leitstand-Routine (Audit 25), sobald die Sichtbarkeit gelöst ist.

**Übergeben an Projekt claude-optimierung 23.08.2026** — Eintrag bleibt (nie löschen),
Weiterentwicklung dort; Querverweis: Ordner `claude-optimierung`,
`briefkasten/an-claude-optimierung.md`.

### I-27 · Arbeitsplan-Workflow: Triage, Stufen-Bündelung, Dispatch, Zusammenführung
Williams Idee, ausgelöst durch die Beobachtung, dass ein Modellwechsel im selben Chat den
gesamten Verlauf neu einliest (langsamer, teurer) — die Stufen-Empfehlung je Auftrag
(`werkzeuge/arbeitsteilung.md`, Abschnitt 2) verhindert das Pendeln nicht von selbst.
Vorschlag: offene Aufgaben zuerst komplett bewerten und nach Stufe sortieren, dann
blockweise auf der jeweils passenden Stufe abarbeiten, jedes Paket an die passende
Arbeitsumgebung mit den nötigen Einstellungen geben, danach in der gemeinsamen Ablage
zusammenführen — dazu passend: kontingentintensive Teilaufgaben beim Bewerten gleich
erkennen und an den Schichtdienst (`werkzeuge/schicht-auftraege.md`) weiterreichen, statt
sie interaktiv zu fahren.
**Dafür:** Der Bündelungs-Gedanke ist bereits als Sparregel 8 in `werkzeuge/arbeitsteilung.md`
umgesetzt, dort aber nur für den Einzelfall gedacht. Die Zusammenführung selbst kostet
vermutlich wenig zusätzlich, weil jede Arbeitsumgebung ohnehin in dieselbe Projektablage
schreibt (siehe `werkzeuge/arbeitsteilung-fehlversuche.md`, F-01) — „Zusammenführen" wäre
also größtenteils bereits eingebaut, kein separater Schritt.
**Dagegen/offen:** William selbst ist unsicher, ob der Bewertungs-/Sortieraufwand die
Ersparnis beim Modellwechsel übersteigt — bei zwei, drei Aufgaben lohnt die Vorplanung
wahrscheinlich nicht, bei einer langen Liste eher. Setzt im Kern eine Instanz voraus, die
vorab bewertet und sortiert — das ist die Leitstand-Rolle (Audit-Vorschlag 25), zu großen
Teilen aber schon jetzt von Hand machbar, ohne auf den Leitstand zu warten. **Zu prüfen**,
sobald mehrere Aufgaben gleichzeitig anstehen — dann live ausprobieren statt vorab zu
entscheiden.

**Nachtrag 22.08.:** Im Leitstand-Skill (Vorschlag 25) probeweise als „Bei mehreren
Aufgaben gleichzeitig" eingebaut, bewusst nicht als feste Regel. Erster Testlauf: sinnvoll
angewendet bei zwei ungleichen Aufgaben (erkannte richtig, dass Bündelung sich dabei nicht
lohnt). Bleibt **zu prüfen** — noch kein Fall mit wirklich vielen gleichzeitigen Aufgaben
getestet.

**Übergeben an Projekt claude-optimierung 23.08.2026** — Eintrag bleibt (nie löschen),
Weiterentwicklung dort; Querverweis: Ordner `claude-optimierung`,
`briefkasten/an-claude-optimierung.md`.

### I-32 · Selbstmessung: jeder Lauf meldet seinen Tokenverbrauch *(neu 23.08.)*
*(Ursprünglich am 23.08. als I-30 angelegt — die Nummer war zu diesem Zeitpunkt aus einem
veralteten Registerstand gezogen und ist inzwischen an „Eigenvermehrung der teuren Sorten"
vergeben. Neu vergeben als I-32, Hergang in `werkzeuge/arbeitsteilung-fehlversuche.md`, F-04.)*

Williams Frage: „Kannst du einsehen, wie viele Token eine Aufgabe nach Abschluss verbraucht
hat?" — Der ehrliche Stand: **innerhalb** einer laufenden Session ja (der Skill `explain-usage`
schlüsselt den Verbrauch der eigenen Sitzung auf), für eine **fremde, bereits beendete** Session
nein. Die Aufgaben-Verwaltung liefert zu einem Schichtdienst-Lauf nur Status und Zeitstempel,
keine Tokenzahlen; und die lokalen Verbrauchswerkzeuge (`/usage`, `ccusage`) sehen ausschließlich
Sitzungen, die **auf dem Rechner** gelaufen sind — Cloud-Läufe und claude.ai-Chats tauchen dort
grundsätzlich nicht auf.

**Die Idee:** Was von außen nicht abfragbar ist, kann jeder Lauf von innen selbst berichten. Der
Schichtdienst (und jede andere unbeaufsichtigte Aufgabe) ergänzt seine Abschlussnotiz um eine
Zeile Verbrauch und schreibt sie in die Ablage. Nach ein paar Wochen entsteht daraus, was heute
fehlt: **was ein Auftragstyp tatsächlich kostet** — Recherche gegen Rechnung gegen
Dokumentation, groß gegen klein.

**Dafür:** braucht keinen Endpunkt, keine Zugangsdaten und kein Werkzeug, das es noch nicht gibt
— nur eine Zeile mehr im Aufgaben-Prompt; ist **heute** umsetzbar, unabhängig von I-24
(seit 23.08. als Punkt 9 im Schichtdienst-Prompt verankert). Und es misst die Größe, die für die
Stufenwahl (`werkzeuge/arbeitsteilung.md`, Abschnitt 2) und für die Bündelung (I-27) wirklich
zählt: nicht wie voll der Tank ist, sondern was eine Fahrt verbraucht. Zusammen mit I-24 ergibt
das erst die vollständige Steuerung für I-26 — Füllstand *und* Verbrauch.

**Dagegen/zu prüfen:** Ob die Zahl, die eine Session über sich selbst sieht, vollständig ist —
die Abschlussnotiz entsteht vor dem Sitzungsende, die letzten Schritte fehlen also
zwangsläufig. Ob die Werte zwischen Oberflächen (Cowork-Cloud, Chat, Desktop) überhaupt
vergleichbar sind. Und ob die Selbstauskunft belastbar ist oder nur geschätzt — das ist am
ersten Lauf zu prüfen, nicht anzunehmen.
**Aussichtsreich** — der billigste Schritt in Richtung I-26 und der einzige, der ohne
undokumentierte Schnittstellen auskommt.

**Übergeben an Projekt claude-optimierung 23.08.2026** — Eintrag bleibt (nie löschen),
Weiterentwicklung dort; Querverweis: Ordner `claude-optimierung`,
`briefkasten/an-claude-optimierung.md`.

---

## Mechanik und Aufbau

### I-01 · Teleskopauszug für das Modul
Vollauszugsschienen wie an einem Backofen. Löst P-10 vollständig: das Modul lässt sich ganz
herausziehen, ohne zu kippen, und rastet aus.
**Dagegen:** 15–30 € je Paar, also 60–120 € für vier Etagen; Schienen haben Spalte und
Schmierung, beides im Spritzbereich unerwünscht (R-2.4); sie bringen Bauteile ans Rack, die
gereinigt werden müssen. **Zu prüfen**, ob es lebensmittelgeeignete Ausführungen gibt.

### I-02 · Auszugsstopp außerhalb der Rollenspur
Der Kipphaken scheiterte daran, dass er in die Rollen lief. Eine zweite Bahn **neben** der
Rollenspur — ein Blechsteg an der Laufschiene mit einem Anschlag am Rack — hätte das Problem
nicht. Kostet zwei Abkantungen und ein kleines Blechteil je Etage.
**Aussichtsreich**, weil billig und ohne Hygienenachteil. Zusammen mit P-05 zu konstruieren.

### I-12 · Modul mit anderem Trayformat
Die Schnittstelle erlaubt es (R-6.2): ein Modul mit GN 1/6 oder 1/4 für Kulturen mit tieferem
Wurzelraum, oder mit einer einzigen großen Wanne für Schnittkräuter. Rack bleibt unverändert.
**Notiz** — das ist genau der Beweis, den die Modularität später erbringen soll.

### I-23 · Wanne mit waagerechtem Rand
Die Innenwanne ist heute als Ganzes gekippt — Boden *und* Rand. Dadurch steht ihre hohe Ecke
23 mm über der tiefen und die Aufkantung musste auf 10 mm begrenzt werden (P-33).
**Die bessere Form:** waagerechter Rand auf konstanter Höhe, trapezförmige Wände, nur der Boden
geneigt. Genau so ist jede Auffangwanne im Anlagenbau gebaut. Dann sind 25–30 mm Rand möglich,
ohne die Trays zu berühren, und die Wanne fasst auch verschüttetes Substrat.
**Dagegen:** vier verschieden hohe Wände, also vier verschiedene Zuschnitte statt zweier Paare —
etwas mehr Aufwand beim Schachteln.
**Aussichtsreich**, sobald die Modulgeometrie sonst steht.

**Nachtrag 23.08. (Befund 4ah):** Die Idee hat ein zweites, stärkeres Argument bekommen. Solange
die Wanne als Ganzes gekippt ist, schlägt **jede** Neigungserhöhung voll auf die
Eckhöhendifferenz durch (2°/1° → 23 mm, 2°/1,5° → 26,9 mm, 3°/1,5° → 34,5 mm) und frisst die
Trayfreiheit. Mit waagerechtem Rand kostet mehr Neigung nur Wannentiefe an der tiefen Ecke.
**I-23 ist damit die Voraussetzung für jede größere Neigungserhöhung** — nicht nur eine
Verbesserung der Aufkantung. Für die empfohlene kleine Korrektur (quer 1° → 1,5°, +3,9 mm) ist
sie nicht zwingend, aber vorher zu prüfen, ob die 3,9 mm im CAD frei sind.

### I-20 · Rack als Vorlage für ein Wandregal
Ein einetagiges Modul an der Wand, ohne Ständerwerk — als kleinstes verkaufbares Produkt für
eine Küche, die nur eine Sorte will. Nutzt Modul und Schnittstelle unverändert.
**Notiz** für den Produktkatalog.

---

## Steuerung und Messtechnik

### I-04 · Dezentraler Controller je Modul
Jedes Modul bekommt einen eigenen kleinen Rechner, nach außen geht nur eine störfeste Verbindung
(RS-485, CAN oder Ethernet). Löst P-14 grundsätzlich statt symptomatisch und macht das Modul
wirklich autark — passend zu R-6.2.
**Dagegen:** mehr Elektronik je Modul, also höhere Grenzkosten. Die Bus-Vorbereitung in der
Schnittstelle ist bereits vorgesehen. **Wartet auf die Bestandsaufnahme (P-01).**

### I-05 · Bus-Extender statt dezentraler Controller
Ein P82B715 an jedem Ende hebt die I²C-Reichweite von 3,7 auf rund 37 m. Zwei Bausteine je
Strang, keine Änderung an der Architektur.
**Zu prüfen:** löst die Reichweite, nicht die Teilnehmerzahl. Bei sechzehn Modulen hilft er
weniger als I-04.

### I-06 · Serversteuerung beim Skalieren
Wenn mehrere Racks laufen, wandert die Logik auf einen kleinen Server; die Module melden nur
noch Messwerte und nehmen Sollwerte entgegen.
**Notiz** — ausdrücklich als spätere Option gewünscht, nicht für V1.

### I-09 · Wiegezellen unter den Trays
Vier billige Wägezellen je Modul würden zwei Größen liefern, die heute geschätzt sind: den
**tatsächlichen Wasserverbrauch** (Gewichtsverlust zwischen zwei Bewässerungen) und die
**Ertragsentwicklung** (Zunahme über die Kulturzeit) — beide ohne einen Handgriff.
Das trifft P-24, P-26 und P-27 auf einen Schlag und wäre die stärkste einzelne Messwert-Quelle
im ganzen Aufbau.
**Zu prüfen:** Feuchte und Vibration am Sensor, Kalibrierung, und ob die Auflösung bei 250 g
Ernte auf 1,8 kg Traygewicht reicht.

### I-13 · Kamera zur Wachstumsdokumentation
Eine einfache Kamera je Modul, ein Bild pro Stunde. Liefert Keimrate, Wachstumsverlauf und den
optimalen Erntezeitpunkt — und nebenbei Bildmaterial, das im Firmen- und Kundengespräch mehr
wiegt als jede Zeichnung.
**Zu prüfen:** Beschlag auf der Optik, Beleuchtungswechsel, Datenmenge.

### I-14 · LED-Spektrum je Modul unterschiedlich
Das Stressprogramm arbeitet mit Lichtqualität als Hebel. Module mit unterschiedlichem Spektrum
— etwa erhöhter UV-A- oder Blauanteil für Anthocyane — wären ein eigener Vergleichsversuch.
**Zu prüfen** nach der ersten Ernte, siehe `anbau/stresssteuerung-grundlagen.md`.

### I-22 · Modulkennung im Steckverbinder
Ein Widerstand oder ein 1-Wire-Baustein im M12-Stecker, der dem Rack sagt, welches Modul
steckt. Dann weiß die Steuerung ohne Konfiguration, welches Programm zu fahren ist — und ein
getauschtes Modul bringt sein Rezept mit.
**Zu prüfen:** kostet Cent, spart Bedienfehler.

---

## Wasser, Klima, Hygiene

### I-03 · Eigenständige Wassermodule
Die Wasserversorgung selbst modular bauen: mehrere Behälter, Mischung, Nährlösungskreise je
Strang. Ausdrücklich **später** — jetzt gilt ein Behälter, separat befestigt.
**Notiz**, entstanden aus Befund 4y.

### I-18 · Trays in der Gastro-Spülmaschine reinigen
Die Trays sind GN 1/9 — sie passen in **jede** Gastronomie-Spülmaschine. Das ist kein Zufall,
sondern ein unterschätzter Vorteil der GN-Wahl: Die Reinigung des Teils mit dem größten
Hygienerisiko braucht keine eigene Lösung.
**Aussichtsreich:** gehört als Argument in den Produktkatalog und in die Bedienanleitung.
Zu prüfen ist nur, ob die Bodenperforation den Spülstrahl aushält.

### I-19 · Kondensat auffangen und zurückführen
An der Modulinnenseite schlägt sich Feuchte nieder und läuft heute in den Ablauf. Sie ist
destilliert und sauber — ein kleiner Rückführkreis würde Wasser sparen.
**Notiz.** Bei 1 l/m²/Tag ist die Ersparnis klein; interessant erst bei großem Raster.

### I-21 · Trockenlaufschutz und Füllstandsgeber
Läuft das Reservoir leer, pumpt die Pumpe trocken und stirbt — und die Charge trocknet aus.
Ein Schwimmerschalter kostet wenige Euro.
**Aussichtsreich:** gehört in die erste Steuerungsversion, sobald P-01 geklärt ist.

### I-17 · Notfall-Handbetrieb
Bei Steuerungsausfall muss man von Hand gießen können, ohne das Rack zu zerlegen. Ein
Absperrhahn und ein Schnellkupplungspunkt am Vorlauf genügen.
**Aussichtsreich**, kostet fast nichts, rettet im Zweifel eine Charge.

### I-28 · Lüfternachlauf als Trocknungsschritt nach der Reinigung *(neu 23.08., aus Befund 4ah)*
Die Neigungsrechnung zu P-06 hat gezeigt, dass keine Neigung die festgehaltenen Resttropfen
entfernt — sie verschwinden nur durch Verdunstung. Bei 22 °C und der hohen Feuchte im Modul
braucht eine rund 1 ml große Pfütze **etwa 17 Stunden in ruhender Luft**, mit bewegter Luft
(1 m/s) noch **rund 10 Stunden**, bei 60 % relativer Feuchte und Lüfter etwa 5 Stunden. Ein
dünner Restfilm dagegen ist in 10–35 Minuten weg.
**Die Idee:** Der ohnehin vorhandene Lüfter bekommt ein Nachlaufprogramm — nach jeder Reinigung
(und optional nach dem letzten Sprühzyklus vor der Dunkelphase) läuft er eine feste Zeit auf
voller Drehzahl, bis die Wanne trocken ist. Das ist reine Software, kostet kein Bauteil.
**Dafür:** billigster denkbarer Hebel gegen Biofilm im Spritzbereich; wirkt auf genau den Rest,
den die Geometrie nicht wegbekommt; die Trocknungszeit ist über den Lüfter direkt steuerbar.
**Dagegen/zu prüfen:** Der Lüfter muss die Wannenfläche überstreichen, nicht nur den Bestand —
das berührt P-22 (Luftführung noch nicht konstruiert). Außerdem trocknet mitlaufende Luft auch
die Kultur; der Nachlauf gehört deshalb in Reinigungs- und Dunkelphasen, nicht in den
Wachstumsbetrieb. Die Trocknungszeit ist an der ersten Charge zu messen, nicht zu schätzen.
**Aussichtsreich** — gehört in die Steuerung V1, sobald P-01 geklärt ist.

### I-29 · Wanne walzblank (2B) statt gebürstet *(neu 23.08., aus Befund 4ah)*
Die Aufgabenstellung zu P-06 ging selbstverständlich von „gebürstetem V2A" aus. Das ist keine
notwendige Festlegung, und für die Wanne ist es die schlechtere.

| Ausführung | typ. Ra | Eigenschaft |
|---|---|---|
| **2B walzblank (Lieferzustand)** | **0,30–0,50 µm** | richtungsfrei, kostet nichts extra |
| Schliff Korn 240 | 0,38 µm | gerichtete Rillen, quer gemessen deutlich rauer |
| Schliff Korn 180 | 0,76 µm | knapp unter der 0,8-µm-Grenze |

Alle drei erfüllen die Normgrenze Ra ≤ 0,8 µm; im Bereich 0,1–2 µm war in der
Reinigbarkeitsuntersuchung der Informationsstelle Edelstahl Rostfrei kein signifikanter
Unterschied messbar. Der Unterschied liegt in der **Richtung**: Schliffrillen lassen Wasser
längs gut laufen und halten es quer fest — an einer Wanne mit diagonaler Fallinie ist das ein
Nachteil ohne Gegenwert.
**Dafür:** 2B ist der Lieferzustand, also kostenlos, glatter und richtungsfrei.
**Dagegen:** optisch weniger ansprechend — für ein Bauteil, das im geschlossenen Modul liegt und
nur zum Reinigen herauskommt, spielt das keine Rolle. Für die sichtbaren Außenflächen kann
weiter gebürstet werden; die beiden Entscheidungen sind unabhängig.
**Aussichtsreich** — gehört zusammen mit P-09 in die Fertigungsunterlage entschieden.

---

## Anbau und Saatgut

### I-30 · Eigenvermehrung der teuren Sorten *(neu 23.08., aus Befund 4ai)*
Die Saatgutrecherche hat gezeigt, dass zwei Sorten aus dem Programm teuer oder umständlich zu
beschaffen sind: wilde Rauke (*Diplotaxis tenuifolia*) kostet rund 2,20 € Saatgut je Tray und
gibt es nur über Profi-Bio mit Mindestabnahme, Bronzefenchel nur als Gartenportion zu 50 Korn.
**Die Idee:** Beide Arten sind **samenfest** und mehrjährig beziehungsweise leicht zum Blühen zu
bringen. Ein paar Pflanzen im Topf auf der Fensterbank oder im Garten liefern nach einer Saison
Saatgut in Mengen, die für viele Chargen reichen — bei wilder Rauke sind 1 g bereits rund
3.200 Korn, also fünf Trays.
**Dafür:** passt zum bootstrapped Rahmen (Zeitwert 15 €/h, Startbudget unter 1.000 €); macht
unabhängig von Mindestabnahmen und Lieferengpässen; die Mutterpflanzen sind nebenbei
Anschauungsmaterial für Kundengespräche.
**Dagegen/zu prüfen:** Eigenes Saatgut hat keine geprüfte Keimfähigkeit und keine
mikrobiologische Kontrolle — für Ware, die roh gegessen wird, ist das ein ernstzunehmender
Einwand (I-31 wird dann Pflicht statt Kür). Fremdbestäubung mit Wildformen ist bei Diplotaxis
möglich. Und es dauert eine Saison, löst also kein Problem der ersten Charge.
**Zu prüfen** — frühestens, wenn die erste Charge läuft und feststeht, welche Sorten dauerhaft
im Programm bleiben.

### I-31 · Keimprobe vor jeder Aussaat *(neu 23.08., aus Befund 4ai)*
Alle sechs Rasterfelder werden besät, eine Reserve gibt es nicht (Befund 4b) — fällt eine Sorte
aus, bleibt das Feld für die ganze Charge leer. Der billigste Schutz dagegen ist ein
**100-Korn-Test**: hundert Korn auf feuchtes Küchenpapier, nach der sortentypischen Keimzeit
auszählen, Ergebnis notieren.
**Dafür:** kostet Papier und fünf Minuten, macht aus der Herstellerangabe „Keimfähigkeit
regelmäßig geprüft" eine eigene Zahl, und die Zahl gehört ohnehin ins Rechenmodell (sie
korrigiert die Aussaatstärke, P-39). Besonders wertvoll bei Micro-Shiso, dessen Keimung als
langsam und heikel gilt (P-41), und bei angebrochenen Gebinden aus der Vorsaison.
**Dagegen:** verlängert den Vorlauf um die Keimzeit — der Test muss also vor dem Aussaatkalender
laufen, nicht parallel dazu.
**Aussichtsreich** — gehört als fester Schritt in die Chargenvorbereitung, spätestens sobald
Saatgut länger als eine Saison gelagert wird oder aus Eigenvermehrung stammt (I-30).

---

## Wirtschaft, Recht, Vertrieb

### I-07 · Raster 2 × 2 × 4 als Zielausbau
16 Modulplätze, 998 × 1010 × 1820 mm, **18,60 € je Platz** statt 31,60 € beim einspaltigen Rack,
und mit Sicherheit 3,75 gegen Kippen frei im Raum stehend.
**Aussichtsreich** als Ausbauziel nach den ersten Aufträgen. Voraussetzung ist ein Standort,
an dem das Rack von beiden Seiten zugänglich ist.

### I-08 · Zweites Modul für die Klimavergleichsmessung *(entschieden)*
Zwei Module nebeneinander mit unterschiedlichen Einstellungen sind die einzige Möglichkeit, den
Klimaeinfluss sauber zu messen (Bauplan 6.1). Kommt nach der ersten Ernte.

### I-10 · Teildämmung 2b nachrüsten *(entschieden)*
Nur Boden und Decke, nicht rundum (Befund 4d). 32 € je Modul, jederzeit nachrüstbar, weil die
Außenkontur nach dem Endzustand gebaut ist (R-6.3). Entschieden wird mit Logdaten, nicht vorher.

### I-11 · Zuschnitte für mehrere Module zusammen *(entschieden)*
Das zweite Modul kostet nur eine Tafel extra, das erste drei. Wer mehrere plant, lässt sie
zusammen schneiden — die Tafel ist bezahlt und der Rüstaufwand fällt einmal an (Befund 4n).

### I-15 · Referenzcharge als Qualitätsnachweis
Eine standardisierte Charge, immer gleich gefahren, immer gleich dokumentiert — als Vergleichs-
maßstab für jede Rezeptur und als Beleg gegenüber Kunden. Blindverkostung gegen Supermarktware,
schriftlich festgehalten.
**Aussichtsreich:** Das ist das Argument, mit dem ein Küchenchef einen Premiumpreis rechtfertigt.

### I-16 · Gebrauchsmuster statt Patent
Für die Modulschnittstelle wäre ein Gebrauchsmuster deutlich billiger und schneller als ein
Patent, mit zehn Jahren Schutzdauer.
**Zu prüfen** in der Erstberatung (P-29). Achtung: Neuheitsschonfrist beachten — jede
Veröffentlichung vorher kann den Schutz kosten.

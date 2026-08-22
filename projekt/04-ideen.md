# Ideenregister

*Stand: 22.08.2026 · lebendes Dokument*
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
| I-24 | Kontingent-Sichtbarkeit für Claude | Werkzeug | zu prüfen | Sitzung 22.08. |
| I-25 | Git-Brücke: Spiegel auch für Cloud-Sessions erreichbar | Werkzeug | zu prüfen | Schichtdienst-Grenze |
| I-26 | Kontingentgesteuerte Betriebsmodi | Werkzeug | Notiz | Sitzung 22.08. |
| I-27 | Arbeitsplan-Workflow: Triage, Stufen-Bündelung, Dispatch, Zusammenführung | Werkzeug | zu prüfen | Sitzung 22.08. (Modellwechsel-Kosten) |

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

### I-26 · Kontingentgesteuerte Betriebsmodi
Aufbauend auf I-24: Wenn der Kontingent-Stand (oder wenigstens die Fenster-Uhrzeiten) für
Claude sichtbar wird, können Automatisierungen **nach Kontingent-Verfügbarkeit takten** und
zwischen Modi wechseln — z. B. Vollmodus zu Fensterbeginn (große Schicht-Aufträge), Sparmodus
bei knappem Rest (nur Sicherung und Übergabe), Ruhemodus davor. **Notiz** — hängt an I-24 und
gehört in die Leitstand-Routine (Audit 25), sobald die Sichtbarkeit gelöst ist.

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

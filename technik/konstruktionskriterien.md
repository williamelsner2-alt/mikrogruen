# Konstruktionskriterien

*Inhaltsstand: 21.08.2026 · Struktur: 21.08.2026*
*Nachbardokumente: konkrete Bauentscheidungen in `technik/prototyp-bauplan.md`, Zahlen in
`mikrogruen-rack-modell.xlsx`, Stand des Modells in `technik/cad-modellstand.md`*

Dieses Dokument enthält **Regeln, keine Maße**. Es beantwortet nicht, wie breit das Modul ist,
sondern woran sich jede Konstruktionsentscheidung messen lassen muss. Wenn eine neue Idee gegen
eine dieser Regeln verstößt, ist das kein Ausschluss — aber es muss begründet und hier vermerkt
werden.

Jede Regel hat eine Nummer, damit man sich in Entscheidungen darauf berufen kann: „verstößt gegen
R-3.2" ist kürzer und überprüfbarer als eine Diskussion.

---

## 1. Der oberste Grundsatz: Zonen trennen

Die Anlage zerfällt in drei Bereiche mit **völlig unterschiedlichen Anforderungen**. Diese
Trennung ist die Grundlage aller weiteren Regeln, und sie entspricht der Einteilung, die
DIN EN 1672-2 für Lebensmittelmaschinen vorgibt.

| Zone | Wo | Was gilt |
|---|---|---|
| **Lebensmittelbereich** | Trayinneres, Substrat, Pflanze | Berührt das Erntegut. Höchste Anforderung |
| **Spritzbereich** | Modulinneres: Boden, Wände, Decke, Sprühleiste, Ablauf | Wasser und Aerosole erreichen es, Erntegut nur mittelbar |
| **Nicht-Lebensmittelbereich** | Ständerwerk, Verband, Rollen, Schränke, Versorgungsstrang | Wird trocken, gereinigt aus praktischen Gründen |

**R-1.1** Jedes Bauteil wird genau einer Zone zugeordnet. Bauteile, die zwei Zonen durchdringen
(Ablaufstutzen, Steckverbinder), gelten in voller Länge nach der **strengeren** Zone.

**R-1.2** Was im Nicht-Lebensmittelbereich liegt, darf geschraubt, gespalten und geschmiert sein.
Was im Spritzbereich liegt, nicht. Diese Regel ist der Grund, warum der Diagonalverband außen
verschraubt sein darf und die Modulinnenecken nicht.

**R-1.3** Die Zonengrenze ist die Modulschale. Sie ist deshalb das Bauteil, an dem am wenigsten
improvisiert werden darf.

---

## 2. Reinigbarkeit

Die Regel dahinter ist einfach: **Was man nicht in einem Zug auswischen kann, wird nicht
gereinigt.** Nicht weil jemand schlampt, sondern weil es zu lange dauert und deshalb irgendwann
ausgelassen wird.

**R-2.1 Keine Innenecke ohne Radius.** Jede einspringende Ecke im Spritzbereich bekommt einen
Radius. Orientierungswert aus der EHEDG-Praxis: **mindestens 3 mm** für handreinigbare Flächen,
besser 6 mm. Eine scharfe 90°-Innenkante ist mit einem Tuch nicht erreichbar — dort bleibt Wasser,
Substrat und danach Biofilm.

**R-2.2 Keine nach oben offenen waagerechten Absätze.** Jede Fläche im Spritzbereich, auf der
Wasser stehen bleiben kann, ist ein Fehler. Entweder geneigt, oder gar nicht vorhanden.

**R-2.3 Alles entwässert zu einem Punkt.** Der Modulboden hat 2° Längs- und 1° Quergefälle zu
genau einem Tiefpunkt. **Offen: 2° ist knapp.** Übliche Empfehlung für selbstentleerende Flächen
ist eher 3°. Das ist an der ersten Charge zu prüfen — bleibt Wasser stehen, wird das Gefälle
erhöht, nicht die Reinigungsanweisung.

**R-2.4 Keine Spalte im Spritzbereich.** Überlappungen, Punktschweißungen und Schraubverbindungen
im Modulinneren sind unzulässig. Verbindungen dort sind durchgehend geschweißt und verschliffen,
oder sie existieren nicht.

**R-2.5 Keine Sacklöcher, keine Toträume.** Ein Rohr, das nicht durchströmt wird, ist eine
Bakterienzucht. Gilt besonders für Stichleitungen zu Düsen und für den Ablauf.

**R-2.6 Demontierbar ohne Werkzeug, wo täglich gereinigt wird.** Trays, Sprühleiste und alles,
was mit Substrat in Berührung kommt, muss ohne Schraubendreher heraus.

**R-2.7 Oberflächen glatt und passiviert.** V2A 1.4301, gebürstet oder besser. Orientierungswert
für Lebensmittelkontakt: **Ra ≤ 0,8 µm**. Nach dem Schweißen beizen und passivieren — eine
Anlauffarbe ist eine Korrosionsstelle.

---

## 3. Blech und Fertigung

**R-3.1 Was später aus Blech geschnitten wird, wird auch als Blech modelliert.** Kein Vollkörper,
der so tut, als wäre er ein Profil. Diese Regel steht hier, weil ihre Verletzung schon einmal
30 € je Modul gekostet hat (`projekt/01-status.md`, Befund 4k).

**R-3.2 Jedes Blechteil hat eine Abwicklung.** Wenn sich ein Teil nicht in eine Ebene abwickeln
lässt, ist es kein Blechteil, sondern ein Tiefziehteil — andere Fertigung, andere Kosten.

**R-3.3 Biegeradius mindestens gleich der Blechstärke.** Bei 1 mm V2A also r ≥ 1 mm. Engere
Radien reißen an der Außenfaser.

**R-3.4 Kantenabstand von Löchern mindestens 2 × Blechstärke**, Abstand zwischen Löchern
mindestens 2 × Lochdurchmesser. Sonst zieht das Material beim Biegen ein.

**R-3.5 Ein Werkstoff, eine Stärke, wo es geht.** Jede zusätzliche Blechstärke ist eine
zusätzliche Tafel, ein zusätzlicher Rüstvorgang und ein zusätzlicher Restposten. Derzeit zwei:
1,0 mm für die Schale, 1,5 mm für Tragteile.

**R-3.6 Dünneres Blech spart keine Kosten.** Blech wird nach Fläche bezahlt, nicht nach Gewicht.
Materialersparnis kommt aus **weniger Fläche** oder **besserem Einkauf** — nie aus geringerer
Stärke. Die Stärke wird nach Funktion gewählt, nicht nach Budget.

**R-3.7 Teile schachtelbar halten.** Lange schmale Teile und große rechteckige Teile lassen sich
gut kombinieren, viele mittelgroße Quadrate nicht. Wer ein Teil um 20 mm wachsen lässt, kann eine
ganze Tafel kosten.

---

## 4. Tragen und Aussteifen

**R-4.1 Was trägt, gehört innen und darf fest sein. Was nur aussteift, gehört außen und wird
geschraubt.** Aus dieser Regel folgt die gesamte Fachwerkbauart: Auflageschienen innen, Verband
außen abnehmbar.

**R-4.2 Bemessen wird nach der schwersten absehbaren Ausbaustufe, nicht nach dem Ist-Zustand.**
Für die Modulauflage sind das 36,8 kg gegen heute 16,7 kg (`14-Modulmasse`). Tragteile sind
billig, Nachrüsten ist teuer.

**R-4.3 Durchbiegung unter L/500.** Streng für ein Regal, aber die Trayebene muss waagerecht
bleiben, damit das Gefälle im Modulboden stimmt.

**R-4.4 Sicherheit gegen Streckgrenze mindestens 2.** Bei Zugverbänden mindestens 3, weil dort
Vorspannung, Kerben und Montagefehler zusammenkommen.

**R-4.5 Zwei Lastfälle, immer.** Eigengewicht *und* eine horizontale Ersatzlast. Das
Eigengewicht allein hat noch nie ein Regal umgeworfen — ein Mensch, der sich anlehnt, schon.

**R-4.6 Zugstäbe immer paarweise.** Ein Seil oder Flachband nimmt keinen Druck auf. Jede
verspannte Ebene bekommt beide Diagonalen.

---

## 5. Montage, Wartung und Austausch

**R-5.1 Das austauschbare Teil bleibt einfach.** Alles, was mehrfach vorkommt und getauscht wird
— das Modul —, bekommt so wenig Bearbeitung wie möglich. Führungen, Rollen und Halterungen sitzen
am Rack, das es nur einmal gibt.

**R-5.2 Von außen lösbar.** Jede Verbindung, die zur Reinigung oder Wartung geöffnet wird, ist
ohne Eingriff in den Innenraum erreichbar.

**R-5.3 Kein Werkzeug für den täglichen Betrieb.** Werkzeug ist erlaubt für Montage und Umbau,
nicht für Ernte, Aussaat und Reinigung.

**R-5.4 Ein Bauteil, eine Aufgabe.** Wenn ein Blech gleichzeitig abdeckt, aussteift und trägt,
kann man keinen der drei Zwecke einzeln ändern. Genau daran ist die alte Rückwand gescheitert.

**R-5.5 Rasterbindung statt Einzelmaß.** Alles, was am Ständerwerk befestigt wird, sitzt im
25-mm-Lochraster. Dann ist jede Position später verschiebbar.

---

## 6. Modularität und Schnittstelle

**R-6.1 Drei Schnittstellen, sonst nichts.** Mechanisch: Außenmaß und Lochraster. Elektrisch:
ein Steckverbinder. Hydraulisch: eine Kupplung und ein Ablauf. Wer eine vierte braucht, hat das
Modul falsch geschnitten.

**R-6.2 Die Schnittstelle ist eingefroren, der Inhalt ist frei.** Ein Modul mit anderem
Trayformat, eigenem Controller oder anderer Klimatechnik muss ohne Rackänderung passen.

**R-6.3 Die Außenkontur folgt immer dem Endzustand.** Auch in Stufe 1 wird nach dem gedämmten
Endmaß gebaut. Sonst passt die Nachrüstung nicht.

**R-6.4 Innere Einbauten beziehen sich auf die Modulunterkante, nicht auf Blechoberflächen.**
Sonst wandern Trayebene und Lichtabstand beim Nachrüsten der Dämmung.

---

## 7. Parametrik und Modellpflege

**R-7.1 Eine Quelle für jede Zahl.** Eingangsgrößen stehen in `mikrogruen-rack-modell.xlsx`,
Blatt `01-Eingaben`. Alles andere ist abgeleitet.

**R-7.2 Keine festen Zahlen in der Geometrie.** Jede Länge im CAD ist ein Ausdruck auf einen
Alias. Ausnahmen sind zu begründen und stehen in `technik/cad-modellstand.md`.

**R-7.3 Ausdrücke immer mit Einheit.** `60 mm`, nie `60`. FreeCAD verwirft einheitenlose
Mischausdrücke stillschweigend und markiert das Objekt als ungültig.

**R-7.4 Maße fließen, Topologie nicht.** Ausdrücke können Größen ändern, aber keine Objekte
erzeugen oder löschen. Alles, was die *Anzahl* von Teilen ändert, gehört ins Rastermakro.
**Verrundungsradien zählen dazu:** `Part::Fillet` speichert sie in einer Kantenliste, die keine
Expression tragen kann. Dafür gibt es `MikrogruenModul_Radien`.

**R-7.5 Der Parametersync ist die einzige Brücke.** Werte gehen aus Blatt `16-CAD-Parameter` per
Makro in die CAD-Dateien — nie von Hand. Wer im CAD eine Eingangsgröße ändert, verliert sie beim
nächsten Sync.

**R-7.6 Nach jeder Geometrieänderung: Gegenprobe.** Massen, Flächen und Längen aus dem CAD gegen
die Arbeitsmappe rechnen. Abweichung über 2 % ist ein Befund, kein Rundungsfehler. Diese Prüfung
hat bisher fünf Rechenfehler gefunden, die in keinem Modell allein sichtbar waren.

---

## 8. Sicherheit und Ergonomie

**R-8.1 Nichts über 2000 mm, was täglich angefasst wird.** Darüber braucht es einen Tritt, und
ein Tritt in einer Nasszone ist eine Sturzstelle.

**R-8.2 Kein Bauteil über 25 kg zum Einzelheben.** Das bestückte Modul liegt bei 16,7 kg, im
Vollausbau bei 29,5 kg — im Vollausbau also ein Zwei-Personen-Teil oder eines, das leergeräumt
wird, bevor es gezogen wird.

**R-8.3 Auszüge dürfen nicht kippen.** **Offen:** Das Modul auf Rollen ist bis rund 47 % Auszug
stabil, danach muss es gehalten werden. Ein Auszugsstopp fehlt noch — die Rollenbahn schließt
einen einfachen Haken aus, weil er in die Rollen liefe. Zwei Kandidaten für später: ein
Teleskopauszug, oder ein Haken außerhalb der Rollenspur.

**R-8.4 Einspaltige Racks gehören an die Wand.** Ab zwei Spalten nicht mehr nötig
(`projekt/01-status.md`, Befund 4v).

**R-8.5 Wasser und Strom trennen.** Elektronik oben, Hydraulik unten, Kabeleinführungen von
unten. Wasser läuft nach unten, nie in ein Gehäuse hinein.

---

## 9. Wo der aktuelle Entwurf gegen diese Kriterien verstößt

Ehrliche Liste, Stand 21.08.2026:

| Regel | Verstoß | Stand |
|---|---|---|
| R-2.1 | ~~Modulinnenecken scharf~~ | **erfüllt 21.08.** — Schale r6/r7, Wanne r4 |
| R-2.3 | 2° Gefälle liegt unter der Empfehlung von 3° | offen, an der ersten Charge zu prüfen |
| R-2.4 | ~~Naht Innenboden zu Wand~~ | **entfällt 21.08.** — die Wanne liegt lose, es gibt dort keine Naht mehr |
| R-2.5 | Stichleitung zu den Düsen noch nicht auf Totraum geprüft | offen (P-07) |
| R-2.2 | Aufkantung der Wanne auf 10 mm begrenzt, fasst kein verschüttetes Substrat | offen (P-33) |
| R-3.2 | Abwicklungen fehlen für Ständerwerk, Schränke, Laufschiene | zurückgestellt bis Geometrie steht |
| R-8.3 | Auszugsstopp fehlt | offen, zwei Lösungswege benannt |
| R-2.7 | Oberflächengüte und Passivierung nirgends festgelegt | offen, gehört in die Fertigungsunterlage |

Diese Tabelle wird bei jeder Überarbeitung mitgeführt. Sie ist der eigentliche Zweck des
Dokuments: nicht Regeln aufzustellen, sondern sichtbar zu machen, wo man von ihnen abweicht.

# Status — Stand 23.08.2026

*Diese Datei zuerst aktualisieren, wenn sich etwas ändert. Alle anderen Dokumente beschreiben
Regeln und Pläne; nur diese beschreibt die Wirklichkeit.*

---

## 1. Die wichtigste Änderung: vom Einzelgehäuse zum modularen Rack

Der frühere Entwurf — ein geschlossener Schrank mit einer Growkammer — ist **ersetzt** durch ein
offenes Ständerwerk mit N austauschbaren Klimamodulen. Die Technik sitzt seit dem 19.08. **nicht
mehr im Rack**, sondern in zwei externen Schränken (Elektronik oben, Hydraulik unten).

Der eigentliche Konstruktionsgegenstand ist nicht das Rack, sondern die **Modulschnittstelle**:
Außenmaß und Lochrasterteilung (mechanisch), ein M12-Steckverbinder mit Versorgung, Masse und Bus
(elektrisch), eine Schnellkupplung im Vorlauf plus einen Ablauf durch die Rückwand (hydraulisch).
Solange diese drei fix bleiben, ist jedes Modul gegen jedes andere tauschbar — auch eines mit
anderem Trayformat, eigenem Reservoir oder eigenem Controller.

### Was welche Datei ersetzt

| Aktuell | Ersetzt | Status |
|---|---|---|
| `technik/prototyp-bauplan.md` | Box-Version vom 18.08. | vollständig neu, 13 Abschnitte |
| `mikrogruen-rack-modell.xlsx` | `mikrogruenboxmodell.xlsx` | ausgetauscht am 21.08. ✓ |
| `technik/3d-modell-briefing.md` | — | neu |
| `technik/rack-architektur.svg` | — | neu |

Unverändert gültig: `anbau/*`, `wirtschaft/fahrplan.md`, `wirtschaft/produktkatalog.md`,
`werkzeuge/freecad-mcp-setup.md`.

---

## 2. Wo das Vorhaben steht

**Fahrplan-Phase 1 (Laboraufbau).** Konstruktion und Berechnung sind weit, gebaut ist nichts.

| Bereich | Stand |
|---|---|
| Rechenmodell | vollständig, rechnet Geometrie, Licht, Klima, Wasser, Elektrik, Ertrag, Kosten |
| CAD | FreeCAD 1.1.3, Dokument `MikrogruenRack`. **Volumenmodell steht** (19.08.): Ständerwerk mit Stellfüßen, Versorgungsstrang, zwei externe Schränke, vollständiges Modul mit Frontklappe, als Instanz eingehängt. Aufbau, Bedienkonzept und Fallstricke in `technik/cad-modellstand.md` |
| Speicherort CAD | `C:\Users\Arbeit\Desktop\Claude\mikrogruen\cad\MikrogruenRack.FCStd` — am 21.08. aus dem FreeCAD-Benutzerverzeichnis in den Projektordner umgezogen ✓ |
| Steuerung / Firmware | noch nicht begonnen |
| Beschaffung | **nichts bestellt** |
| Firma / Maschinenslot | **nicht angefragt.** Stiefvater möchte zuerst einen fertigen Plan sehen und stellt danach eventuell Konstrukteure — Bedingungen ungeklärt, siehe `wirtschaft/ip-und-verhandlung.md` |
| Kundentermin | **keiner.** Bewusst zurückgestellt: erst Umsetzung |
| Gewerbe | nicht angemeldet, in dieser Phase nicht nötig |

**Konsequenz für die Planung:** Ohne Kundentermin fehlt der Fixpunkt, auf den der Zeitplan
rückwärts gerechnet war. `technik/zeitplan-prototyp.md` läuft deshalb in **Modus A —
meilensteingetrieben**, mit erster Charge im Provisorium **vor** der Fertigung.

---

## 3. Aktuelle Konfiguration und Ergebnisse

Aus `mikrogruen-rack-modell.xlsx`, Stand 21.08.2026. Die Mappe trennt jetzt zwei Größen:
**Etagenplätze im Ständerwerk** (Geometrie, nachträglich nicht erweiterbar) und **bestückte
Module** (Leistung und Kosten, jederzeit nachrüstbar).

**Startaufbau: 4 Etagenplätze, 1 bestücktes Modul.** GN 1/9, 6 Trays je Etage, 2 × 3, Stufe 1
(einschalig). Technik in zwei externen Schränken.

| Größe | Wert | Bewertung |
|---|---|---|
| Raster je Modul | 354 × 328 mm | Packungsgrad 0,98 |
| Modul außen | 448 × 422 × 384 mm | Etagenteilung 400 mm |
| Rack außen | **514 × 550 × 1820 mm**, 0,28 m² Stellfläche | Etagenteilung 425 mm wegen der Laufrollen, Befund 4ac |
| Modul mit Frontklappe | Dichtung, zwei Scharniere links, Verschluss rechts | Klappe auf für die Ernte, Modul ziehen für den Tausch |
| Elektronikschrank | 300 × 300 × 150 mm | hängt oben — Wasser kann nicht hinein |
| Hydraulikschrank | 300 × 300 × 200 mm | Pumpe und Ventile · Reservoir sitzt jetzt daneben, Befund 4y |
| Reservoir | 20 l separater Behälter | 175 Tage Autonomie bei 1 Modul, 11 Tage bei 16 |
| PPFD / DLI | 239 µmol/m²/s · 13,8 mol/m²/Tag | im Zielbereich ✓ |
| Ventilöffnungszeit | 5,1 s je Zyklus | praktikabel ✓ |
| Ernte je Charge | **251 g ≈ 25 Portionen** | mit einem Modul |
| Rack bestückt | 40,1 kg | Ständerwerk 23,5 kg · Kippwinkel 22,5° |
| **Investition jetzt** | **528 €** | rund 472 € Luft im Budget · Szenario „Zuschnitt nach Maß" |

### Was die Bestückung bewirkt

Ständerwerk bleibt in allen Zeilen dasselbe — nur Module kommen hinzu:

| Module | Investition | € je m² Anbaufläche | Ernte/Charge | Masse | Kippwinkel |
|---|---|---|---|---|---|
| **1** | **528 €** | 4.633 € | 251 g | 40,1 kg | 22,5° |
| 2 | 790 € | 3.462 € | 502 g | 56,8 kg | 21,9° |
| 3 | 1.051 € | 3.072 € | 753 g | 73,4 kg | 19,2° |
| 4 | 1.312 € | 2.877 € | 1.004 g | 90,1 kg | 16,4° |

Der Kippwinkel ist in allen Zeilen unkritisch — der Lastfall, der zählt, ist ein anderer,
siehe Befund 4v. Einspaltig gehört das Rack immer an die Wand.

Die Kosten je Quadratmeter Anbaufläche halbieren sich vom ersten zum vierten Modul — das ist der
Grund, das Ständerwerk gleich hoch zu bauen. Die endgültige Etagenzahl folgt aus Budget,
Standsicherheit und dieser Kennzahl.

---

## 4. Befunde, die eine Entscheidung brauchen

### a) Das Budget trägt — weil Rack und Module getrennt kalkuliert sind

Anfangs sprengte der Vollausbau mit drei Modulen das Startbudget deutlich. Zwei Schritte haben
das gelöst: die Auslagerung der Technik (die Schränke skalieren über mehrere Racks) und die
Trennung von Etagenplätzen und bestückten Modulen.

| Aufbau | Kosten |
|---|---|
| Rack für 4 Etagenplätze | 126 € |
| Schrankpaar (einmalig, versorgt mehrere Racks) | 141 € |
| je Modul Stufe 1 | 261 € |
| **Startaufbau: Rack + Schränke + 1 Modul** | **528 €** |

Das Ständerwerk ist die Investition, die man nicht stückeln kann — deshalb gleich für vier
Plätze. Die Module sind es gerade, deshalb erst einer. Rund 472 € bleiben für Saatgut, Substrat,
Messtechnik und Reserve.

Ein einzelnes Modul beweist die Schnittstelle vollständig; dass Modul 2 passt, garantiert das
Lochraster, nicht das zweite Modul. Die Vergleichsmessung zwischen zwei Klimavarianten
(Bauplan 6.1) braucht allerdings zwei — die kommt in die zweite Runde, nach der ersten Ernte.

### b) Kein freies Rasterfeld mehr *(entschieden: volle Bestückung)*

6 Trays auf 6 Rasterfelder je Modul → **0 Reserve**. Die Rückfallebene „Ausfallsorte im freien
Feld nachziehen" existiert nicht; mit nur einem Modul gibt es auch keine zweite Etage dafür.

**Entschieden: alle sechs Felder besäen.** In der Lernphase wiegt die Erfahrung mit sechs Sorten
schwerer als die Versicherung gegen einen Ausfall — und ein Ausfall ist selbst ein Messergebnis.

Daraus folgt eine Auflage für die Sortenwahl: Weil keine Reserve dahintersteht, dürfen in der
**ersten** Charge nicht mehrere unerprobte Sorten gleichzeitig laufen. Vorschlag für die Mischung:
vier sichere Keimer als Rückgrat, zwei Kandidaten als eigentlicher Versuch. Fällt einer davon aus,
bleibt ein Feld für diese Charge leer — die Charge selbst verschiebt sich nicht.

### c) Die dritte Rasterspalte wäre nicht kostenlos

Im Projekt-Log steht die Überlegung, eine dritte Spalte sei frei, solange das Technikfach die
Rackbreite bestimmt. Auf den gespeicherten Stand trifft das **nicht** zu: die lichte Breite von
454 mm kommt aus dem Modul (448 + 2 × 3 mm Spiel), das Technikfach braucht nur 441 mm. Eine
dritte Spalte würde das Raster um 178 mm verbreitern und das Rack mitwachsen lassen.

### d) Volldämmung bestätigt sich als Sackgasse

Das Modell rechnet es durch: Stufe 1 → 23,9 °C, Stufe 2b → 25,1 °C, **Stufe 2 → 31,6 °C** bei
20 °C Umgebung. Der Kopplungsanteil zwischen den Etagen bleibt bei Volldämmung unverändert bei
0,36 und fällt nur bei Teildämmung auf 0,16. Volldämmung macht das Modul also 7,7 K wärmer, ohne
die Etagen zu entkoppeln. **Wenn gedämmt wird, dann Stufe 2b.**

Zusatzbefund: der nötige Luftwechsel liegt bei Stufe 2 bei 383 h⁻¹ — die Modulfeuchte entspricht
dann praktisch der Raumluft. Feuchtekontrolle ist in dieser Bauart nicht zu haben (Bauplan 5.3).

### e) Die Schnittstelle passte nicht ins Rack — Maßkette war unvollständig *(behoben)*

Beim Aufbau des CAD-Modells zeigte sich: hinter der Modulrückwand (Y = 455) blieben bis zur
Rackhinterkante (Y = 488) nur **33 mm**, die Hydraulikkupplung braucht aber **35 mm**. Sie ragte
2 mm aus dem Rack, und der Versorgungsstrang hatte überhaupt keinen Bauraum.

Ursache war die Maßkette selbst: `rack_t = mod_a_t + 2·fuehrungsspiel + 2·profil` kannte die
Schnittstelle nicht. Korrigiert zu

```
rack_t = profil + fuehrungsspiel + mod_a_t + schnittstelle_t + strang_t + profil
```

mit den neuen Eingaben `schnittstelle_t` (35 mm) und `strang_t` (20 mm). Racktiefe 488 → **540 mm**.
Das kostet 0,028 m² Stellfläche und senkt den Flächenfaktor von 1,36 auf 1,23 — der Preis dafür,
dass die Anschlüsse überhaupt montierbar sind. **Die Änderung gehört in die Arbeitsmappe
nachgezogen**, dort steht noch die alte Formel.

### f) Der Ablauf zeigte auf das Modul darunter *(behoben)*

Der Modulboden fiel nur nach hinten, der Ablaufstutzen ging nach unten — direkt über die Etage
darunter. Neu: Der Boden ist **eine ebene Platte mit zwei Neigungen** (2° nach hinten, 1° nach
rechts) und hat damit genau **einen Tiefpunkt** in der hinteren rechten Ecke. Dort sitzt ein
Ablauf durch die Rückwand in ein Fallrohr an der Rackrückseite. Keine Sammelrinne nötig.

Die Schnittstelle hat damit **drei** Anschlüsse an derselben Wand: Vorlaufkupplung, M12-Stecker,
Ablauf.

### g) Widerspruch Bauplan ↔ 3D-Briefing bei der Trayaufhängung *(entschieden)*

Das Briefing beschreibt die Auflageschienen bei 0–15 mm über dem Innenboden, der Behälter stünde
also darauf. Der Bauplan (4.1) beschreibt ihn als am Bördelrand **hängend**, mit dem Rücksprung
als Griffraum. Beide ergeben dieselbe Innenhöhe von 340 mm, aber nur die hängende Variante hat
einen Griffraum.

**Entschieden: hängend.** Auflageebene bei 74 mm über Modulunterkante, Behälter 37–77 mm, Körper
umlaufend 8 mm schmaler. Das 3D-Briefing ist an dieser Stelle überholt.

---

### h) Statik: Traglast unkritisch, Kippsicherheit ist die Grenze *(verschärft durch Befund 4v)*

Die Arbeitsmappe rechnet seit dem 19.08. Massen und Standsicherheit (Blatt `11-Massen-Statik`).
Ergebnis: Die **Traglast ist kein Thema** — ein bestücktes Modul wiegt 15,7 kg, die Durchbiegung
einer Traverse liegt bei 0,03 mm, weit unter L/500.

**Die Grenze ist das Kippen.** Bei 1720 mm Höhe und 514 mm Breite fällt der Kippwinkel mit
steigender Bestückung von 20,1° auf 16,4°, weil der Schwerpunkt nach oben wandert. Ab drei
Modulen gehört das Rack an die Wand gedübelt. Das ist kein Ausschlusskriterium, aber eine
Montageauflage, die in die Aufbauanleitung gehört — und ein Argument, die unteren Etagen zuerst
zu bestücken.

Alle Massenwerte für GN-Behälter und Einbauten sind Schätzungen und nach der Beschaffung
nachzuwiegen.

---

### i) Der Versorgungsstrang war zu eng bemessen *(behoben)*

Beim Einbau der Steigleitungen kollidierte das Fallrohr mit den Rackt raversen: 20 mm Bauraum
hinten, aber ein Schwerkraftablauf braucht mindestens den Durchmesser des Modulablaufs plus
Wandstärke. Ein zu dünnes Fallrohr verstopft mit Substratresten — die Reserve ist hier keine
Bequemlichkeit.

`strang_t` ist jetzt keine freie Eingabe mehr, sondern **an `ablauf_d` gekoppelt**
(`= ablauf_d + 10 mm`, aktuell 30 mm). Racktiefe 540 → **550 mm**. Damit folgt der Bauraum
automatisch, wenn der Ablaufdurchmesser sich ändert.

Das ist derselbe Fehlertyp wie Befund 4e: eine Maßkette, die ein Bauteil nicht kannte. Beide Male
hat erst die Geometrie ihn sichtbar gemacht.

### j) Stellfüße sind funktional, nicht kosmetisch

Der Modulboden hat 2° Längs- und 1° Quergefälle zu einem einzigen Ablaufpunkt. Steht das Rack
schief, kippt dieses Gefälle — bei 1° Bodenschräge in der falschen Richtung ist das Quergefälle
weg und das Wasser sammelt sich in der falschen Ecke. Vier höhenverstellbare Stellfüße sind
deshalb Voraussetzung dafür, dass die Entwässerung überhaupt funktioniert, nicht Zubehör.

Sie sitzen innerhalb der Sockelhöhe, `rack_h` bleibt die Gesamthöhe.

---

### k) Die Arbeitsmappe hat den Blechbedarf um ein Viertel unterschätzt *(behoben)*

Die Gegenprobe zwischen CAD-Geometrie und Rechenmodell hat einen Fehler gefunden, den keine der
beiden Seiten allein zeigen konnte. Die Mappe rechnete den Blechbedarf je Modul als **Hüllfläche
außen** — und übersah damit alles, was innen drin steckt:

| Position | Fläche |
|---|---|
| geneigter Innenboden | 0,187 m² |
| Auflageschienen (U-Profil) | 0,047 m² |
| Querträger | 0,040 m² |
| Anschlagbleche | 0,009 m² |
| **fehlte insgesamt** | **0,283 m²** |

Der Innenboden ist der größte Posten: Er liegt als eigenes, geneigtes Blech *über* dem Hüllboden,
ist also zusätzlich und nicht Teil der Hülle.

Blech je Modul 1,20 → **1,53 m²**, Modulkosten 218 → **247 €**. Die Mappe rechnet den Innenausbau
jetzt in `03-Modul` mit; die Gegenprobe stimmt auf 1,3 % mit dem CAD überein. Weil die
Massenrechnung an derselben Größe hängt, ist auch die Statik nachgezogen (Rack bestückt 57 → 60 kg,
Kippwinkel unverändert unkritisch).

**Methodisch der wichtigste Befund bisher:** Zwei unabhängige Modelle gegeneinander zu rechnen
findet Fehler, die in jedem einzelnen unsichtbar bleiben. Das gehört bei jeder größeren Änderung
wiederholt.

### l) Die Pumpe begrenzt die Rackhöhe — ein viertes Kriterium

Neues Blatt `12-Installationsgrenzen` beantwortet, wie weit die externen Schränke vom Rack
entfernt stehen dürfen:

- **Elektrisch unkritisch.** Bei 1,5 mm² und 3 % zulässigem Spannungsabfall sind **25,6 m**
  einfache Leitungslänge möglich. Der Elektronikschrank kann im Nebenraum stehen.
- **Hydraulisch ist die Schlauchlänge egal** — die Strömung ist laminar (Re ≈ 1.180), der
  Druckverlust liegt bei 0,018 m je Meter, rechnerisch wären 73 m möglich.
- **Aber die Förderhöhe ist der harte Grenzwert.** Von 3 m Pumpenförderhöhe frisst die Rackhöhe
  allein 1,69 m. Übrig bleiben 1,31 m.

Damit gibt es ein **viertes Kriterium für die Etagenzahl** neben Budget, Statik und Kosten je m²:
Bei 3 m Förderhöhe wird es ab etwa sieben Etagen knapp — noch vor der Ergonomiegrenze, aber die
Reserve schrumpft mit jeder Etage. Der Wert von 3 m ist eine **Annahme** und gehört am
Pumpendatenblatt geprüft, bevor die Etagenzahl endgültig festgelegt wird.

---

### m) Masse und Kosten wurden aus derselben Zahl gerechnet *(behoben)*

Beim Ableiten der Zuschnittsliste fielen zwei Fehler auf, die zusammenhängen:

1. **Die Masse rechnete mit Verschnittzuschlag.** Der Verschnitt landet im Schrott, nicht im
   Modul — das Modul war 15 % zu schwer angesetzt.
2. **Der Frontausschnitt fehlte im Materialbedarf.** Der Frontrahmen wird voll zugeschnitten,
   der Ausschnitt (0,137 m²) ist Abfall, und die Klappe kommt zusätzlich dazu.

Die Mappe trennt jetzt **netto** (verbautes Blech, Grundlage für die Masse) von **brutto**
(Zuschnittbedarf, Grundlage für die Kosten). Modulmasse 12,1 → **10,5 kg**, Zuschnittbedarf
1,53 → **1,69 m²**, Modulkosten 247 → **261 €**. Die unabhängig erstellte Zuschnittsliste
bestätigt den Bruttowert auf 0,9 %.

### n) OFFEN: Blechkauf in Tafeln kostet deutlich mehr als die Mappe rechnet

Beim Schachteln der Zuschnitte auf Standardtafeln (1000 × 2000 mm) zeigte sich: Für **ein**
Modul plus Rack-Rückwand und beide Schränke braucht man **drei Tafeln = 6 m²**, obwohl die
Teileflächen nur 3,04 m² ausmachen. Der **tatsächliche Verschnitt liegt bei 49 %**, nicht bei den
angesetzten 15 %.

| Module | Teilefläche | Tafeln | Verschnitt | Blech bei Tafelkauf |
|---|---|---|---|---|
| 1 | 3,04 m² | 3 | 49 % | 540 € |
| 2 | 4,52 m² | 4 | 43 % | 720 € |
| 3 | 6,00 m² | 5 | 40 % | 900 € |
| 4 | 7,48 m² | 6 | 38 % | 1.080 € |

**Zwei Schlüsse, beide noch zu entscheiden:**

- **Das zweite Modul kostet nur eine Tafel extra** (180 €), das erste drei. Wer ohnehin mehrere
  Module plant, sollte die Zuschnitte **gleich zusammen** machen lassen — die Tafel ist bezahlt
  und der Rüstaufwand am Wasserstrahl fällt einmal an. Das bestätigt Bauplan Abschnitt 7 mit
  Zahlen.
- **Die Rechnung gilt nur bei Tafelkauf.** Bei Zuschnitt nach Maß über einen Blechservice oder
  bei Restmaterial der Firma sieht es völlig anders aus. Genau das ist im Firmengespräch zu
  klären — es macht mehrere hundert Euro Unterschied.

**Die Mappe kann seit 21.08. zwischen drei Szenarien umschalten** (`01-Eingaben` Zeile 128).
Der gewählte Fall setzt einen Faktor auf den Blechpreis, mit dem *alle* Blechkosten rechnen —
Modul, Rückwand und beide Schränke:

| Szenario | Faktor | effektiver Blechpreis | Modul | Startaufbau |
|---|---|---|---|---|
| 1 · Zuschnitt nach Maß | 1,00 | 90 €/m² | 261 € | **528 €** |
| 2 · Tafelkauf (3 Tafeln) | 2,18 | 196 €/m² | 429 € | **816 €** |
| 3 · Restmaterial der Firma | 0,25 | 23 €/m² | 148 € | **345 €** |

Die Spanne beträgt **471 €** — fast die Hälfte des Startbudgets hängt an einer Frage, die
noch niemand beantwortet hat. Der Preisanteil im dritten Szenario (25 %) ist eine reine Annahme
und durch ein Angebot zu ersetzen.

Basisfall bleibt Szenario 1. Damit ist der offene Punkt nicht entschieden, aber **entscheidbar
geworden**: im Firmengespräch genügt eine Zahl, und die ganze Kalkulation zieht nach.

### o) Nicht der Strom begrenzt den Schrankabstand, sondern das Signal

Befund 4l hat die Installationsgrenzen aus der Sicht der Leistung beantwortet: 25,6 m
Leitungslänge sind elektrisch möglich, der Elektronikschrank dürfte im Nebenraum stehen. Blatt
`12-Installationsgrenzen` ist jetzt um die **Signalleitungen** erweitert (Zeilen 25–36) — und
dreht das Ergebnis um:

| Größe | Wert |
|---|---|
| zulässige Buskapazität (I²C-Spezifikation) | 400 pF |
| Kapazitätsbelag Flachband/Zweidraht | 100 pF/m |
| **maximale Buslänge, 3 Teilnehmer** | **3,7 m** |
| maximale Leistungsleitung (Befund 4l) | 25,6 m |
| **Verhältnis** | **6,9 ×** |
| mit Bus-Extender (z. B. P82B715) | ~37 m |

Die schwächste Leitung entscheidet über den Aufstellort, nicht die stärkste. Analoge
Feuchtesensoren sind noch empfindlicher — über 2–3 m ungeschirmter Leitung ist die Messgröße vom
Störpegel nicht mehr zu trennen.

**Drei Wege, alle offen:**

1. **Elektronikschrank ans Rack** — kürzeste Leitung, aber der Schrank versorgt dann nur dieses
   eine Rack und der Skalierungsvorteil aus Befund 4a schrumpft.
2. **Bus-Extender im Schrank und je Modul** — hebt die Grenze auf ~37 m, kostet zwei Bausteine je
   Strang und eine Leiterplatte.
3. **Dezentraler Controller je Modul**, nur eine störfeste Verbindung (RS-485/CAN oder Ethernet)
   zum Schrank. Das ist genau die Bus-Vorbereitung aus `technik/prototyp-bauplan.md` §11 — die
   Schnittstelle sieht sie bereits vor, entschieden ist sie nicht.

**Damit ist die offene Frage „zentral gegen dezentral" (Abschnitt 6) keine Stilfrage mehr,
sondern eine Folge des Aufstellorts.** Welcher Weg der richtige ist, hängt an der vorhandenen
Hardware — die Bestandsaufnahme des Elektronikvorrats steht noch aus. Bis dahin **keine
Bauteilfestlegung**; die Zahl oben ist die Randbedingung, an der sich die spätere Wahl messen
lassen muss.

### p) Die Etagenzahl entscheidet sich zwischen 3 und 5 — darüber lohnt sie nicht

> **Ergänzt am 21.08.:** Diese Tabelle betrachtet nur Wachstum in der Höhe. Befund 4q zeigt,
> dass Breite und Tiefe die günstigeren Richtungen sind — die Höhenfrage bleibt trotzdem
> zuerst zu beantworten, weil sie das Budget für alles Weitere setzt.

Die Etagenzahl ist die einzige Größe am Rack, die sich nachträglich **nicht** ändern lässt.
Deshalb ist die Arbeitsmappe am 21.08. für jede Variante einmal vollständig durchgerechnet
worden, jeweils voll bestückt:

| Plätze | Rackhöhe | Ständerwerk | Kippwinkel voll | Oberste Etage | Pumpenreserve | € je m² |
|---|---|---|---|---|---|---|
| 3 | 1320 mm | 179 € | 20,9° frei stehend ✓ | ohne Tritt ✓ | 1,71 m | 3.226 € |
| 4 | 1720 mm | 226 € | 16,4° → Wand | ohne Tritt ✓ | 1,31 m | 3.095 € |
| 5 | 2120 mm | 272 € | 13,5° → Wand | **nur mit Tritt** | 0,91 m | 3.016 € |
| 6 | 2520 mm | 319 € | 11,4° → Wand | nur mit Tritt | 0,51 m | 2.963 € |
| 7 | 2920 mm | 366 € | 9,9° → Wand | nur mit Tritt | **0,11 m** | 2.926 € |
| 8 | 3320 mm | 412 € | 8,7° → Wand | nur mit Tritt | **−0,29 m ✗** | Pumpe reicht nicht |

**Der Skaleneffekt ist bei vier Plätzen praktisch abgeerntet.** Von einem auf vier *Module* sinken
die Kosten je m² um 44 %, von vier auf acht *Etagen* nur noch um 6,4 %. Jede Etage über der
vierten kauft man mit weniger Ertragsvorteil und mehr Nachteil ein:

- **Bei 5 Etagen** ist die oberste Ernte nur noch mit Tritt erreichbar — bei einem Arbeitsgang,
  der täglich stattfindet, ist das keine Kleinigkeit.
- **Bei 7 Etagen** bleiben von 3 m Pumpenförderhöhe 0,11 m für die Rohrreibung. Das reicht für
  6 m Schlauch; die Pumpe müsste getauscht werden.
- **Bei 8 Etagen** kommt das Wasser rechnerisch nicht mehr oben an.

Umgekehrt ist **3** die einzige Variante, die frei stehen darf (20,9°). Ab vier gehört das Rack
bei voller Bestückung an die Wand — das ist keine Sperre, aber eine Auflage, die vom Aufstellort
abhängt und nicht von der Konstruktion.

**Status: offen.** Die Entscheidung fällt im Gespräch mit Stiefvater und Konstrukteuren. Was
dort eingebracht werden sollte, ist nicht die Frage „wie hoch?", sondern diese drei:

1. Darf am Aufstellort in die Wand gebohrt werden? → entscheidet zwischen 3 und ≥ 4.
2. Welche Förderhöhe hat die Pumpe wirklich? → verschiebt die Obergrenze (siehe Befund 4l).
3. Werden die Ständerprofile ohnehin auf Länge geschnitten? → dann kostet die Höhe fast nichts
   außer Material, und 4 statt 3 sind 47 €.

Zur Vorsicht bei diesem Gespräch: `wirtschaft/ip-und-verhandlung.md` gilt unverändert. Die
Etagenzahl lässt sich klären, ohne die Modulschnittstelle offenzulegen — und die ist der
eigentliche Gegenstand.

### q) Das Rack wuchs bisher nur nach oben — das war eine unbemerkte Annahme

Bis zum 21.08. konnte die Arbeitsmappe das Rack nur in einer Richtung skalieren: Etagen
übereinander. Auf die Frage „warum eigentlich nicht auch in Breite und Tiefe, wie ein
Kallax-Regal?" gab es keine Zahl — die Form war nie ein Parameter, sondern eine stillschweigende
Festlegung.

**Die Mappe rechnet jetzt das Raster X × Y × Z** (`01-Eingaben` Abschnitt Q). Der Basisfall
1 × 1 × 4 reproduziert alle bisherigen Werte exakt; das Modell ist erweitert, nicht verändert.

**Bei gleicher Modulzahl gewinnt die kompakte Form**, genau wie bei einer Getränkedose:

| 8 Modulplätze | Stellfläche | Ständerwerk | Profil je Platz | Kippwinkel |
|---|---|---|---|---|
| 1×1×8 (Turm) | 0,283 m² | 412 € | 4,01 m | 8,7° ✗ |
| 2×1×4 | 0,549 m² | 406 € | 3,74 m | 17,5° |
| 2×2×2 (Würfel) | 1,008 m² | **329 €** | 3,75 m | **46,4°** ✓ |

**Aber „gleiche Modulzahl" ist die falsche Konstante.** Fest steht das *Höhenbudget* — Reichweite
(rund 2000 mm) und Pumpenförderhöhe. Wer es ausschöpft und dann in die Breite geht, gewinnt in
jeder Kennzahl gleichzeitig:

| bei 1720 mm Höhe | Plätze | Stellfläche | Ständerwerk | € je Platz | Module je m² | Kippwinkel |
|---|---|---|---|---|---|---|
| 1×1×4 | 4 | 0,283 m² | 226 € | 56,42 € | 14,1 | 16,4° |
| 2×1×4 | 8 | 0,549 m² | 406 € | 50,76 € | 14,6 | 17,5° |
| 2×2×4 | 16 | 1,008 m² | 552 € | **34,52 €** | **15,9** | 29,7° ✓ |
| 3×2×4 | 24 | 1,497 m² | 789 € | **32,86 €** | **16,0** | 30,0° ✓ |

Der Grund: Ständerprofil und Versorgungsstrang liegen beim 1 × 1-Rack auf einem einzigen 454 mm
breiten Modul, beim breiten Raster teilen sich viele Module dieselbe Struktur. Der scheinbare
Zielkonflikt Turm gegen Würfel entsteht nur, solange man Höhe verschenkt.

**Die Kontrollrechnung an der Dose bestätigt es von der anderen Seite:** Eine 0,33-l-Dose mit
minimalem Blechverbrauch hätte h = d = 7,5 cm und käme mit 264 cm² aus. Die reale Dose misst
6,6 × 11,5 cm und braucht **307 cm², also 16 % mehr Aluminium als das Materialoptimum.** Sie ist
absichtlich zu schlank, weil Regalplatz, Palettenpackung und die Hand teurer sind als das Metall.
Das Materialoptimum ist nicht das Praxisoptimum — hier so wenig wie dort.

**Ausbauregel, in dieser Reihenfolge:**

1. **Höhe ausreizen** bis Reichweite und Pumpe — mehr Etagen kosten fast nur Profil.
2. **In X wachsen.** 2×1×4 kostet 406 € gegen 452 € für zwei getrennte Racks — 46 € gespart
   und 16 cm² Stellfläche.
3. **Y = 2**, sobald das Rack frei im Raum stehen darf. Größter Einzelsprung: zwei Reihen teilen
   sich einen Versorgungsstrang und eine Ständerreihe — 2×2×2 kostet **329 €** gegen 474 € für
   zwei getrennte 2×1×2-Racks, also 145 € weniger bei gleicher Platzzahl. Das passt zusammen:
   Y = 2 *verlangt* freies Stehen, und das breite Raster *erlaubt* es (29,7° statt 16,4°).
4. **Erst dann ein zweites Rack.**

Mehr als zwei Reihen tief sperrt die Mappe: Module werden nach vorn gezogen, eine dritte Reihe
wäre ohne Bediengang nicht erreichbar.

### r) Was am Wachstum zuerst reißt, ist nicht das Regal

Das breite Raster verschiebt die Engpässe von der Mechanik in die Versorgung. Zwei Grenzen melden
sich sofort:

- **Das Reservoir.** Bei 16 Modulen fällt die Autonomie von 47 auf **5,9 Tage**, die Mappe meldet
  „zu klein". Der Hydraulikschrank muss mit der Modulzahl mitwachsen — er ist heute aus dem Bedarf
  *eines* Moduls abgeleitet.
- **Der Signalbus.** Befund 4o rechnet mit drei Busteilnehmern. Sechzehn Module an einem Strang
  sprengen die zulässige Buskapazität um ein Vielfaches. Damit ist der dezentrale Controller je
  Modul kaum noch eine Architekturwahl, sondern eine Folge des Rasters.

Beide gehören gerechnet, bevor eine Rasterform über 1 × 1 × 4 hinaus festgelegt wird. Die
Pumpenkennlinie (Volumenstrom bei N gleichzeitig öffnenden Ventilen) fehlt im Modell noch ganz.

### s) Die Gegenprobe hat ein zweites Mal geliefert — 8,5 % zu viel Profil *(behoben)*

Nachdem das Ständerwerk im CAD aus dem Raster neu erzeugt war, ließ sich die Profillänge zum
ersten Mal direkt am Volumenmodell nachmessen: **18,108 m** gegen **19,648 m** in der Mappe.

Zwei Ursachen, beide derselbe Denkfehler — die Formel beschrieb die *Hülle*, nicht die *Teile*:

1. Die Ständer waren über die volle Rackhöhe gerechnet. Sie stehen aber auf den Stellfüßen und
   beginnen erst bei 25 mm.
2. Die Traversenringe waren als äußerer Umfang `2 · (Breite + Tiefe)` angesetzt. Die Riegel laufen
   aber nur **zwischen** den Ständern — der Umfang zählt jede Ecke doppelt, 240 mm je Ring.

Korrigiert auf die tatsächliche Teilelänge. Ständerwerk 157 → **145 €**, Masse 34,8 → **32,0 kg**,
Startaufbau 640 → **628 €**. Kippwinkel 20,35 → 20,58° (das Rack ist oben leichter geworden).

Das ist derselbe Fehlertyp wie 4e, 4i und 4k: **eine Maßkette, die etwas nicht kannte.** Vier von
inzwischen fünf gefundenen Rechenfehlern sind erst aufgefallen, als die Geometrie danebenlag.

**Nebenbefund:** Dem CAD fehlten bis zum 21.08. die Etagenauflagen. Es hatte drei Traversenringe
(Boden, Basis, oben) für vier Etagen — die Module 2 bis 4 hätten in der Luft gehangen. Die Mappe
rechnete mit `Z+2` Ringen und lag damit richtig. Diesmal hat die Mappe das CAD korrigiert, nicht
umgekehrt.

### t) Das Modul wird schwerer, als es heute ist — die Auflage wird auf 44 kg bemessen

Bisher kannte das Modell nur die Ist-Masse eines Moduls: **16,7 kg**. Das ist die falsche Zahl für
eine Auflage, denn das Modul ist genau der Teil, der wachsen wird — Automatisierung, Klima- und
Bodenkontrolle, vielleicht ein eigenes Reservoir. Neues Blatt `14-Modulmasse` rechnet deshalb
Ausbaustufen statt eines Zustands:

| Szenario | Masse | Was dazukommt |
|---|---|---|
| S1 Ist-Zustand | 16,7 kg | Blech 10,5 · Trays 1,8 · Substrat 2,9 · Einbauten 1,5 |
| S2 + Teildämmung 2b | 19,9 kg | Liner Boden/Decke 2,4 · Schaumglas 0,8 |
| S3 + Automatisierung | 21,6 kg | Controller 0,25 · Sensorik 0,3 · Aktorik 1,2 |
| **S4 Vollausbau** | **29,5 kg** | Volldämmung statt 2b, Trays 65 mm, Substrat 40 mm |
| ~~V eigenes Reservoir am Modul~~ | ~~30,1 kg~~ | **verworfen, siehe Befund 4y** |

Mit einem Sicherheitsbeiwert von 1,25 auf die schwerste Stufe ergibt sich die **Auslegungslast von
36,8 kg je Modulplatz — das 2,2-fache der heutigen Masse.** Damit wird bemessen, nicht mit 16,7 kg.

Bemerkenswert an der Aufstellung: **Automatisierung ist statisch billig.** Controller, erweiterte
Sensorik und Zusatzaktorik zusammen wiegen 1,75 kg. Schwer wird das Modul nur durch Dämmung
(8,9 kg) und Wasser. Der Ausbau, den du planst, ist der leichte Teil.

Die Einbautenpauschale von 1,5 kg hat die Gegenprobe bestanden: einzeln aufgestellt kommen 1,18 kg
zusammen, die Pauschale liegt also auf der sicheren Seite. Alle Massen außer Blech und Substrat
sind Schätzwerte und gehören nach der Beschaffung nachgewogen — dann wird aus der Auslegungslast
eine gemessene Größe.

### u) Fachwerk statt Vollring *(entschieden 21.08.: Bauart 2 mit Flachband)*

Bisher trägt jedes Modul auf einem umlaufenden Ring aus 30 × 30 × 2 Vierkantrohr. Sechs Ringe
machen 11,3 der 18,1 m Profil aus. Der Vorschlag, die Zwischenstreben durch ein Fachwerk zu
ersetzen, ist in `15-Tragstruktur` durchgerechnet und als Umschalter in der Mappe hinterlegt
(`01-Eingaben` Zeile 151).

**Bauart 2:** Boden- und Kopfring bleiben. Die vier Etagenringe werden ersetzt durch je zwei
**Auflageschienen** — abgekantete Winkel 20 × 20 aus 1,5 mm Blech, die in Auszugsrichtung laufen.
Die Aussteifung übernehmen **Diagonalen** in den beiden Seitenebenen; in der Querrichtung ist die
Rückwand ohnehin schon die aussteifende Scheibe. Die Vorderseite bleibt frei — dort fahren die
Module heraus.

| Bauart | Rohr | Schienen | Diagonalen | Ständerwerk gesamt | Rack |
|---|---|---|---|---|---|
| 1 · Vollring | 18,11 m · 32,0 kg · 145 € | — | — | **32,0 kg · 145 €** | 226 € |
| 2 · Seil | 10,56 m · 18,7 kg · 84 € | 1,8 kg · 16 € | 0,3 kg · 30 € | **20,8 kg · 130 €** | 210 € |
| 2 · Flachband | 10,56 m · 18,7 kg · 84 € | 1,8 kg · 16 € | 2,0 kg · 18 € | **22,5 kg · 118 €** | 198 € |

**Der Nachweis geht auf.** Bei 43,8 kg Auslegungslast biegt sich eine Schiene um 0,74 mm gegen
0,98 mm zulässig (L/500), die Biegespannung liegt bei 85 N/mm² — Sicherheit 2,7 gegen die
Streckgrenze. Der Verband ist mit 3 % ausgelastet; er wird nicht von der Kraft bestimmt, sondern
von dem, was man vernünftig montieren kann.

**Ehrliches Ergebnis: die Masse sinkt um 30 %, die Kosten nur um 19 %** (27 € beim Flachband,
15 € beim Seil). Der Grund: Vierkantrohr ist mit 8 €/m billig, Spannschlösser und Beschläge sind
es nicht. Die Rechnung kippt in beide Richtungen — stellt die Firma Profilreste, wird Bauart 1
wieder günstiger; muss Profil gekauft werden und liegt Blech ohnehin herum, gewinnt Bauart 2
deutlicher. **Sie hängt an derselben offenen Frage wie Befund 4n.**

**Zwei Gewinne, die nicht in Euro stehen:** Die Schienen sitzen im Lochraster und machen die
Etagenhöhe in 25-mm-Schritten frei — bisher lag sie fest. Und das Modul läuft auf Schienen ein
statt auf einem Ring aufzuliegen; das ist dasselbe Prinzip wie bei den Trays und macht das
Einsetzen leichter.

**Entschieden: Bauart 2 mit Flachband.** Das Flachband entsteht aus derselben Blechtafel wie
alles andere, braucht keine Spannschlösser und muss nie nachgespannt werden. Seil ist eleganter,
aber jedes Spannschloss ist ein Teil, das jemand irgendwann nachziehen muss. Die Mappe rechnet
seitdem standardmäßig so.

**Zur Frage der Qualitätseinbuße:** Es gibt genau eine, und sie ist beherrschbar. Geschraubte
Verbindungen haben Spalte, und Spalte sind in der Lebensmittelproduktion der Ort, an dem sich
Biofilm hält. Hier fällt das nicht ins Gewicht, weil **die Nasszone im Modul liegt, nicht am
Rack**: Das Modul ist eine geschlossene Schale mit eigenem Ablauf, das Ständerwerk sieht Wasser
nur im Fallrohr. Die Schrauben sitzen außerhalb des Lebensmittelbereichs — sie sind eine
Reinigungsfrage, keine Hygienefrage. Damit ist der Zugewinn an Verstellbarkeit den Spalt wert.

### v) Kippen: nicht ab drei Modulen, sondern von Anfang an *(korrigiert Befund 4h)*

Der Kippwinkel von 20,6° in Befund 4h ist die statische Betrachtung: ab welcher Schräglage kippt
das Rack von selbst. Der Lastfall, der wirklich vorkommt, ist ein anderer — **jemand stützt sich
am Rack ab.**

Mit 500 N seitlich am oberen Rand, bei voller Bestückung mit der Auslegungslast:

| Raster | Grundriss | Masse | Kippmoment | rückstellend | Sicherheit |
|---|---|---|---|---|---|
| 1×1×3 | 514 × 550 | 155 kg | 642 Nm | 391 Nm | **0,61 ✗** |
| 1×1×4 | 514 × 550 | 204 kg | 842 Nm | 514 Nm | **0,61 ✗** |
| 2×1×4 | 998 × 550 | 399 kg | 842 Nm | 1.075 Nm | 1,28 ⚠ |
| 2×2×4 | 998 × 1010 | 769 kg | 842 Nm | 3.766 Nm | **4,47 ✓** |

**Das einspaltige Rack kippt bei etwa 320 N — rund 32 kg seitlichem Druck.** Das ist weniger, als
ein Mensch aufbringt, der sich anlehnt, und es gilt unabhängig von der Etagenzahl: Die drei
Etagen sind genauso betroffen wie die vier, weil Höhe und Masse gemeinsam abnehmen.

**Korrektur zu Befund 4h: Die Wandbefestigung ist keine Auflage ab drei Modulen, sondern von
Anfang an** — solange das Rack einspaltig ist. Die Wandlaschen sind gebaut, aber sie gehören in
die Aufbauanleitung als Pflicht, nicht als Empfehlung.

Und das ist das dritte unabhängige Argument für das breite Raster aus Befund 4q: Es macht das
Rack nicht nur billiger je Platz und flächeneffizienter, sondern löst als Einziges die
Kippfrage — bei 2 × 2 steht es mit Sicherheit 4,5 frei im Raum. **Genau das ist die Voraussetzung
für zwei Reihen.** Die drei Befunde stützen sich gegenseitig.

### w) Wo das Geld wirklich sitzt: nicht im Gerüst, sondern im Blech

Die Materialoptimierung am Ständerwerk bringt 27 €. Der Blick auf die ganze Kostenaufstellung
zeigt, wo mehr zu holen ist:

| Posten | Betrag | Anteil |
|---|---|---|
| **Blech gesamt** | **313 €** | **50 %** |
| davon Modulblech | 152 € | 24 % |
| davon Rack-Rückwand | 81 € | 13 % |
| davon Schrankblech | 80 € | 13 % |
| Ständerwerk (Profil) | 145 € | 23 % |
| GN-Behälter | 54 € | 9 % |
| Zentralelektronik | 60 € | 10 % |
| LED und Modulelektronik | 56 € | 9 % |

**Erste Konsequenz: Dünneres Blech spart nichts.** Die Mappe rechnet Blech mit 90 €/m², nicht je
Kilogramm. Von 1,0 auf 0,8 mm zu gehen senkt die Masse um 20 % und die Kosten um **null**. Blech
spart man über die *Fläche* oder über den *Preis* — nicht über die Dicke.

**Zweite Konsequenz:** die Rack-Rückwand — siehe Befund 4x, sie ist ganz entfallen.

Zusammen ergibt das **Rack 226 → 126 €** und Startaufbau **628 → 528 €**, also 100 € weniger
allein aus Konstruktion. Die größte einzelne Stellschraube bleibt trotzdem Befund 4n: Die
Blechbeschaffung entscheidet über 471 €, mehr als alle Konstruktionsoptimierungen zusammen.

### x) Die Rückwand war ein Überbleibsel — sie entfällt ganz

Auf die Frage, wofür die Rückwand eigentlich da ist, gibt es keine gute Antwort mehr. Sie stammt
aus dem Einzelgehäuse-Entwurf vom 18.08., wo das Gehäuse *selbst* die Klimahülle war. Seit dem
Architekturwechsel ist **das Modul die dichte Hülle**, nicht das Rack. Damit verliert die
Rückwand ihre Hauptaufgabe.

Was sie noch tat, lässt sich billiger haben:

| Aufgabe | Braucht die Rückwand? |
|---|---|
| Klima halten | **nein** — jedes Modul ist eine geschlossene Schale mit eigenem Ablauf |
| Licht halten | **nein** — die Frontklappe des Moduls dichtet, nicht das Rack |
| Versorgungsstrang abdecken | **nein** — der Kabelkanal ist ein eigenes Gehäuse, Vorlauf- und Fallrohr sind blanke Edelstahlrohre |
| Querrichtung aussteifen | **ja** — dafür genügen zwei Diagonalen in der Rückebene, 9 € statt 81 € |

**Die offene Rückseite ist sogar die bessere Bauweise.** Glatte Edelstahlrohre frei im Raum sind
leichter zu reinigen und auf Leckagen zu prüfen als ein Blech, hinter dem sich Spalte und
Feuchtenester bilden. In der Lebensmittelproduktion ist offen fast immer sauberer als verkleidet.

Die Mappe kennt drei Bauarten (`01-Eingaben` Zeile 163) und rechnet seit dem 21.08. mit der
dritten:

| Rückwandbauart | Blech | Kosten | Diagonalen |
|---|---|---|---|
| 1 · vollflächig | 0,898 m² | 81 € | 4 |
| 2 · nur Kanalabdeckung 200 mm | 0,396 m² | 36 € | 6 |
| **3 · offen** | **0 m²** | **0 €** | **6** |

**Gesamtwirkung von 4u und 4x zusammen: Rack 226 → 126 €, Ständerwerk 32,0 → 23,5 kg,
Startaufbau 628 → 528 €.** Der Kippwinkel steigt dabei von 20,6° auf 22,5°, weil die
entfallende Masse oben saß.

### y) Das Reservoir gehört nicht ans Modul

In der Massenaufstellung (Befund 4t) stand ein eigenes Reservoir je Modul als schwerster
Ausbauposten: 5,6 kg an einem Bauteil, das zum Warten herausgezogen werden muss. **Verworfen.**

Der bessere Ort ist zwischen Modulstrang und Hydraulikschrank, mit eigener Befestigung neben dem
Schrank. Drei Gründe:

- **Wartung.** Nachfüllen, Reinigen, Entkalken und Nährlösung ansetzen passieren an einer Stelle,
  ohne ein Modul zu ziehen oder den Schrank zu öffnen.
- **Gewicht.** Die 5,6 kg wandern aus dem gezogenen Bauteil in einen stehenden Behälter auf
  niedriger Höhe. Die Auslegungslast je Modulplatz sinkt von 43,8 auf **36,8 kg**, und der
  Schwerpunkt des Racks bleibt unten.
- **Größe.** Bisher war das Reservoirvolumen an das Schrankmaß gekoppelt — eine unglückliche
  Abhängigkeit, die in Befund 4r schon aufgefallen war (bei 16 Modulen fiel die Autonomie auf
  5,9 Tage). Ein separater Behälter ist frei dimensionierbar. Mit 20 l reicht er **175 Tage**
  bei einem Modul und immer noch 11 Tage bei sechzehn.

Die Mappe schaltet zwischen beiden Bauarten um (`01-Eingaben` Zeile 165) und rechnet mit der
separaten. Der Hydraulikschrank behält Pumpe, Ventile und Dosierung und könnte kleiner werden —
das ist noch nicht nachgezogen.

**Zurückgestellt: eigenständige Wassermodule.** Die Idee, die Wasserversorgung selbst modular zu
bauen — mehrere Behälter, Mischung, Nährlösungskreise je Strang — ist notiert und gehört in eine
spätere Ausbaustufe. Jetzt gilt: ein Behälter, separat befestigt.

### z) Der Verband gehört nach außen — und damit ist er abnehmbar

Die erste Ausführung legte die Diagonalen in die Ständerebene *innen*. Dort teilen sie sich den
Bauraum mit den Auflageschienen: beide bei x = 30 … 31,5 mm. Eine echte Kollision, im CAD sichtbar.

**Behoben, indem der Verband außen auf die Ständer wandert** — links bei x = −1,5 … 0, rechts bei
514 … 515,5, hinten bei y = 550 … 551,5. Das ist mehr als eine Ausweichlösung, es ist die bessere
Bauweise:

- **Kollisionsfrei.** Schienen laufen von x = 30 bis 484, der Verband außerhalb davon. Geprüft.
- **Von außen lösbar.** Vier Schrauben je Band ins Lochraster, keine Demontage im Innenraum.
  Der Verband kann für Reinigung, Schrankmontage oder Nachrüstung komplett ab.
- **Innen bleibt frei.** Nichts kreuzt den Raum, in dem die Module laufen und geputzt wird.

Das Rack wächst dadurch auf **517 × 551,5 mm** — 0,6 % mehr Stellfläche, in `15-Tragstruktur`
Zeilen 57–59 ausgewiesen. Die Geometrie rechnet weiter mit den Ständermaßen; der Verband ist ein
Anbauteil, kein Maßkettenglied.

**Konstruktionsregel daraus:** Alles, was nur aussteift, gehört außen und geschraubt. Alles, was
trägt, gehört innen und darf fest sein.

### aa) Das Modul lebt ab jetzt in einer eigenen Datei

`MikrogruenRack.FCStd` hatte 165 Objekte, davon rund 90 im Modul. Jede Rackänderung rechnete die
komplette Modulgeometrie mit — der Grund, warum einfache Operationen ins Timeout liefen.

**Aufgeteilt:**

| Datei | Inhalt | Objekte |
|---|---|---|
| `cad/MikrogruenModul.FCStd` | Modul und GN-Behälter mit eigener Parametertabelle, 349 Ausdrücke | 93 |
| `cad/MikrogruenRack.FCStd` | Ständerwerk, Verband, Versorgungsstrang, Schränke, **Modulhülle als Platzhalter** | 74 |

Der Platzhalter ist ein einzelner Quader auf `mod_a_b × mod_a_t × mod_a_h`. Er hält den Bauraum
frei, prüft Kollisionen und kostet nichts. Das Rastermakro nimmt ihn automatisch, wenn kein
`Modul` im Dokument liegt — dieselbe Datei funktioniert also weiter, wenn das fertige Modul
später wieder eingehängt wird.

**Die Parametertabelle ist mitkopiert, nicht neu geschrieben.** Beide Dateien tragen dieselben
Aliasse; geometriebildende Änderungen müssen von Hand in beide gezogen werden. Das ist derselbe
Bruch wie zwischen CAD und Arbeitsmappe und gehört genauso behandelt: **eine Quelle ändern, die
andere nachziehen, danach gegenrechnen.**

### ab) Die Arbeitsmappe speist das CAD jetzt direkt

Die Doppelpflege zweier Parametertabellen ist aufgelöst. Neues Blatt **`16-CAD-Parameter`** in der
Arbeitsmappe listet jeden CAD-Alias mit Quellblatt, Zelle, Wert und Bedeutung — derzeit **43
Eingangsgrößen**. Das Makro `MikrogruenParameter_Sync` liest die `.xlsx` **direkt** (als ZIP mit
XML, ohne Zusatzbibliothek) und schreibt die Werte in jedes offene CAD-Dokument mit einem
Tabellenobjekt `Parameter`.

- **Nur Eingangsgrößen.** Abgeleitete Maße bleiben im CAD Ausdrücke und werden nie überschrieben.
- **Beide Dateien auf einmal.** Rack und Modul werden im selben Lauf abgeglichen.
- **Es meldet, was es tut.** Jede Änderung mit altem und neuem Wert, fehlende Aliasse, ungültige
  Objekte nach dem Recompute.
- **Neuer Parameter = neue Zeile im Blatt 16.** Kein Makro anfassen.

Erster Lauf: 43 von 43 in beiden Dateien identisch. Ein absichtlich verstellter Wert wurde erkannt,
nur im betroffenen Dokument korrigiert, und die abgeleiteten Maße zogen nach.

Damit gibt es die alte Bruchstelle „Arbeitsmappe ↔ CAD von Hand nachziehen" nicht mehr. Was bleibt:
**Topologie fließt nicht mit.** Ändert sich die Zahl der Teile, muss zusätzlich das Rastermakro
laufen.

### ac) Das Modul rollt, es schleift nicht

Statt auf den Winkelschienen zu gleiten, läuft das Modul auf **Laufrollen, die am Rack sitzen** —
drei je Seite und Etage, Ø 25, im Lochraster verschraubt. Das Modul selbst bekommt nur eine
gekantete **Laufschiene** unter der Schale, 20 × 8 mm aus 1,5 mm: keine Löcher, keine Beschläge,
kein Teil, das am Austauschbauteil verschleißt (R-5.1).

| | Gleiten | Rollen |
|---|---|---|
| Auszugskraft bei 36,8 kg Auslegungslast | ~108 N | **~11 N** |
| Verschleiß | Edelstahl auf Edelstahl, fressgefährdet | Kunststoffrolle, austauschbar |
| Teile am Modul | Auflagefläche der Schale | eine gekantete Schiene |

**Der Preis steht in der Höhe.** Eine Ø-25-Rolle braucht 25 mm Bauraum unter dem Modul. Die
Etagenteilung wächst deshalb von 400 auf **425 mm** und das Rack von 1720 auf **1820 mm** — immer
noch unter der Reichweitengrenze von 2000 mm, aber die fünfte Etage ist damit endgültig aus dem
Rennen.

**Offen und ehrlich benannt: der Auszugsstopp fehlt.** Ein Kipphaken am Modulende war modelliert
und ist wieder entfernt worden — er liefe in die Rollenbahn. Das Modul ist bis rund 47 % Auszug
stabil, danach muss es gehalten werden. Zwei Lösungswege für später: Teleskopauszug, oder ein
Haken außerhalb der Rollenspur. Steht als R-8.3 in den neuen Konstruktionskriterien.

### ad) Es gibt jetzt Konstruktionskriterien

`technik/konstruktionskriterien.md` — **Regeln, keine Maße.** Acht Abschnitte mit nummerierten,
überprüfbaren Regeln: Zonentrennung nach DIN EN 1672-2, Reinigbarkeit, Blech und Fertigung,
Tragen und Aussteifen, Montage, Modularität, Parametrik, Sicherheit.

Der eigentliche Zweck steht in Abschnitt 9: **eine Liste, wo der aktuelle Entwurf gegen die
eigenen Regeln verstößt.** Derzeit sieben Punkte, darunter die scharfen Modulinnenecken (R-2.1),
das mit 2° möglicherweise zu flache Bodengefälle (R-2.3) und der fehlende Auszugsstopp (R-8.3).

Die Nummerierung ist Absicht: „verstößt gegen R-3.2" ist überprüfbar, „ist unsauber konstruiert"
nicht.

### ae) Der Innenboden ist jetzt eine herausnehmbare Wanne

R-2.1 verlangt Radien an jeder Innenecke im Spritzbereich. Beim Umsetzen zeigte sich, dass die
bessere Antwort nicht „Radien an den Boden anmodellieren" heißt, sondern **den Boden zu einem
eigenen Bauteil zu machen**.

Vorher: eine ebene Blechplatte, doppelt geneigt, an die Modulwände geschweißt. Die Naht liegt
genau dort, wo das Wasser steht — die schlechteste denkbare Stelle (R-2.4).

Jetzt: eine **gekantete Wanne mit umlaufender Aufkantung**, die lose im Modul liegt.

| | vorher | jetzt |
|---|---|---|
| Bauteil | angeschweißte Platte | **herausnehmbare Wanne** |
| Innenecken | scharf, 90° | **r = 4 mm gekantet** |
| Naht an der Wasserlinie | ja, umlaufend | **keine** |
| Reinigung | im Modul, über Kopf | Wanne herausnehmen, ausspülen |
| Blech je Modul | 0,1875 m² | 0,2051 m² (+3,4 €) |

**Das erfüllt drei Regeln auf einmal:** R-2.1 (Radien), R-2.4 (keine Spalte im Spritzbereich —
es gibt dort jetzt gar keine Verbindung mehr) und R-2.6 (ohne Werkzeug demontierbar).

**Der Ablauf ist dabei umgezogen.** Er saß bei x = 396 mm, der Tiefpunkt der Wanne liegt aber bei
x = 445. Wasser hätte 0,8 mm tief in der Ecke gestanden — genau der Fall, den R-2.2 verbietet.
Neu: `ablauf_x = mod_a_b − wand_ist − ablauf_d/2 − 4 mm` = **433 mm**, Mittenhöhe an der
Wannenoberkante ausgerichtet. Fallrohr und Gegenstück im Rack sind mitgewandert.

**Und die Modulschale hat Radien bekommen:** senkrechte Innenecken r = 6 mm, außen r = 7 mm
(Innenradius plus Blechstärke, wie bei einem gekanteten Blechkörper).

Zwei Dinge, die dabei aufgefallen sind und im Register stehen:

- **Die Aufkantung ist auf 10 mm begrenzt**, nicht auf die ursprünglich geplanten 25 mm. Grund:
  Die Wanne ist als Ganzes geneigt, ihre hohe Ecke liegt 23 mm über der tiefen. Mit 25 mm
  Aufkantung hätte sie die Trays berührt. Die saubere Lösung wäre eine Wanne mit **waagerechtem
  Rand und trapezförmigen Wänden** — steht als Idee I-23 im Register.
- **Part::Fillet nimmt keine Ausdrücke.** Der Radius steckt in einer Kantenliste. Deshalb gibt es
  jetzt ein drittes Makro `MikrogruenModul_Radien`, das die Radien aus dem Parameterblatt neu
  setzt — Radien verhalten sich wie Topologie, nicht wie Maße (R-7.4).

CAD und Arbeitsmappe stimmen auf 1,9 % überein, alle 50 Parameter in beiden Dateien identisch.

> **Hinweis zu den Befunden 4af–4ai:** Die Originale wurden am 23.08. durch eine
> Überschreib-Kollision zwischen parallel arbeitenden Instanzen zerstört und sind hier aus den
> Registereinträgen (P-21, P-12/13, P-06, P-38–P-42, I-28–I-31) und der
> Erledigt-Liste in `werkzeuge/schicht-auftraege.md` **rekonstruiert** — Hergang und Regeln
> dagegen: `werkzeuge/arbeitsteilung-fehlversuche.md`, F-04. Die Kerndaten sind vollständig
> erhalten; verloren sind die ausformulierten Quellenlisten (Links) der Original-Befunde.

### af) Laufrollen: Herstellernachweis erbracht *(Schichtdienst A-01, 22.08. · rekonstruiert 23.08.)*

Die Marktrecherche zu P-21 (Ø 25, ~90 N je Rolle, Feucht-/Lebensmittelumgebung) liefert zwei
tragfähige Kandidatenfamilien und einen begründeten Ausschluss:

| Kandidat | Kernwerte | Preis |
|---|---|---|
| **Ganter GN 753.1-25** | POM-Lauffläche, Kugellager, **600 N radial = 6,7× Anforderung** | 3,45 €/St (Bohrungsvariante), lagernd |
| **KIPP K2371 / norelem 95056/57** | POM auf Edelstahl-Kugellager, Edelstahl-Bolzen, bis 105 °C — **Feuchtraum-Favorit** | ab 9,47 €/St |
| igus xiros | vollpolymer | **verworfen: 84 N < 90 N** |

Rollenkosten Startaufbau (24 St): **≈ 83–297 €** je nach Familie — **in die Arbeitsmappe
nachzuziehen** (skaliert je Etage). Offen: Die Traglasttabelle der KIPP/norelem-Größen war
fernab nicht zugänglich (dynamische Shopseiten) — braucht eine Browser-Session oder den
Katalog. Fortschreibung und nächste Schritte: `projekt/03-probleme.md`, P-21.

### ag) Pumpen: die 3-m-Annahme ist am Markt bequem erfüllbar *(Schichtdienst A-02, 22.08. · rekonstruiert 23.08.)*

Drei Kandidaten mit belegten Kennlinien: **Sicce Syncra Silent 3.5** (3,7 m Förderhöhe, sehr
leise, 129,95 €), **EHEIM compactON 5000** (3,6 m, Leistungsdiagramm beim Hersteller),
**SHURflo Aqua King II 3.0** (Membranpumpe, 12 V, 2,0 bar Abschaltdruck, Zahlen-Kennlinie,
Trinkwasser-Materialien, ~126 €).

**Der eigentliche Befund:** Nicht die Förderhöhe entscheidet, sondern die **Betriebsart** —
getakteter Sprühzyklus verlangt Druckreserve an den Düsen (nur die Membranpumpe hat sie),
Dauerumwälzung spricht für die leisen Kreiselpumpen. Kennlinienpunkte ausdrücklich **in Blatt
12 der Arbeitsmappe nachzuziehen**; erst dann ist der Gleichzeitigkeitsfaktor (P-13)
modellierbar. Fortschreibung: P-12, P-13.

### ah) Bodengefälle: es gibt keinen Abrisswinkel — der Hebel ist die Ebenheit *(Schichtdienst A-03, 23.08. · rekonstruiert 23.08.)*

Die Rechen- und Literaturprüfung zu P-06 hat die Ausgangsannahme **widerlegt** statt bestätigt:

- **Einen „Abrisswinkel" gibt es nicht.** Resttropfen unter einer Mindestgröße haften wegen der
  Kontaktwinkelhysterese bei **jeder** Neigung — gemessen bis 90° Kippung. Was sie entfernt, ist
  Verdunstung (daraus: I-28 Lüfternachlauf).
- **Die tatsächliche Fallinie beträgt 2,24°**, nicht 2° (Resultierende aus 2° längs / 1° quer).
- **Die 3°-Empfehlung ist in keinem Regelwerk belegbar** — EHEDG Doc 8 fordert Gefälle ohne
  Winkel, die USDA nennt 1,19° für Wege bis 1,8 m. **Einziger Wert unter Norm-Minimum ist die
  Querneigung 1,0°.**
- **Der stärkere Hebel ist die Fertigungs- und Aufstellgenauigkeit:** nötig wären ≤ 0,5–0,62 mm
  auf 100 mm; DIN EN ISO 13920 erlaubt ohne besondere Angabe 2–5,5 mm (daraus: P-38).

**Empfehlung:** 2° längs halten, **quer 1,0° → 1,5°** (+3,9 mm Eckhöhe statt +11,5 mm bei 3°;
mehr Neigung erst mit I-23-Wannenform). Alle Neigungs- und Prüfgrößen **in die Arbeitsmappe
nachzuziehen**, nichts geändert. Entscheidender nächster Schritt: **Abflussversuch am
Blechrest** (200 ml bei 2°/1,5° und 3°/1,5°, zehn Minuten). Folge-IDs: P-38, I-28, I-29;
fortgeschrieben: P-06, P-09, P-22, P-33, I-23.

### ai) Saatgut: Einkaufskorb steht — drei Funde berühren den Sortenplan *(Schichtdienst A-04, 23.08. · rekonstruiert 23.08.)*

Der Korb für alle fünf Sorten liegt bei **27–60 € Ware plus 12–24 € Versand** über drei bis
vier Shops — unkritisch fürs Budget (Schritt 5 < 100 €), aber versandgetrieben: **in einem
Rutsch mit dem Substrat bestellen.** Drei Funde mit Folgen:

1. **„Rucola" sind zwei Arten:** *Eruca sativa* (400 Korn/g) gegen *Diplotaxis tenuifolia*
   (3.200 Korn/g) — rund zwanzigfacher Preis je Tray, deutlich andere Schärfe. Die Sortenwahl
   muss die Art benennen.
2. **Hobbyportionen sind die falsche Gebindegröße:** Bronzefenchel als 50-Korn-Portion ergäbe
   **80–115 € Saatgut je Tray** gegen 0,54–0,80 € bei Bulk-Ware; Bronzefenchel und Micro-Shiso
   sind als Bio-Bulk praktisch nicht erhältlich (daraus: P-40, blockierend für die Bestellung).
3. **Micro-Shiso braucht laut Anbietern 19–27 statt 12–16 Tage** — die langsamste Sorte
   bestimmt den Chargenstart (daraus: P-41).

Rechtlich geklärt: Der **PA-Sperrpunkt Borretsch ist aufgelöst** — ein eigener Höchstgehalt für
Borretschblätter existiert (VO (EU) 2020/2040, heute VO (EU) 2023/915; Zahlenwert bewusst nicht
in den Dokumenten, vor Verwendung in geltender Fassung nachschlagen), offen bleibt der Nachweis
an der eigenen Ware (P-42, P-G14). Und: **Microgreens im Substrat sind rechtlich keine
Sprossen** (ESSA-Leitlinie) — kein Sprossenrecht, aber Pflicht zu ungebeiztem Saatgut.
Mengen- und Preisgrößen **in die Arbeitsmappe nachzuziehen** (P-39: Aussaatstärken streuen um
Faktor 2–3). Neue IDs aus diesem Lauf: P-39–P-42, I-30, I-31. Entscheidungen für William:
Rucola-Art, Bronzefenchel gegen grünen Fenchel, Borretsch anbauen oder streichen.

---

## 5. Nächste Schritte

1. **Ausbaustufe und Modulzahl entscheiden** (Befund 4a) — bestimmt alles Weitere
2. **Modulaußenschale im CAD** als Blechkörper auf `mod_a_*` referenziert; danach
   **Frontklappe im Detail** — Scharniere und Verschluss ausdetaillieren (offener Punkt aus
   der CAD-Übergabe vom 22.08., bisher nur in deren Statuszeile — Audit-Befund B1a)
3. **Auflageschienen und Liner-Befestigungspunkte** — müssen jetzt entstehen, nachträglich teuer
4. **GN-Behälter als eigenes Bauteil** mit Bördelrand und Rücksprung, instanziiert
5. **Anbau-Beschaffung auslösen** — Saatgut (inkl. wildem Rucola, *Diplotaxis tenuifolia*),
   Substrat, GN-Blanks. Hängt an keiner Zusage, unter 100 €
6. **Bestandsaufnahme Elektronikvorrat** — was liegt zuhause (Raspberry Pi, Arduino,
   Bauteilmagazin, Steckbretter)? Geht der Steuerungsplanung und jeder Beschaffungsliste
   **voraus**; ohne sie wird gekauft, was schon da ist
7. **Firmware V1 am Steckbrett** — Timer, Logging alle 15 min; abendstundentauglich. Setzt 6 voraus
8. **Erste Charge im Provisorium** — misst Düsendurchsatz, Wasserbedarf, Ertragsdichte
9. **Erstberatung zum Rechtethema** — vor jeder Übergabe von Unterlagen
10. **Abwicklungen und DXF ableiten**
11. **Firmengespräch** — mit laufender Anlage, Fotos und Logdaten im Rücken

Schritte 5–8 laufen unabhängig von 2–4 und blockieren nichts. Wer nur am CAD sitzt, wartet.

---

## 5a. Termine, die von außen kommen

Alles andere in diesem Vorhaben ist meilensteingetrieben (Modus A). Diese Daten nicht — sie
stehen fest, unabhängig davon, wie weit der Prototyp ist. Herleitung und Bewertung in
`wirtschaft/finanzierung-und-wettbewerbe.md`.

| Wann | Was | Wenn versäumt |
|---|---|---|
| **sofort** | IHK anschreiben: Anrechnungszeiten Weiterbildungsstipendium bei Ausbildungsbeginn mit 24 | Anspruch ungeklärt, Antrag später riskant |
| **sofort** | Nebentätigkeit und Werkstattnutzung mit dem Betrieb klären | betrifft P-28, je früher desto besser |
| **sofort** | erste bezahlte Facharbeit akquirieren | Rang 1 der Finanzierungsliste, kein Wettbewerb nötig |
| **Oktober 2026** | Registrierung BayStartUP Nordbayern, Wettbewerbsjahr 2027 | ein Jahr Verzug |
| **Januar 2027** | Frist Phase 1 BayStartUP | Runde verpasst |
| **bis 30.06.2027** | Ideenskizze Bio-Gründer, sechs Seiten | Runde verpasst |

**Der Grundsatz aus dem Finanzierungsdokument gilt:** erst der Prototyp, dann die Bewerbungen.
Eine Bewerbung ohne Versuchsergebnisse verbraucht die Gelegenheit, statt sie zu nutzen — und
alle diese Wettbewerbe laufen jährlich. Die einzigen Punkte ohne Aufschub sind die drei
„sofort"-Zeilen, und keiner davon kostet Geld.

---

## 6. Offene Fragen

### Entscheidungen

- [x] **Modulzahl für den ersten Bau: 1 Modul** (Befund 4a, entschieden 21.08.) — 528 €,
      rund 472 € Budgetluft. Das zweite Modul nach der ersten Ernte
- [ ] **Ausbaustufe** — Vorschlag unverändert: Stufe 1 bauen, Nachrüstung nach 2b erst mit Logdaten
- [x] **Rasterfelder: alle sechs besäen** (Befund 4b, entschieden 21.08.) — dafür in der ersten
      Charge höchstens zwei unerprobte Sorten
- [ ] **Etagenplätze im Ständerwerk** (Befund 4p) — offen, wird im Firmengespräch geklärt.
      Entscheidungsgrundlage steht, drei Rückfragen dort sind vorbereitet
- [ ] **Blechbeschaffung** (Befund 4n) — offen, aber modelliert: drei Szenarien, 436 € Spanne.
      Eine Zahl aus dem Firmengespräch genügt
- [ ] Steuerungsarchitektur zentral gegen dezentral — **hängt jetzt an Befund 4o**: bei zentralem
      Aufbau darf der Elektronikschrank nur 3,7 m weg stehen, sonst Bus-Extender oder ein
      Controller je Modul. Entscheidung erst nach der Bestandsaufnahme des Elektronikvorrats
- [x] **Speicherort des FreeCAD-Modells** (erledigt 21.08.) — liegt jetzt neben den Dokumenten
      unter `Desktop\Claude\mikrogruen\cad\`
- [ ] Sortenliste für die erste Charge — Voraussetzung für die Saatgutbestellung.
      **Konkretisiert 23.08. (Befund 4ai):** drei kleine Entscheidungen — Rucola-Art,
      Bronzefenchel gegen grünen Fenchel, Borretsch anbauen oder streichen (P-40, P-42)
- [ ] **Querneigung 1,0° → 1,5°** (Befund 4ah) — per Abflussversuch am Blechrest entscheiden,
      danach in der Arbeitsmappe nachziehen (P-06, P-38)
- [ ] Substrat auswählen — bestimmt das Lochbild der Trayperforation
- [ ] **Hydraulikschrank neu dimensionieren** — er war aus dem Reservoirbedarf abgeleitet, der jetzt
      draußen sitzt. Er kann kleiner werden (Befund 4y)
- [ ] **Zurückgestellt: eigenständige Wassermodule** — modulare Wasserversorgung mit mehreren
      Behältern und Nährlösungskreisen. Später, nicht jetzt (Befund 4y)

### Wartet auf Information

- [ ] Reale Maschinenstundensätze der Firma — fehlen in der Kostenrechnung
- [ ] Fertigungsvorlauf in Wochen — erst nach dem Firmengespräch bekannt
- [ ] λ-Wert und Bezugsquelle des Dämmstoffs (Schaumglas) — der angesetzte Wert 0,04 W/(m·K) ist
      eine Annahme

### Messungen (Details in `technik/prototyp-bauplan.md`, Abschnitt 13)

- [ ] Effektiver Düsendurchsatz messen, Modellparameter ersetzen
- [ ] Kalibrierkurve der kapazitiven Feuchtesensoren
- [ ] Ertragsdichte je Sorte statt eines Sammelwerts (aktuell 0,22 g/cm² für alle)

---

## 7. Änderungsprotokoll

| Datum | Was |
|---|---|
| 24.08.2026 | **Chat-Titel-Zuordnung im Instanzen-Verzeichnis** *(Williams Auftrag, Lehre aus dem „Büro"-Problem des Nachbarprojekts)*: `werkzeuge/instanzen-und-zugriffe.md` §3a hat jetzt die Spalte **Chat-/Aufgabenname in der Oberfläche** mit drei Verlässlichkeitsstufen — *selbst geprüft* (nur geplante Aufgaben: Namen sind über die Aufgaben-Verwaltung auslesbar; „Schichtdienst Mikrogrün" und „Fristen-Wiedervorlage" hier geprüft), *von William bestätigt* (Chats — nur er kann das, `[WERK] Werkstatt` seit 23.08.), *unbestätigt* (alles Übrige, ausdrücklich als solches markiert: `[LEIT] Leitstand`). Neue Pflicht in der Vorstellungs-Konvention: Die Zuordnung wird **beim Anlegen** einer Instanz einmal erfragt und mit Datum eingetragen, nicht später aus der Erinnerung; eine fertige Frage zum Einfügen steht dort. **Grund:** Eine Instanz kann ihren eigenen Chat-Titel nicht sehen (Familie F-02/E-13). |
| 24.08.2026 | **Befund zum Postboten an claude-optimierung** *(direkt in deren Ordner, bewusst nicht über den Postboten — der Befund betrifft den Träger selbst)*: Drei Punkte, einer mit Verlustrisiko — der Postbote **leert die Quelle**, und wenn zwischen „aus dem Ausgang entfernt" und „im Eingang angekommen" etwas schiefgeht, ist die Nachricht weg, ohne dass es jemand merkt („kein Klingeln"). Empfehlung: erst ins Ziel schreiben und den Erfolg prüfen, dann leeren (dieselbe Reihenfolgen-Frage wie F-03 und E-22), und statt zu leeren als „zugestellt" archivieren, damit der Absender einen Beleg behält. Dazu: F-06 gilt auch für den Postboten (Zuruf erreicht ihn nicht, Abräumen mitplanen), und die Zustellung hängt jetzt an Williams laufendem Rechner — bis zu 30 Minuten Verzug, von innen nicht sichtbar; Vorschlag: eine mitlesbare Zeile „zuletzt gelaufen · N zugestellt · M im Ausgang". |
| 24.08.2026 | **Poststelle läuft jetzt über einen Postboten** *(Umbau des Nachbarprojekts, uns per Postfach angesagt)*: Eine lokale Windows-Aufgabe holt alle 30 Minuten ab und liefert aus — **kein Direktzugriff auf den Poststellen-Ordner mehr nötig**. Unsere Seite angelegt: `werkzeuge/postfach/an-poststelle.md` als Postausgang (Nachrichtenkopf jetzt mit Zieladresse `von mg/<name> an <projekt>/<name>`); Eingang unverändert. `werkzeuge/instanzen-und-zugriffe.md` §3 nachgezogen. Zwei Beobachtungen zurückgemeldet: F-06 gilt auch für den Postboten, und die Zustellung hängt jetzt an Williams laufendem Rechner (bis 30 Minuten Verzug). Dazu die **Namens-Map** beantwortet — mit dem Kern, dass eine Instanz ihren **eigenen Chat-Titel nicht sehen kann** (Familie E-13/E-14): Diese Spalte kann nur William füllen, Aufgaben-Namen geplanter Läufe sind dagegen von innen auslesbar. |
| 24.08.2026 | **Abgleich der Startpaket-Übergabe** *(Bitte Williams, überbracht vom Besprechungsraum des Nachbarprojekts)*: Mikrogrüns `werkzeuge/`-Doku und Audit-Bericht gegen die dortigen Erkenntnisse und die Werkzeug-Checkliste gehalten. Befund — der Chrome-Fund war ein Systemfehler, kein Einzelfall: Übergeben wurden **Erkenntnisse und Methoden, nicht das Inventar**; der Ist-Befund des Audits (was im Konto überhaupt existiert: Chrome, Design, Blender, Computernutzung, iOS-App, Claude Code, Figma) ist nie mitgewandert, und die von mir angelegte Werkzeug-Checkliste ist ein Bau-Protokoll, keine Bestandsliste. Dazu acht nicht übergequerte Erkenntnisse (F-02 „wo läuft X", F-06, Gegenprobe zweier Darstellungen = Befund 4k, Standby als Ausfallursache, das komplette MCP-Einrichtungsrezept aus `werkzeuge/freecad-mcp-setup.md`, Rollen-Kürzel, Instructions-Referenzkopie, Zugriffs-Matrix) und ein Registerfund dort (E-23 doppelt vergeben — F-04 in klein). Ergebnis per Poststelle an `opt/leitstand`. Nebenentscheidung: Der Skill `chat-uebergabe` **bleibt bewusst mikrogrün-spezifisch** — seine Pfade sind nicht Beiwerk, sondern Inhalt; die allgemeine Form lebt als Methodenkapitel im Nachbarprojekt. |
| 23.08.2026 | **Poststelle angeschlossen** *(projektübergreifender Briefkasten, `C:\Users\Arbeit\Desktop\Claude\poststelle\` — angelegt vom Nachbarprojekt claude-optimierung, gehört keinem Projekt)*: Freigabe erhalten, Steckbrief `mg/werkstatt` im dortigen Adressbuch eingetragen. Erste Post beantwortet — `opt/leitstand` bat um eine vollständige Bestandsaufnahme der **Schichtarbeit**; geliefert wurden Aufbau (Warteschlangen-Datei + geplante Cloud-Aufgabe), Metadaten, der wörtliche gespeicherte Prompt, Abhängigkeiten und fünf Fallstricke (F-05, F-06, Befund-vor-Register-Reihenfolge, Zwischensicherung statt Deckel, gemeinsames Kontingent beider Projekte). Dabei zwei Widersprüche in unserer eigenen Fassung gefunden und dem Leitstand gemeldet: Prompt-Punkt 9 verweist noch auf I-30 statt I-32, und der Kopf von `werkzeuge/schicht-auftraege.md` nennt weiter das aufgehobene Auftragslimit. `werkzeuge/instanzen-und-zugriffe.md` um die Poststelle als vierten Kanal und die Zwei-Ebenen-Regel ergänzt (projektintern → `werkzeuge/postfach/`, projektübergreifend → Poststelle). |
| 23.08.2026 | **Papierkorb eingeführt — Audit-Vorschlag 26b zur Hälfte erledigt.** Claude kann auf dem Rechner verschieben, aber nicht löschen; deshalb sammelt der neue Ordner `_papierkorb/` im Spiegel alles Aussortierte an einer Stelle (Regeln und Herkunftstabelle: `_papierkorb/00-LIESMICH.md`). Hineingelegt: `manifest/` (privater Konto-Export), `_alt_2026-08-19/` (Verfallsdatum durch den ersten Git-Commit erreicht), der Rucola-Stub und die beiden alten `.FCBak`. **Reihenfolge war sicherheitsrelevant:** `_papierkorb/` musste vor dem ersten Verschieben in die `.gitignore`, sonst hätte die Auto-Sicherung den privaten Export binnen 20 Minuten gepusht. Nebenbefund: Die Excel-Sperrdatei `~$…xlsx` war versehentlich versioniert — aus dem Index genommen und `~$*` ausgeschlossen. `LIESMICH.md` im Spiegel auf den aktuellen Ordnerstand gebracht. **Offen an 26b bleibt Williams Hand:** Papierkorb löschen, Chats umbenennen/löschen, Projektgedächtnis korrigieren. |
| 23.08.2026 | **Leitstand-Block nachgetragen** *(Zeile von der Werkstatt, Inhalt per Postfach vom Leitstand — erster voller Briefkasten-Umlauf ✓)*: Schichtdienst-Mengensteuerung geändert (kein Auftragslimit mehr, Warteschlange leer arbeiten mit Sicherung nach jedem Auftrag; schlafende Kontingent-Bremse; Verbrauchs-Selbstauskunft je Lauf → I-32), `werkzeuge/kontingent.md` als Momentaufnahme mit Verfallsregeln angelegt, I-32 registriert, Übergabe-Vermerke an I-24/I-26/I-27/I-32 gesetzt, in F-04 verlorene Register-Nachträge (I-24 ausführlich, I-25) rekonstruiert. Werkstatt-Seite dazu: `werkzeuge/arbeitsteilung.md` nachgezogen (Sparregel 9 „Zwischenstände statt Deckel", Abschnitt 4 mit kontingent.md und dem Fakt, dass lokale Verbrauchswerkzeuge Cloud-Läufe nie sehen), Leitstand-Fehlversuch als F-06 ins Log übernommen. |
| 23.08.2026 | **Audit V2 abgeschlossen und aufgeteilt; Briefkasten in Betrieb.** Die offenen Audit-Nummern sind auf Williams Auftrag zweigeteilt: der allgemeine Teil (26a, 8, 15, 19 sowie die Werkzeug-Ideen I-24/I-26/I-27/I-32) ist per Briefkasten an das Nachbarprojekt `claude-optimierung` übergeben (dessen Ordner strukturiert: Briefkasten, Einrichtungsanweisung, Werkzeug-Checkliste, Übergabe-Sachstand, Vorlagen, Skills), der Mikrogrün-Teil (6, 26b, 16-Rest, 11, 22, 23, 27; 21 entfällt, I-25 bleibt) bleibt hier — Einzelheiten im Nachtrag von `berichte/workflow-audit-v2-2026-08-22.md`. Postfach-Konvention aktiviert: Erstzustellung an den Leitstand (`werkzeuge/postfach/an-leitstand.md` — I-32 registrieren, `kontingent.md`-Verweis korrigieren, I-25-Nachtrag wiederherstellen, Übergabe-Vermerke); Vorstellungs-Konvention und Instanzen-Verzeichnis neu in `werkzeuge/instanzen-und-zugriffe.md`, Abschnitt 3a; die Konvention als kontoweiter Skill `briefkasten` gebaut und geliefert (Speichern durch William ausstehend). |
| 23.08.2026 | **F-04: Überschreib-Kollision repariert.** Parallel arbeitende Instanzen haben sich gegenseitig Sammeldateien überschrieben — dieser Chat löschte damit ungewollt die Schichtdienst-Befunde 4af–4ai aus dem Status (rekonstruiert, s. Kasten in Abschnitt 4), eine andere Instanz den I-25-Nachtrag vom 23.08. aus dem Ideenregister (Wiederherstellung beim Leitstand angefragt). Hergang, Ursache und die neuen Sammeldatei-Regeln: `werkzeuge/arbeitsteilung-fehlversuche.md` F-04; die Regeln selbst: `werkzeuge/instanzen-und-zugriffe.md` (neu). Zusätzlich bekannt: I-30 wurde doppelt vergeben (Register: Eigenvermehrung · Leitstand-intern: Kontingent-Verbrauchsmessung) — Auflösung beim Leitstand: eigene Idee als I-32 registrieren, Verweis in `werkzeuge/kontingent.md` anpassen. |
| 23.08.2026 | *(rekonstruiert)* **Schichtdienst-Läufe A-03 und A-04**: Bodengefälle-Prüfung (Befund 4ah — kein Abrisswinkel, Querneigung und Ebenheit sind die Hebel; P-38, I-28, I-29 neu) und Saatgut-Recherche (Befund 4ai — Korb 27–60 €, Rucola-Artenfrage, Gebindegrößen-Problem, Shiso-Kulturdauer; P-39–P-42, I-30, I-31, P-G14 neu). Der A-03-Lauf trug außerdem die von A-01/A-02 versäumten Statusbefunde 4af/4ag nach — Regel dazu jetzt im Kopf von `werkzeuge/schicht-auftraege.md`. |
| 23.08.2026 | **Shell-Zugang und Auto-Sicherung stehen**: Über FreeCADs Python-Konsole Node.js 24.19.0 und eigenständiges Python 3.12.10 per winget installiert, damit Desktop Commander in Claude Desktop eingerichtet (steht neben `freecad`, Konfiguration vorher gesichert) — er wird auch in Cowork-Sessions durchgereicht, der Shell-Zugang ist also nicht mehr an FreeCAD gebunden. Geplante Aufgabe „Claude Auto-Sicherung mikrogruen" registriert (alle 20 Minuten, `schtasks`, ohne Administratorrechte) und in zwei Läufen verifiziert. Zwei Fehlversuche protokolliert (F-02 Plugin-Ort, F-03 stderr-Fehlalarm). |
| 23.08.2026 | **Automatische Git-Sicherung eingerichtet** (`werkzeuge/auto-sicherung.md` + Skript `werkzeuge\git-autosicherung.ps1` im Arbeitsordner): eine Aufgabe der Windows-Aufgabenplanung committet und pusht alle 20 Minuten und bei Anmeldung, aber nur wenn Änderungen vorliegen — greift für jeden Schreiber (Cowork, Claude Desktop, FreeCAD, Hand), weil sie außerhalb von Claude läuft. Kein Auto-Pull (bewusst, sichere Reihenfolge für I-25). Registrierung des geplanten Tasks steht noch aus — von Hand oder per Shell-Zugang. |
| 23.08.2026 | **Vorschlag 20 erledigt — Git läuft**: Spiegelordner ist Git-Repository (Branch main), privates GitHub-Repository `williamelsner2-alt/mikrogruen` als Off-Site-Sicherung, Erst-Push verifiziert (origin/main = lokaler Commit, 111 Dateien, Ausschlüsse manifest/_alt_/FCBak greifen). Vier Fehlversuche auf dem Weg (Platzhalter-URL, fehlende Git-Identität, Branchname, private-Repo-Anmeldung) sind als Diagnoseblöcke in `werkzeuge/git-einrichtung.md` dokumentiert. P-32-Rest (alte FCBak löschen) und `_alt_`-Löschung sind damit freigegeben. |
| 22.08.2026 | **Ausgründung „Claude Umgebungs- und Projektoptimierung"**: Die verallgemeinerbaren Ergebnisse dieser Werkzeug-Phase (16 Erkenntnisse, Methoden Projektaufbau/Workflow-Audit/Betrieb/Skillbau) als Startpaket für ein eigenes Meta-Projekt übergeben — per Chat geliefert (ZIP + 3 allgemeine Skills `workflow-audit`, `projekt-fundament`, `stufenwahl`). Die mikrogruen-Werkzeugdokumente (`werkzeuge/…`) und -Skills bleiben hier unverändert führend. Als Migrationskandidaten ins neue Projekt benannt: I-24, I-26, I-27 (Umgebungsthemen); I-25 bleibt hier (hängt am Spiegelordner). |
| 22.08.2026 | **Werkzeug-Ebene in Betrieb**: Projekt-Instructions eingefügt und aktiv (Vorschlag 5 ✓), alle vier Skills gespeichert (`ablage-pflege`, `chat-uebergabe`, `sorten-steckbrief`, `cad-sitzung`, dazu `leitstand`), Leitstand-Session `[LEIT] Leitstand` gestartet (25 in Betrieb). Offen aus dem Audit nur noch: 26-Rest (Konto/Gedächtnis-Aufräumen von Hand), 20 (git init), 6 (Cowork-Projekt); bewusst später 8/11/15/16/19/22/23/27. |
| 22.08.2026 | **P-32 gelöst / Vorschlag 4 erledigt**: FreeCAD-Sicherungskopien stehen bereits auf 1 (William bestätigt), `.FCBak` und `_alt_` in `.gitignore` ausgenommen — Register, `werkzeuge/git-einrichtung.md` und Audit-Marker nachgezogen. Nur noch von Hand: einmalig alte `.FCBak`-Restbestände im `cad/`-Ordner löschen (Gelegenheit). |
| 22.08.2026 | **Vorschlag 17 erledigt / Befund B2 aufgelöst**: William hat `claude_desktop_config.json` geprüft — die mitgelieferte uv-Runtime 0.9.7 ist aktiv, die Setup-Doku stimmte, die Gedächtnis-Behauptung (eigene uv-Installation) war falsch. `werkzeuge/freecad-mcp-setup.md` nachgezogen (Prüfkasten aufgelöst, optionale Härtung beschrieben); der falsche Gedächtnis-Eintrag gehört zur Korrektur in Vorschlag 26. |
| 22.08.2026 | **Audit-Restumsetzung im Block** (Williams Freigabe „setze alles um"): P-36/P-37 (Bestellquote, Traypreis — Befund B3) ins Problemregister, P-32 nächster Schritt konkretisiert; Klappenscharniere als nächster Schritt verankert (B1a); `technik/cad-modellstand.md` von den internen Widersprüchen befreit (B1b: Dateitrennung, Wanne, Sync-Makro in Abschnitt 7, veraltete Maße gekennzeichnet); Ordnertabelle der Übersicht um `berichte/`, `uebergabe/`, `manifest/` ergänzt (B9); Skill `cad-sitzung` gebaut (Vorschlag 13); `werkzeuge/projekt-instructions.md` (5, Einfügen von Hand) und `werkzeuge/git-einrichtung.md` + `.gitignore` im Spiegel (4/20, git init von Hand) angelegt; Design- und Rendering-Zeile in der Arbeitsteilung (16/24); lokale Karteileiche `anbau/rucola-qualitaet.md` auf Verweis-Stub reduziert (B8). |
| 22.08.2026 | **Leitstand eingerichtet** (Vorschlag 25): `werkzeuge/leitstand.md` + Skill `leitstand` (Aufnahme/Einordnung/Delegation mit Stufen-Empfehlung), zwei Testläufe durchgeführt und zwei echte Lücken behoben (Prüfen musste vor Registrieren stehen, nicht danach; Delegation jetzt ausdrücklich optional). Parallel in eigener Cowork-Session erledigt: Vorschlag 14 (Skill „Sorten-Steckbrief") und Vorschlag 7 (geplante Aufgabe „Fristen-Wiedervorlage", 1. jedes Monats). Audit-Bericht, Übersicht und Chat-Konvention entsprechend nachgezogen. |
| 22.08.2026 | **Modellwechsel-Kosten dokumentiert**: Sparregel 8 in `werkzeuge/arbeitsteilung.md` (Stufenwechsel bündeln statt pendeln — ein Modellwechsel im Chat liest den ganzen Verlauf neu ein); `projekt/04-ideen.md` I-27 (Arbeitsplan-Workflow: Triage/Bündelung/Dispatch/Zusammenführung, zu prüfen) und Nachtrag zu I-24 (Claude kann auch das aktuell laufende Modell nicht zuverlässig selbst erkennen — Sitzung lief auf Fable 5 Max, nicht wie angenommen auf Sonnet). |
| 22.08.2026 | **Vorschlag 2 umgesetzt** (Ein Chat je Arbeitspaket, fester Abschluss): Substanz war bereits über `werkzeuge/chat-konvention.md` (1) und den Skill `chat-uebergabe` (28) gesetzt; ergänzt um die explizite Warnung „Statuszeile ersetzt kein Register" (Befund B1a) in `werkzeuge/chat-konvention.md` Abschnitt 3. Audit-Bericht entsprechend markiert. |
| 22.08.2026 | **Werkzeug-Ebene eingerichtet** (Workflow-Audit V2, Vorschläge 1/3/12/28/29): `werkzeuge/chat-konvention.md` (Namensschema, Migrationstabelle) und `werkzeuge/arbeitsteilung.md` (Werkzeug-/Modell-/Aufwandswahl, Token-Sparregeln, Kontingent-Bewirtschaftung) neu angelegt; Skills `ablage-pflege` und `chat-uebergabe` erstellt und in 6 Läufen getestet (mit Skill 100 %, ohne 86 %); Warteschlange `werkzeuge/schicht-auftraege.md` (Schichtdienst, Zeit einstellbar, auf Abruf startbar) mit geplanter Aufgabe für token-intensive Arbeit (A-01…A-05 aus P-21, P-12/13, P-06, Schritt 5, P-25). Audit-Bericht zunächst nur lokal — Nachtrag siehe unten. |
| 22.08.2026 | **Arbeitsteilungsfehlversuch dokumentiert und behoben**: Ein normaler Chat ohne Ordnerzugriff konnte an den Audit-Vorschlägen nicht weiterarbeiten, weil `berichte/workflow-audit-v2-2026-08-22.md` nur lokal lag und eine veraltete Pfadangabe (`nachtschicht-auftraege.md`) ins Leere zeigte — beides jetzt korrigiert. Neues Dokument `werkzeuge/arbeitsteilung-fehlversuche.md` sammelt solche Fälle als Grundlage für den künftigen Leitstand (Audit-Vorschlag 25). |
| 21.08.2026 | **Arbeitsordner auf dem Rechner eingerichtet und synchronisiert**: `Desktop\Claude\mikrogruen\` spiegelt jetzt die Projektstruktur, überholte Vorversionen liegen in `_alt_2026-08-19\`. FreeCAD-Dateien aus dem Benutzerverzeichnis nach `cad\` umgezogen (offene Frage erledigt), STEP/OBJ/STL neu exportiert. |
| 21.08.2026 | **Ständerwerk im CAD aus dem Raster neu erzeugt** und als wiederverwendbares Makro abgelegt. Dabei zwei Fehler gefunden (Befund 4s): die Mappe rechnete 8,5 % zu viel Profil, dem CAD fehlten die Etagenauflagen für die Module 2–4. Startaufbau 640 → **628 €**. CAD und Mappe stimmen jetzt auf drei Nachkommastellen. |
| 21.08.2026 | **Rack dreidimensional parametriert** (Befund 4q): Raster X × Y × Z statt reinem Höhenwachstum. Basisfall 1×1×4 reproduziert alle Altwerte exakt. Ergebnis: Bei ausgeschöpftem Höhenbudget ist das breite Raster in Kosten, Flächennutzung *und* Kippsicherheit überlegen — 36 € statt 60 € je Modulplatz. Zwei neue Engpässe sichtbar geworden (Befund 4r): Reservoirgröße und Buskapazität. |
| 21.08.2026 | **Entscheidungsrunde**: Modulzahl (1) und volle Rasterbestückung (6 Sorten) entschieden. Etagenzahl für jede Variante 3–8 durchgerechnet und als Entscheidungsvorlage abgelegt (Befund 4p) — bleibt bis zum Firmengespräch offen. Blechbeschaffung als **Szenarioumschalter** in die Mappe eingebaut (Befund 4n): Zuschnitt / Tafelkauf / Restmaterial, 436 € Spanne. Kennzahlen auf den netto/brutto-korrigierten Stand gezogen (Startaufbau 626 → **640 €**). |
| 21.08.2026 | **Signalleitungsgrenze gerechnet** (Befund 4o): Blatt `12-Installationsgrenzen` um Signalleitungen erweitert. I²C reicht 3,7 m gegen 25,6 m Leistungsleitung — der Aufstellort des Elektronikschranks hängt an der schwächsten Leitung. Steuerungsarchitektur damit an eine Randbedingung gebunden, aber **nicht** entschieden: Bauteilwahl wartet auf die Bestandsaufnahme des vorhandenen Elektronikvorrats. |
| 19.08.2026 | **Zuschnittsliste und DXF erzeugt**: 20 Zuschnitte je Modul, auf zwei Blechtafeln geschachtelt, als `MikrogruenRack_Modul_Zuschnitt.dxf` neben der CAD-Datei. Dabei zwei Rechenfehler gefunden (Befund 4m) und den Tafelbedarf ermittelt (Befund 4n, noch offen). |
| 19.08.2026 | **Modul fertig konstruiert**: Bedienkonzept entschieden (Trays nach vorn, Schienen in Auszugsrichtung, Frontklappe mit Dichtung und Beschlag), Querträger, Standoffs, Liner-Befestigungspunkte, Versorgungsstrang, Stellfüße, Wandlaschen. Kollisionsprüfung sauber. **Gegenprobe CAD ↔ Mappe deckte einen Blechfehler von 30 € je Modul auf** (Befund 4k). Neues Blatt `12-Installationsgrenzen` (Befund 4l). |
| 19.08.2026 | **Technik aus dem Rack ausgelagert**: zwei externe Schränke (Elektronik oben, Hydraulik unten) statt Technikfach. Rack 160 mm niedriger, dafür 4 Etagenplätze. Arbeitsmappe um `11-Massen-Statik`, Kosten je m² und die Trennung Etagenplätze/bestückte Module erweitert. |
| 19.08.2026 | **CAD-Volumenmodell aufgebaut**: Ständerwerk, Technikfach, vollständiges Modul, 3× instanziiert. Dabei drei Konstruktionsfehler gefunden und behoben (Befunde 4e–4g). Racktiefe 488 → 540 mm. Aufbau dokumentiert in `technik/cad-modellstand.md`. |
| 19.08.2026 | Projektablage neu strukturiert: echte Ordner, Index, Status- und Rahmendatei, `wirtschaft/ip-und-verhandlung.md` neu. Tote Verweise repariert. Rack-Stand aus dem Konstruktions-Chat eingepflegt, Modell nachgerechnet, Befunde in Abschnitt 4. Zeitplan auf Modus A umgestellt. |
| 19.08.2026 | Architekturwechsel: Einzelgehäuse → modulares Rack. Bauplan neu geschrieben, Rack-Modell, 3D-Briefing und Prinzipskizze erstellt |
| 19.08.2026 | FreeCAD-MCP in Claude Desktop eingerichtet, Parametertabelle im CAD angelegt |
| 18.08.2026 | Bauplan in Technik / Anbau / Zeitplan aufgeteilt, erstes parametrisches Modell |
| 14.08.2026 | Erste Dokumentenbasis: Übersicht, Fahrplan, Produktkatalog, Rucola, Lernpfad |

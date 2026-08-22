# 3D-Modell-Briefing: Modulares Mikrogrün-Rack

*Inhaltsstand: 21.08.2026 · Struktur: 21.08.2026*
*Nachbardokumente: Begründung der Maße in `technik/prototyp-bauplan.md`, Stand des CAD-Modells in
`technik/cad-modellstand.md` · Alle Werte stammen aus `mikrogruen-rack-modell.xlsx`*

> **Achtung — dieses Dokument ist eine Momentaufnahme.** Es enthält ausgerechnete Zahlen, keine
> Regeln. Ändert sich ein Eingabewert in der Arbeitsmappe, verliert es seine Gültigkeit und muss
> neu abgeleitet werden. Im Zweifel gewinnt immer die Arbeitsmappe.
>
> **Die Vorversion vom 19.08. (vormittags) ist überholt.** Sie beschrieb ein Rack mit
> Technikfach, 488 mm Tiefe, 1480 mm Höhe und Auflageschienen in X-Richtung. Alles drei gilt
> nicht mehr.
>
> **Am 21.08. nachgezogen:** Das Rack wächst jetzt als Raster X × Y × Z, nicht mehr nur in der
> Höhe. Und das Ständerwerk hat eine Traverse **je Etage** statt nur drei Ringen — vorher hätten
> die Module 2 bis 4 in der Luft gehangen.

---

## 0. Auftrag in einem Satz

Ein maßhaltiges 3D-Modell eines Edelstahlracks für herausziehbare Klimamodule und zwei externe
Technikschränke — parametrisch aufgebaut, sodass **Rasterform (X × Y × Z)**, Trayzahl und
Trayformat ohne Neuaufbau geändert werden können. Dieses Dokument beschreibt den Basisfall
**1 × 1 × 4**: eine Spalte, eine Reihe, vier Etagenplätze.

---

## 1. Konventionen

| Größe | Festlegung |
|---|---|
| Einheit | Millimeter |
| X | Breite, nach rechts positiv |
| Y | Tiefe, nach hinten positiv |
| Z | Höhe, nach oben positiv |
| Ursprung | vordere linke untere Außenkante des Racks, Bodenniveau |
| Blickrichtung Standardansicht | von vorn links oben, leicht isometrisch |

Alle drei Anschlüsse liegen an der **Rückseite** (große Y-Werte). Die Module werden nach **vorn**
(negative Y-Richtung) herausgezogen, und die Trays gleiten in derselben Richtung aus dem Modul.

**Welche Ausbaustufe dieses Dokument beschreibt:** Stufe 1, einschalig. Die Außenkontur ist in
allen Stufen identisch; beim Nachrüsten der Dämmung wächst sie **nach innen**. Innere Einbauten
sind deshalb auf feste absolute Höhen über der Modulunterkante bezogen, nicht auf
Blechoberflächen. Details in `technik/prototyp-bauplan.md`, Abschnitt 6.

---

## 2. Parameter

```json
{
  "einheit": "mm",
  "konfiguration": {
    "raster_x_spalten": 1,
    "raster_y_reihen": 1,
    "etagenplaetze": 4,
    "modulplaetze_gesamt": 4,
    "bestueckte_module": 1,
    "trays_je_etage": 6,
    "spalten": 2,
    "reihen": 3,
    "gn_format": "1/9",
    "ausbaustufe": 1
  },
  "tray": {
    "laenge_x": 176, "breite_y": 108, "hoehe_z": 40,
    "fuegespalt": 2,
    "boerdelrand_dicke": 3,
    "ruecksprung_koerper": 8,
    "bodenperforation": { "lochdurchmesser": 4, "teilung": 12, "muster": "versetzt",
                          "hinweis": "noch nicht festgelegt, haengt am Substrat" }
  },
  "modul": {
    "aussen": { "breite_x": 448, "tiefe_y": 422, "hoehe_z": 384 },
    "innen_stufe1": { "breite_x": 446, "tiefe_y": 420, "hoehe_z": 382 },
    "innen_stufe2": { "breite_x": 404, "tiefe_y": 378, "hoehe_z": 340 },
    "wandaufbau_endzustand": { "blech_innen": 1, "daemmung": 20, "blech_aussen": 1, "gesamt": 22 },
    "blech_stufe1": 1,
    "toter_raum_je_seite_stufe1": 21,
    "wandabstand_raster": 25,
    "bodenneigung_laengs_grad": 2,
    "bodenneigung_quer_grad": 1,
    "ablauf": { "position": "hinten rechts, durch die Rueckwand", "durchmesser": 20 }
  },
  "raster": { "breite_x": 354, "tiefe_y": 328, "ursprung_x": 47, "ursprung_y": 47 },
  "einbauhoehen_ueber_modulunterkante": {
    "quertraeger": [44, 59],
    "auflageschiene": [59, 74],
    "gn_behaelter": [37, 77],
    "pflanzenraum": [77, 177],
    "led_profil": [327, 342],
    "innendecke_endzustand": 362
  },
  "licht": { "bahnen": 3, "bahnlaenge_x": 354, "profil_breite": 20, "bauhoehe_z": 15,
             "y_mitten": [101, 211, 321] },
  "rack": {
    "aussen": { "breite_x": 514, "tiefe_y": 550, "hoehe_z": 1720 },
    "lichte_breite_x": 454,
    "profil": { "kantenlaenge": 30, "wandstaerke": 2 },
    "etagenteilung_z": 400,
    "lochraster_teilung_z": 25,
    "lochdurchmesser": 6,
    "fuehrungsspiel": 3,
    "sockelhoehe_z": 60,
    "stellfuss_hoehe_z": 25,
    "z_basis_erste_etage": 90
  },
  "bauraum_hinten": {
    "modulrueckwand_y": 455,
    "schnittstelle_t": 35,
    "versorgungsstrang_t": 30,
    "rackhinterkante_y": 550
  },
  "technikschraenke_extern": {
    "elektronik": { "breite_x": 300, "hoehe_z": 300, "tiefe_y": 150, "lage": "oben" },
    "hydraulik":  { "breite_x": 300, "hoehe_z": 300, "tiefe_y": 200, "lage": "unten" }
  },
  "schnittstelle": {
    "elektrisch":  { "typ": "M12-Rundsteckverbinder", "durchmesser": 16, "laenge": 30, "x_lokal": 336 },
    "hydraulisch": { "typ": "Schnellkupplung", "durchmesser": 14, "laenge": 35, "x_lokal": 112 },
    "ablauf":      { "durchmesser": 20, "laenge": 28, "x_lokal": 396 }
  }
}
```

---

## 3. Baugruppenhierarchie

```
Rack
├── 4 × Stellfuss                       Z 0 … 40, nivellierbar
├── Ständerwerk                        aus dem Raster erzeugt: (X+1)·(Y+1) Ständer, (Z+2) Ringe
│   ├── 4 × Eckständer                  Vierkantrohr 30 × 30, Z 25 … 1720
│   ├── 6 Traversenringe                Z 25 / 60 / 460 / 860 / 1260 / 1690
│   ├── Lochreihen in den Ständern      Innenseiten, Ø 6, Teilung 25
│   └── 2 × Wandlasche                  oben hinten, ab drei Modulen nötig — entfällt bei Y = 2
├── Versorgungsstrang (Rückseite, Y 490 … 520)
│   ├── Vorlaufrohr Ø 16
│   ├── Fallrohr Ø 25
│   ├── Kabelkanal 45 × 30
│   └── je Etagenplatz 3 Gegenstücke    Kupplung, Stecker, Ablauf
├── n × Modul                           identische Instanz, nur Z unterschiedlich
│   ├── Außenschale                     mit Ablauf- und Frontöffnung
│   ├── Frontklappe + Dichtung + Griff  2 Scharniere links, Verschluss rechts
│   ├── Innenboden                      zwei Neigungen, ein Tiefpunkt hinten rechts
│   ├── 2 × Querträger                  U-Profil, tragen die Längsschienen
│   ├── 3 × Auflageschiene              U-Profil, laufen in Y
│   ├── 4 × Standoff                    21 mm, überbrücken den Freiraum der Stufe 1
│   ├── 3 × Anschlag                    seitlich und hinten; vorn frei
│   ├── 12 × Linerbolzen                Befestigung für die spätere Dämmung
│   ├── 6 × GN-Behälter                 herausnehmbar, gleiten nach vorn
│   ├── 3 × LED-Bahn mit Alu-Profil
│   ├── Sprühleiste mit 2 Düsen
│   ├── Lüfter                          Rückwand
│   └── Schnittstelle hinten            Kupplung, Stecker, Ablaufstutzen
└── Technikschränke (frei platzierbar, nicht am Rack)
    ├── Elektronikschrank               hängt oben, Kabelabgang nach unten
    └── Hydraulikschrank                steht unten, Vorlauf- und Rücklaufstutzen
```

**Wichtig für die Modellstruktur:** Das Modul ist *eine* Baugruppe, die je Etagenplatz
instanziiert wird. Der GN-Behälter ist *ein* Bauteil, das sechsmal je Modul instanziiert wird.
Änderungen müssen automatisch auf alle Instanzen wirken.

---

## 4. Positionen

### 4.1 Ständerwerk

| Bauteil | X | Y | Z |
|---|---|---|---|
| Eckständer vorn links | 0 → 30 | 0 → 30 | 25 → 1720 |
| Eckständer vorn rechts | 484 → 514 | 0 → 30 | 25 → 1720 |
| Eckständer hinten links | 0 → 30 | 520 → 550 | 25 → 1720 |
| Eckständer hinten rechts | 484 → 514 | 520 → 550 | 25 → 1720 |

**Traversenringe auf sechs Z-Ebenen** (Unterkante des jeweils 30 mm hohen Riegels):

| Ring | Z | Funktion |
|---|---|---|
| Boden | 25 → 55 | steht auf den Stellfüßen, versteift den Sockel |
| Etage 1 | 60 → 90 | trägt Modul 1 |
| Etage 2 | 460 → 490 | trägt Modul 2 |
| Etage 3 | 860 → 890 | trägt Modul 3 |
| Etage 4 | 1260 → 1290 | trägt Modul 4 |
| Oben | 1690 → 1720 | schließt den Rahmen, nimmt die Wandlaschen auf |

Allgemein: Boden auf `fuss_h`, je Etage *k* ein Ring auf `z_basis − profil + (k−1)·teilung`,
oben auf `rack_h − profil`. Das ergibt **Z + 2** Ringe.

**Die Riegel laufen nur zwischen den Ständern, nicht um sie herum.** Längsriegel je Ständerreihe
454 mm, Querriegel je Ständerspalte 490 mm. Gesamte Profillänge im Basisfall: **18,108 m** —
das ist der Wert, an dem sich die Arbeitsmappe messen lassen muss.

Lochreihen auf den Innenflächen der vier Ständer, Ø 6 mm, Teilung 25 mm in Z.

### 4.2 Module

Modul *k* (k = 1 … 4), Außenkörper 448 × 422 × 384, jeweils X 33 → 481, Y 33 → 455:

| Platz | Z (Außenkörper) |
|---|---|
| 1 | 93 → 477 |
| 2 | 493 → 877 |
| 3 | 893 → 1277 |
| 4 | 1293 → 1677 |

Allgemein: `Z_unten(k) = 90 + (k − 1) · 400 + 3`

**Bestückt ist derzeit nur Platz 1.** Die übrigen drei bleiben frei und werden später nachgerüstet.

### 4.3 Innerer Aufbau eines Moduls

Alle Z-Werte **absolut über der Modulunterkante**, unabhängig von der Ausbaustufe:

| Element | Z von | Z bis | Anmerkung |
|---|---|---|---|
| Innenboden (hinten rechts) | 1 | 2 | Tiefpunkt, dort der Ablauf |
| Innenboden (vorn links) | 23 | 24 | 2° längs, 1° quer |
| Querträger | 44 | 59 | U-Profil, an den Seitenwänden |
| Auflageschiene | 59 | 74 | U-Profil, trägt den Bördelrand |
| GN-Behälter | 37 | 77 | hängt am Rand, Körper 8 mm schmaler |
| Substrat im Behälter | 38 | 63 | Füllhöhe 25 mm |
| Pflanzenraum | 77 | 177 | freier Wuchsraum |
| Lichtabstand | 177 | 327 | Luftraum |
| LED-Profil | 327 | 342 | Unterkante strahlt nach unten |
| Sprühleiste | 342 | 354 | an der Innendecke |
| Innendecke Endzustand | 362 | — | in Stufe 1 liegt sie bei 383 |

Trayraster relativ zur **Modulaußenkante vorn links**:

| Tray | X von | X bis | Y von | Y bis |
|---|---|---|---|---|
| S1 R1 | 47 | 223 | 47 | 155 |
| S2 R1 | 225 | 401 | 47 | 155 |
| S1 R2 | 47 | 223 | 157 | 265 |
| S2 R2 | 225 | 401 | 157 | 265 |
| S1 R3 | 47 | 223 | 267 | 375 |
| S2 R3 | 225 | 401 | 267 | 375 |

**Auflageschienen laufen in Y**, also in Auszugsrichtung, und tragen die Trays an den
Längskanten: X 47–55 (außen), 215–233 (Mitte, trägt beide Spalten), 393–401 (außen).
Y jeweils 22 → 400.

**Querträger** X 22 → 426, Y 47 → 67 und 355 → 375, Z 44 → 59.

**LED-Bahnen** je mittig über einer Trayreihe: Y-Mitten bei 101, 211 und 321, X 47 → 401.

### 4.4 Schnittstelle und Front

| Element | X (lokal) | Y | Z | Ragt heraus |
|---|---|---|---|---|
| Hydraulikkupplung | 105 → 119 | 422 → 457 | 185 → 199 | 35 mm nach hinten |
| M12-Steckverbinder | 328 → 344 | 422 → 452 | 184 → 200 | 30 mm nach hinten |
| Ablaufstutzen | 386 → 406 | 422 → 450 | 3 → 23 | 28 mm nach hinten |
| Lüfter | 184 → 264 | 396 → 422 | 152 → 232 | innen an der Rückwand |
| Türdichtung | 14 → 434 | −4 → 0 | 14 → 370 | umlaufend, 4 mm |
| Frontklappe | 10 → 438 | −5 → −4 | 10 → 374 | überlappt 12 mm |

Die Gegenstücke sitzen am Versorgungsstrang bei Y = 490 … 520.

---

## 5. Detailgeometrie

**GN-Behälter.** Wanne mit umlaufendem Bördelrand. Nennmaß 176 × 108 gilt für die Außenkante des
Rands; der Behälterkörper darunter ist umlaufend 8 mm schmaler und läuft konisch nach unten zu
(Entformschräge ca. 4°, verrundete Ecken R ≈ 12). Genau dieser Rücksprung unter dem Rand ist der
Griffraum — er sollte im Modell sichtbar sein, weil er die Konstruktion begründet. Boden
perforiert; das Lochbild steht noch nicht fest.

**Auflageschienen.** U-Profil aus 1 mm Blech, 15 mm hoch, abgewickelte Breite 38 mm (außen) bzw.
48 mm (Mitte). Sie liegen auf den Querträgern, nicht an den Wänden.

**Modulboden.** Eine ebene Platte, in zwei Achsen geneigt — dadurch genau ein Tiefpunkt in der
hinteren rechten Ecke. Kein Rinnenbauteil nötig.

**Wandaufbau.** Als drei getrennte Körper modellieren (Innenschale, Dämmung, Außenschale), damit
die Dämmung sichtbar gemacht oder ausgeblendet werden kann. Stufe 1 ist dieselbe Baugruppe mit
Dämmstärke 0 und nur einer Schale.

**Frontklappe.** Überlappt die Öffnung umlaufend um 12 mm, sitzt vor der Dichtung. Schichtung von
hinten nach vorn: Außenschale (Y 0…1), Dichtung (−4…0), Klappe (−5…−4), Griff (−23…−5).

---

## 6. Materialanmutung

| Bauteil | Anmutung |
|---|---|
| Alle Edelstahlteile | sandgestrahlt: mattes Metall, hohe Metallness, hohe Rauheit, keine Spiegelung |
| Dämmschicht | mattes, dunkles Mineralmaterial, sichtbar nur im Schnitt |
| LED-Profil | Aluminium, matt, mit leuchtender Unterseite |
| Substrat in den Trays | matte, dunkelbraune Fläche |
| Bewuchs | niedrige, gleichmäßige grüne Masse, ca. 40 mm hoch, keine erkennbare Sorte |
| Dichtungen und Schläuche | mattes, helles Silikon |

Die Anmutung soll Profi-Küchentechnik sein, nicht Hobbygerät: kein Kunststoff sichtbar, keine
Hochglanzflächen, keine Farbakzente außer dem Licht.

---

## 7. Gewünschte Darstellungen

1. **Gesamtansicht** isometrisch, Modul auf Platz 1, drei Plätze frei
2. **Bedienzustand** — Frontklappe geöffnet, ein GN-Behälter halb herausgezogen
3. **Schnitt** durch ein Modul: Wandaufbau, Querträger, Schienen, Trayaufhängung, Lichtabstand
4. **Schnittstellenansicht** von hinten mit Versorgungsstrang und den drei Kupplungspaaren
5. **Ausbaustufen** — dasselbe Modul einschalig und gedämmt nebeneinander
6. Optional: **Explosionsdarstellung** eines Moduls entlang der Z-Achse

---

## 8. Was parametrisch bleiben muss

- Rasterform X × Y × Z → Rackbreite, Racktiefe, Rackhöhe, Zahl der Ständer und Ringe
- Etagenplätze → Rackhöhe und Lochrasterbelegung
- Bestückte Module → Zahl der Instanzen, unabhängig von den Plätzen
- Trayzahl, Spaltenzahl → Raster, Modulmaße, Zahl der LED-Bahnen und Schienen
- GN-Format → Traymaße und damit die gesamte Kette
- Dämmstärke → Wandaufbau und Modulaußenmaß, bei 0 einschalig
- Etagenteilung → Lochrasterbelegung und Rackhöhe

Die Abhängigkeiten: **Trayformat → Raster → Modulinnenmaß → Modulaußenmaß → Etagenteilung →
Rackhöhe.** Wer diese Kette abbildet, kann jede Konfiguration aus der Arbeitsmappe ohne Nacharbeit
übernehmen.

---

## 9. Fehlerquellen, auf die zu achten ist

- Der **Fügespalt von 2 mm** zwischen den Trays ist Absicht und darf nicht auf null gesetzt werden
- Das **Führungsspiel von 3 mm** je Seite zwischen Modul und Ständer ebenfalls nicht
- Der **Bördelrand trägt**; der Behälter steht **nicht** auf dem Modulboden
- Zwischen Modulaußenhöhe und Etagenteilung bleiben **10 mm ungenutzt** — das ist der
  Rundungsverlust auf das Lochraster, kein Zeichenfehler
- Der **Bauraum hinter dem Modul** (35 mm Schnittstelle + 30 mm Strang) gehört zur Racktiefe.
  Wird er vergessen, passen die Anschlüsse nicht — dieser Fehler ist schon zweimal aufgetreten
- **Innere Einbauten auf absolute Höhen** beziehen, nie auf Blechoberflächen. Sonst verschiebt
  sich beim Nachrüsten der Dämmung der Lichtabstand und die berechnete PPFD stimmt nicht mehr
- Der **Innenboden ist ein zusätzliches Blech** über dem Hüllboden, nicht der Hüllboden selbst

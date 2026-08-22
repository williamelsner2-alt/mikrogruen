# Anbau — Sortenwahl, Staffelung, Erntelogik

*Inhaltsstand: 18.08.2026 · Struktur: 19.08.2026*
*Nachbardokumente: Technik in `technik/prototyp-bauplan.md`, Ablauf in
`technik/zeitplan-prototyp.md`, Methodik in `anbau/stresssteuerung-grundlagen.md`, Sortendateien in `anbau/sorten/` ·
Mengen und Flächen rechnet `mikrogruen-rack-modell.xlsx`*

Die Sortenzahl ist **keine feste Größe.** Sie ist der Parameter `Trays je Etage` im Modell und
bestimmt über die Maßkette die gesamte Modul- und Rackgeometrie. Dieses Dokument liefert den Vorrat,
aus dem ausgewählt wird, und die Regel, nach der ausgewählt und gestaffelt wird.

---

## 1. Auswahlkriterien

Eine Sorte kommt in eine Charge, wenn sie mindestens zwei dieser Kriterien erfüllt:

1. **Menübezug** — sie passt zu einem dokumentierten Gericht eines Zielrestaurants
2. **Verfügbarkeitslücke** — im deutsch-österreichischen Großhandel schlecht oder gar nicht
   frisch zu bekommen
3. **Kulturdauer im Fenster** — erntereif innerhalb der geplanten Chargenlänge
4. **Robustheit** — verzeiht Fehler in der ersten Kalibrierphase

Kriterium 2 ist das wirtschaftlich stärkste: eine Sorte, die der Küchenchef ohnehin geliefert
bekommt, verkauft sich über den Preis. Eine, die er nicht bekommt, verkauft sich über die
Verfügbarkeit.

Die Zielhäuser stehen in `projekt/02-rahmen-und-netzwerk.md`.

---

## 2. Sortenkatalog

Offene Liste. Keine Obergrenze — begrenzt wird nur durch die Zahl der Rasterfelder.

### 2.1 Fischbegleiter (Kernprofil beider Zielhäuser)

| Sorte | Profil und Anlass | Kulturdauer |
|---|---|---|
| Bronzefenchel | Anisnote, klassischer Fischbegleiter | ca. 10–14 Tage |
| Borretsch (Blätter) | Austern-/Gurkennote, passt zu Seezunge, Dorade | ca. 10–12 Tage |
| Dill | Vertrauter Fischbezug, sehr feine Microgreen-Textur | ca. 12–16 Tage |
| Kerbel | Zart anisig, milder als Fenchel | ca. 14–18 Tage |
| Sellerie (Micro) | Salzig-erdig, gut zu Muscheln und Fond | ca. 16–21 Tage |

### 2.2 Mediterran / italienisch

| Sorte | Profil und Anlass | Kulturdauer |
|---|---|---|
| Rot-Basilikum | Direkter Bezug zum Hummer mit rotem Basilikum-Pesto (Chizzo) | ca. 10–14 Tage |
| Grün-Basilikum | Breiter einsetzbar, weniger Wiedererkennungswert | ca. 10–14 Tage |
| Rucola | Klassiker zu Carpaccio (Domenico); Schärfe steuerbar | ca. 7–10 Tage |
| Petersilie (Micro) | Langsam, aber im Fine Dining selten als Microgreen | ca. 18–24 Tage |
| Fenchel (grün) | Milder als Bronzefenchel, optisch unauffälliger | ca. 10–14 Tage |

### 2.3 Asiatisch / Sushi-Akzente

| Sorte | Profil und Anlass | Kulturdauer |
|---|---|---|
| Micro-Shiso (Perilla) | Sushi-Akzente bei Chizzo; in DE/AT selten frisch verfügbar | ca. 12–16 Tage |
| Mizuna | Mild scharf, sehr gute Standfestigkeit auf dem Teller | ca. 8–12 Tage |
| Tatsoi | Nussig, dunkles Blatt, guter Kontrast | ca. 8–12 Tage |
| Wasabi-Rauke | Deutliche Schärfespitze, ungewöhnlich | ca. 10–14 Tage |

### 2.4 Farbe und Optik

| Sorte | Profil und Anlass | Kulturdauer |
|---|---|---|
| Amaranth | Intensives Rotviolett, geschmacklich zurückhaltend | ca. 10–14 Tage |
| Rote Bete (Bull's Blood) | Roter Stiel, erdig-süß | ca. 10–14 Tage |
| Rotkohl | Violett-grün, milder Kohlgeschmack | ca. 8–12 Tage |
| Radieschen (Sango) | Kräftiges Violett, klare Schärfe | ca. 6–10 Tage |

### 2.5 Sichere Anker (schnell, robust, hohe Ausbeute)

| Sorte | Profil und Anlass | Kulturdauer |
|---|---|---|
| Erbsensprossen | Süß, knackig, sehr ertragreich, verzeiht viel | ca. 10–12 Tage |
| Sonnenblume | Nussig, große Blattmasse, sehr robust | ca. 8–12 Tage |
| Kresse | Schnellste Kultur überhaupt, gute Notreserve | ca. 5–8 Tage |
| Brokkoli | Mild, gesundheitlicher Aufhänger (Sulforaphan) | ca. 8–12 Tage |

**Empfehlung zur Zusammensetzung:** mindestens ein Anker aus 2.5 in jeder Charge. Fällt eine
anspruchsvolle Sorte aus, ist das Sample trotzdem vollständig.

---

## 3. Bekannte Problemfälle

**Meerfenchel / Queller (Salicornia).** Inhaltlich ein Volltreffer für Fischgerichte, in der
Fine-Dining-Szene stark nachgefragt. Zwei harte Hindernisse: Keimung notorisch langsam und
unzuverlässig (mehrere Wochen), und die Pflanze braucht eine salzhaltige Nährlösung. Salzwasser
greift Pumpe und Elektronik an, es wäre also ein zweites, getrenntes Reservoir nötig. Nichts für
die erste Charge — aber ein starkes Argument im Gespräch ("das entwickeln wir gerade für Sie").

**Borretsch-Blüten.** Die blauen Blüten brauchen 8–10 Wochen bis zur Blüte und passen in kein
Microgreen-Fenster. Die Blätter sind schon jetzt geschmacklich wertvoll und werden gezeigt; die
Blüten gehören in die Roadmap-Erzählung, nicht in die Charge.

**Sehr langsame Kräuter (Petersilie, Sellerie).** Kulturdauer über etwa 18 Tagen sprengt das
gemeinsame Erntefenster, wenn der Rest der Charge bei 10–14 Tagen liegt. Entweder als eigene,
parallel laufende Charge führen oder das Erntefenster der Gesamtcharge daran ausrichten.

---

## 4. Staffelungslogik — die eigentliche Regel

Ziel: **alle Sorten am selben Tag erntereif**, damit ein vollständiges Sample-Tray entsteht.
Das ist keine Sortenliste, sondern eine Rechnung.

```
Aussaattag(Sorte i) = Zielerntetag − Kulturdauer(Sorte i)
```

Praktisch heißt das: rückwärts vom gewünschten Erntetermin rechnen, nicht vorwärts vom Startag.

**Ablauf**

1. Zielerntetag festlegen (Tag T)
2. Für jede gewählte Sorte die Kulturdauer aus dem Katalog nehmen
3. Aussaattag = T − Kulturdauer
4. Nach Aussaattag sortieren — daraus entsteht der Aussaatkalender
5. Der früheste Aussaattag ist der Chargenstart

**Beispiel** mit T = Tag 16 und vier Sorten:

| Sorte | Kulturdauer | Aussaat an Tag |
|---|---|---|
| Micro-Shiso | 14 | 2 |
| Bronzefenchel | 12 | 4 |
| Rot-Basilikum | 12 | 4 |
| Rucola | 8 | 8 |

**Toleranzband.** Kulturdauern sind Spannen, keine Punkte. Plane mit dem oberen Wert der Spanne
— eine Sorte, die zu früh fertig ist, kann durch Temperatur- oder Lichtreduktion kurz gehalten
werden, eine zu späte nicht beschleunigt werden.

**Konstruktive Konsequenz:** genau diese Staffelung ist der Grund für einzeln herausnehmbare
Anzuchtgefäße. Bei einer geteilten Fläche müsste in laufendes Substrat nachgesät werden.

**Terminliche Konsequenz:** Der Zielerntetag T ist kein freier Wert, sondern folgt aus dem
Kundentermin. Die Rückwärtsrechnung dafür steht in `technik/zeitplan-prototyp.md`.

---

## 5. Qualitätssteuerung über die Automatisierung

Die Sensorik dient in Version 1 nicht der Regelung, sondern dem Aufbau von Rezepturen.
**Der Versuchsablauf ist immer derselbe:**

1. Eine Größe verändern (Bewässerungsintervall, Photoperiode, Erntetag), alles andere gleich
   lassen
2. Parallele Trays als Vergleich fahren — hier zahlt sich Sortenvielfalt doppelt aus, weil
   dieselbe Sorte in zwei Feldern unter verschiedenen Bedingungen laufen kann
3. Logdaten mit dem Verkostungsergebnis zusammenführen
4. Einstellung dokumentieren, die gewonnen hat

### Welche Stoffgruppe reagiert worauf

| Stoffgruppe | Sorten | Wichtigster Hebel |
|---|---|---|
| Senfölglykoside (Glucosinolate) | Rucola, Radieschen, Mizuna, Wasabi-Rauke, Brokkoli | milder Wasserstress vor der Ernte |
| Anethol / ätherische Öle | Fenchel, Dill, Kerbel | Erntezeitpunkt, Temperatur |
| Anthocyane (Farbstoffe) | Amaranth, Rote Bete, Rotkohl | Lichtintensität und -spektrum, **nicht** Wasserstress |

Die allgemeine Methodik — Dosisgesetz, Zeitfenster, Ertrag-Intensität-Kompromiss, Nachweis —
steht seit dem 21.08. in **`anbau/stresssteuerung-grundlagen.md`**. Dieses Dokument bleibt der
Katalog: was angebaut wird, wann gesät wird, was es bringt.

### Die Sortendateien

Je Sorte eine eigene Datei in `anbau/sorten/`, alle nach demselben Aufbau (Steckbrief,
Wirkkette, Hebel nach Wirkung sortiert, Versuchsansatz, Fallen, Ernte und Handling, Stand):

| Sorte | Datei | Zielstoffgruppe | Stressprotokoll |
|---|---|---|---|
| Rucola *(Referenzfall)* | `anbau/sorten/rucola.md` | Glucosinolate | ja — bestbelegt |
| Rot-Basilikum | `anbau/sorten/rot-basilikum.md` | Anthocyane, ätherische Öle | ja |
| Micro-Shiso (Perilla) | `anbau/sorten/micro-shiso.md` | Anthocyane, Perillaldehyd | ja |
| Bronzefenchel | `anbau/sorten/bronzefenchel.md` | Anethol | ja |
| Borretsch | `anbau/sorten/borretsch.md` | — | **nein**, mit Begründung |

**Neue Sorte:** `anbau/sorten/_vorlage.md` kopieren, ausfüllen, hier in der Tabelle eintragen.
Nicht neu erfinden — der feste Aufbau ist der Grund, warum sich zwei Sorten überhaupt
vergleichen lassen.

Dass Borretsch eine Datei hat, obwohl er *nicht* ins Stressprogramm gehört, ist Absicht: Eine
begründete Absage ist so viel wert wie eine Rezeptur, weil sie verhindert, dass die Frage
alle drei Monate neu gestellt wird.

**Das eigentliche Verkaufsargument** ist nicht die Sorte, sondern die dokumentierte Rezeptur:
"wir bauen nicht nur an, wir haben die Kultivierung auf Geschmack optimiert und können sie
wiederholen."

---

## 6. Erntemengen

Die Mengenrechnung steht vollständig im Modell (Blatt `09-Ertrag` in `mikrogruen-rack-modell.xlsx`)
und hängt an drei Größen:

- **Ertragsdichte** [g/cm²] — sortenabhängig; kleinsamige Kräuter deutlich unter großblättrigen
  Sorten wie Sonnenblume oder Erbse
- **Trayfläche** — folgt aus dem GN-Format
- **Trayzahl** — der freie Parameter

Für die Sample-Phase ist die relevante Größe nicht das Gewicht, sondern die Zahl der Portionen:
eine Garnitur liegt typisch bei 5–15 g. Das Modell rechnet das um.

**Wichtig für die Katalogpflege:** Die Ertragsdichte ist im Modell aktuell ein einziger Wert für
alle Sorten (0,22 g/cm², kleinsamig angenommen). Sobald die ersten Chargen gewogen sind, gehört
je Sorte ein eigener Wert in diesen Katalog — das ist der Punkt, an dem aus Schätzung
Betriebswissen wird.

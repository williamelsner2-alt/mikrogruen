# CAD-Modellstand — FreeCAD `MikrogruenRack` + `MikrogruenModul`

*Stand: 22.08.2026 · FreeCAD 1.1.3 · Dateien `Desktop\Claude\mikrogruen\cad\MikrogruenRack.FCStd` und `cad\MikrogruenModul.FCStd` (getrennt seit Befund 4aa)*
*Nachbardokumente: Konstruktionsregeln in `technik/prototyp-bauplan.md`, Koordinaten in
`technik/3d-modell-briefing.md`, Werkzeugeinrichtung in `werkzeuge/freecad-mcp-setup.md`*

Was im Volumenmodell steht, wie es aufgebaut ist, und welche Fallen beim Weiterbauen warten.

> **Nachgezogen am 22.08.2026** (Audit-Befund B1b): Dateitrennung Rack/Modul eingearbeitet,
> Wanne statt geschweißtem Modulboden, Laufrollen-Stand, Abschnitt 7 vom
> Sync-Makro-Widerspruch befreit, veraltete Maße gekennzeichnet.

---

## 1. Baumstruktur

Seit Befund 4aa in **zwei Dateien**: `MikrogruenModul.FCStd` trägt Modul und GN-Behälter mit
eigener Parametertabelle (93 Objekte), `MikrogruenRack.FCStd` das Rack mit einer **Modulhülle
als Platzhalter** (74 Objekte) — ein Quader auf `mod_a_b × mod_a_t × mod_a_h`, den das
Rastermakro automatisch verwendet, wenn kein echtes `Modul` im Dokument liegt.

```
MikrogruenRack.FCStd
├── Parameter                     Tabellenobjekt — einzige Zahlenquelle (Aliasse s. Abschnitt 2)
├── Staenderwerk (Gruppe)         AUS DEM RASTER ERZEUGT, siehe Abschnitt 1a
│   ├── (X+1)·(Y+1) × Staender_Xi_Yj    Vierkantrohr 30×30, ueber den Fuessen bis rack_h
│   ├── Traversenringe                 Bauart 1: Z+2 Ringe · Bauart 2: nur Boden und Kopf
│   ├── Schiene_/Aufkantung_ (Bauart 2)  Winkel 20×20×1,5 je Modulplatz, zwei Stueck
│   ├── Laufrollen je Etage            Ø 25, drei je Seite, im Lochraster (Befund 4ac)
│   ├── Diagonale_links/rechts/hinten  Flachband 25×1,5 als Zugverband, AUSSEN (Befund 4z)
│   ├── (X+1)·(Y+1) × Stellfuss_Xi_Yj  Rack muss lotrecht stehen — sonst kippt das Bodengefaelle
│   └── 4 × Wandlasche_*          nur bei Y = 1; bei Y = 2 steht das Rack frei
├── Technikschraenke (Gruppe)     extern, nicht im Rack
│   ├── Elektronikschrank         haengt oben — Wasser kann nicht hinein
│   ├── Kabelverschraubung        Abgang nach unten, Feuchte laeuft nicht ein
│   ├── Hydraulikschrank          steht unten
│   ├── Stutzen_Vorlauf           zum Vorlaufrohr am Rack
│   ├── Stutzen_Ruecklauf         vom Fallrohr zurueck
│   └── Reservoir_Wasser          separater Behaelter neben dem Schrank (Befund 4y)
├── Versorgungsstrang (Gruppe)    hinten bei Y = 1, MITTIG bei Y = 2
│   ├── X × Vorlaufrohr_Si        Ø16, ein Steigsatz je Modulspalte
│   ├── X × Fallrohr_Si           Ø25, an ablauf_d gekoppelt
│   ├── X × Kabelkanal_Si         45 × 30 mm
│   └── 3 je Modulplatz           Gegen_Kupplung/Stecker/Ablauf_Si_Rj_Ek
├── Modulhuelle (Platzhalter)     Quader mod_a_b × mod_a_t × mod_a_h — haelt Bauraum frei
└── n_module × Modul_Si_Rj_Ek    App::Link; hintere Reihe um 180° gedreht

MikrogruenModul.FCStd
├── Parameter                     mitkopierte Tabelle, gleiche Aliasse — Abgleich via Sync-Makro
├── Modulschale_offen             Aussenschale, senkrechte Innenecken r 6 mm (Befund 4ae)
├── Frontklappe + Griff           Zugang zu den Trays im eingebauten Zustand
├── Tuerdichtung                  umlaufend, 4 mm, zwischen Schale und Klappe
├── 2 × Scharnier_*               links; Klappe schwenkt nach links auf — Detail offen, s. Abschn. 5
├── Verschluss                    rechts
├── Wanne (herausnehmbar)         gekantete Wanne r 4 mm, 10 mm Aufkantung, zwei Neigungen,
│                                 ein Tiefpunkt — liegt LOSE, keine Naht an der Wasserlinie
│                                 (Befund 4ae; ersetzt den frueher angeschweissten Modulboden)
├── Laufschiene                   gekantet 20 × 8 aus 1,5 mm, unter der Schale (Befund 4ac)
├── AblaufStutzen                 durch die Rueckwand, am Tiefpunkt der Wanne (ablauf_x = 433)
├── 3 × Schiene_*                 U-Profil aus Blech, laufen in Y (Auszugsrichtung) — Tray-Schienen
├── 2 × Quertraeger_*             U-Profil, tragen die Laengsschienen
├── 4 × Standoff_*                21 mm Freiraum der Stufe 1, wird bei Stufe 2 null
├── 3 × Anschlag_*                seitlich und hinten; vorn frei fuer den Auszug
├── 12 × Linerbolzen_*            Befestigungspunkte fuer die spaetere Daemmung
├── 6 × GN_S*_R*                  App::Link auf GN_Behaelter
├── GN_Behaelter (App::Part)      EIN Bauteil: Koerper, Boerdelrand, Substrat, Bewuchs
├── 3 × LED_Bahn / LED_Licht      je eine Bahn ueber einer Trayreihe
├── Spruehleiste + 2 Duesen       an der Innendecke
├── Luefter                       Rueckwand
└── Kupplung_Hydraulik, Stecker_M12
```

**Der Kern:** Modul und GN-Behälter existieren je **einmal**. Alles Weitere sind Links. Eine
Änderung an der Modulgeometrie wirkt sofort auf alle bestückten Plätze, eine Änderung am
Behälter auf alle Trays. Die Zahl der Modulplätze folgt aus dem Raster
`n_rack_x × n_rack_y × n_etagen`, die Zahl der bestückten Module aus `n_module` — beide sind
bewusst getrennt.

*(Die Objektnamen der Laufrollen und der Laufschiene sind hier beschreibend wiedergegeben —
beim nächsten Öffnen am Modell gegenprüfen und bei Abweichung diese Liste nachziehen.)*

---

## 1a. Das Raster ist ein Parameter, kein Entwurf

Seit dem 21.08. wächst das Rack in **allen drei Richtungen**. Die Topologie — wie viele Ständer,
wie viele Riegel, wie viele Anschlüsse — lässt sich nicht als Expression ausdrücken, weil sich
dabei die *Anzahl* der Objekte ändert. Deshalb erzeugt ein Makro sie neu:

```
…\FreeCAD\v1-1\Macro\   ← von hier werden sie ausgeführt
Desktop\Claude\mikrogruen\cad\   ← Sicherungskopien beim Modell
```

**Vier Makros, jedes für genau eine Aufgabe:**

| Makro | Was es tut | Wann |
|---|---|---|
| `MikrogruenParameter_Sync` | liest die Arbeitsmappe direkt und schreibt die Eingangsgrößen in **alle** offenen CAD-Dokumente | nach jeder Änderung in der Mappe |
| `MikrogruenRack_Raster` | baut Ständerwerk, Verband, Versorgungsstrang und Modulinstanzen neu auf | wenn sich die **Anzahl** von Teilen ändert |
| `MikrogruenModul_Radien` | setzt alle Verrundungsradien aus dem Parameterblatt | wenn ein Radius geändert wird |
| `MikrogruenWachhalten` | verhindert, dass Windows in den Standby geht, solange FreeCAD läuft | vor längeren unbeaufsichtigten Läufen |

**Reihenfolge bei einer Änderung:** Mappe ändern und speichern → `Parameter_Sync` → bei
Topologieänderungen zusätzlich `Rack_Raster` → bei Radienänderungen zusätzlich `Modul_Radien` →
Gegenprobe.

**Ablauf:** `n_rack_x`, `n_rack_y`, `n_etagen`, `n_module` im Parameterblatt ändern →
**Menü *Makro → Makros… → `MikrogruenRack_Raster` → Ausführen***.

> **Die häufigste Verwechslung:** Werte im Parameterblatt zu ändern reicht **nicht**. Expressions
> können Maße nachziehen, aber keine Objekte erzeugen oder löschen. Wer nur `n_rack_x` auf 2 setzt,
> bekommt ein Rack, das doppelt so breit gerechnet ist, aber weiterhin nur vier Ständer hat — die
> Riegel spannen dann ins Leere und das Bild sieht falsch aus. Erst das Makro stellt die Topologie
> wieder her. Es meldet danach im Berichtsfenster, was es gebaut hat. Es löscht Ständerwerk, Versorgungsstrang und alle Modul-Links und baut sie neu auf.
Alles Übrige — Modul, GN-Behälter, Technikschränke — bleibt unberührt.

| Regel | Warum |
|---|---|
| `n_rack_y` maximal 2 | Module werden nach vorn gezogen; eine dritte Reihe wäre ohne Bediengang unerreichbar. Das Makro bricht mit einer Fehlermeldung ab |
| Bei Y = 2 ein Strang **mittig** | Beide Reihen hängen an demselben Steigrohr, die hintere Reihe ist um 180° gedreht. Das ist der größte Einzelspareffekt beim Wachstum |
| Bei Y = 2 keine Wandlaschen | Das Rack steht frei im Raum — es muss von beiden Seiten zugänglich sein |
| Je Modulspalte ein eigener Steigsatz | Ein gemeinsames Fallrohr über mehrere Spalten bräuchte waagerechte Sammler; die verstopfen |

Die Gegenprobe ist Teil des Makros: Es meldet Rasterform, Zahl der neuen Objekte und alle
ungültigen Objekte.

> **Referenzfälle sind veraltet:** Die bisherigen Prüfwerte (`1 × 1 × 4` → 514 × 550 × 1720 mm,
> Bauart 1 **18,108 m** Profil, Bauart 2 **10,556 m** plus 0,41 m² Blechteile) stammen vom
> 21.08. mit Etagenteilung 400 mm. Seit Befund 4ac gilt **Etagenteilung 425 mm und Rackhöhe
> 1820 mm** (Laufrollen brauchen 25 mm Bauraum), seit Befund 4z zusätzlich das Hüllmaß
> **517 × 551,5 mm** durch den außenliegenden Verband (Ständermaß bleibt 514 × 550 — der
> Verband ist Anbauteil, kein Maßkettenglied). **Beim nächsten Makrolauf die neuen
> Referenzwerte am Modell abnehmen und hier sowie in der Arbeitsmappe nachziehen.**

**Die Winkel der Diagonalen sind Expressions**, keine festen Werte: `atan(Breite / Höhe)` aus den
Rackmaßen. Sie ziehen also mit, wenn sich Tiefe oder Höhe ändern — die *Anzahl* der Diagonalen
ändert nur das Makro.

---

## 2. Was im Parameterblatt ergänzt wurde

Über die ursprünglichen ~50 Aliasse hinaus:

| Alias | Wert | Zweck |
|---|---|---|
| `stufe` | 1 | 1 = einschalig, 2 = gedämmt |
| `wand_ist` | 1 mm | Wandaufbau im Ist-Zustand, abgeleitet aus `stufe` |
| `z_boden` | 1 mm | Innenboden im Ist-Zustand |
| `x_r0`, `y_r0` | 47 mm | Rasterursprung — auf den **Endzustand** bezogen |
| `z_auflage` | 77 mm | Oberkante Behälter über Modulunterkante |
| `z_tray_uk`, `z_pflanz_ok`, `z_led_uk`, `z_led_ok` | 37 / 177 / 327 / 342 mm | absolute Einbauhöhen |
| `rand_h`, `ruecksprung` | 3 / 8 mm | Bördelrand und Griffraum am GN-Behälter |
| `schnittstelle_t`, `strang_t` | 35 / 20 mm | Bauraum hinter dem Modul |
| `quergefaelle`, `neig_ges` | 1° / 2,236° | zweite Bodenneigung und resultierender Winkel |
| `anschlag_h` | 8 mm | Höhe der Aufkantungen |
| `n_module` | 1 | bestückte Module — Etagenplätze stehen separat in `n_etagen` |
| `anschlussfeld_h` | 0 mm | Höhe eines Verteilerfachs im Rack; 0 = Technik komplett extern |
| `eschrank_b/h/t` | 300/300/150 mm | Elektronikschrank |
| `hschrank_b/h/t` | 300/300/200 mm | Hydraulikschrank |
| `bolzen_d` | 6 mm | Liner-Gewindebolzen |
| `fuss_h` | 25 mm | Bauhöhe Stellfuß, im Sockel enthalten |
| `strang_t` | `= ablauf_d + 10 mm` | Bauraum hinten, folgt dem dicksten Element |
| `dichtung_d` | 4 mm | Türdichtung zwischen Klappe und Schale |
| `n_rack_x` | 1 | **Modulspalten nebeneinander** — Ständer werden zwischen den Spalten geteilt |
| `n_rack_y` | 1 | **Modulreihen in der Tiefe** — 1 an der Wand, 2 frei im Raum, mehr sperrt das Makro |
| `bauart` | 2 | 1 = Vollring je Etage, 2 = Auflageschienen mit Diagonalverband |
| `schiene_b`, `schiene_t` | 20 / 1,5 mm | Schenkel und Blechstaerke des Auflagewinkels |
| `diag_b` | 25 mm | Breite des Diagonalflachbands |
| `rueckwand` | 3 | 1 = vollflaechig, 2 = Kanalstreifen, 3 = offen |
| `wanne_h`, `wanne_r`, `wanne_spiel` | 10 / 4 / 2 mm | Innenwanne: Aufkantung, Biegeradius, Spiel zur Wand |
| `schale_r` | 6 mm | Biegeradius der senkrechten Innenecken; außen automatisch + Blechstärke |
| `ablauf_x`, `ablauf_z` | 433 / 12,5 mm | Lage des Ablaufs — am Tiefpunkt der Wanne, nicht mehr mittig |

**Die wichtigste Regel steckt in `z_auflage` und `x_r0`/`y_r0`:** Sie referenzieren
`wand_ausleg` (den gedämmten Endzustand), nicht `wand_ist`. Dadurch bleiben Trayebene,
Lichtabstand und Rasterlage beim Nachrüsten der Dämmung unverändert — genau die Forderung aus
Bauplan 6.2, Punkt 4. In Stufe 1 klafft dafür je Seite ein Spalt von 21 mm zwischen Schiene und
Modulwand; er wird von Standoffs überbrückt, die noch zu konstruieren sind.

Gegenprobe, die aufgeht: `z_led_ok + reserve_h + wand_ausleg = 384 mm = mod_a_h`.

---

## 3. Fallstricke, die Zeit gekostet haben

**Einheiten in Expressions.** `Parameter.mod_a_t - 60` mischt Millimeter mit einer
dimensionslosen Zahl. FreeCAD verwirft die Expression **stillschweigend** und markiert das
Objekt als `Invalid` — ohne Fehlermeldung. Immer `60 mm` schreiben. Dasselbe gilt für neue
Zellen im Parameterblatt: `sh.set("B77", "3")` erzeugt eine dimensionslose Zahl, `"3mm"` eine
Länge.

**Placement nie zweimal setzen.** Wer `Placement.Base.x` per Expression bindet und danach
`obj.Placement = App.Placement(...)` zuweist, löscht die Expressions und bekommt eine
NaN-BoundBox. Reihenfolge: erst alle Expressions, dann `obj.Placement.Rotation = ...`, dann
`Placement.Rotation.Angle` **ebenfalls** als Expression binden — sonst bleibt das Objekt
`Invalid`.

**Rotation um zwei Achsen.** Für den doppelt geneigten Boden ist die kombinierte Drehung als
Achse + Winkel abgelegt: Achse fest (−0,894 / 0,447 / 0,008), Winkel gebunden an `neig_ges`.
Ändern sich `bodenneigung` oder `quergefaelle`, muss `neig_ges` **und die Achse** neu berechnet
werden — das ist die einzige Stelle im Modell, die nicht von allein nachzieht.

**Korrupte Objekte bleiben korrupt.** Ein einmal zerschossenes Objekt lässt sich nicht durch
erneutes Setzen reparieren und blockiert den globalen Recompute für alle folgenden. Löschen und
unter **neuem Namen** neu anlegen.

**Vollkörper sind keine Blechteile.** Schienen und Querträger waren zunächst als massive Quader
modelliert. Rechnet man daraus über `Volumen / Blechstärke` die abgewickelte Fläche, kommt Unsinn
heraus — eine 8 × 15 mm Vollschiene ergäbe 120 mm Blechbreite statt der tatsächlichen 38 mm eines
U-Profils. Alles, was später als Blech zugeschnitten wird, muss auch als Blech modelliert sein.

**Die Modul-Links machten jede Änderung teuer** — *entschärft durch die Dateitrennung
(Befund 4aa)*: Mit drei aktiven Links lief jeder Recompute dreifach über die gesamte
Modulgeometrie, einfache Operationen liefen ins Timeout. Seit dem 21.08. lebt das Modul in
`MikrogruenModul.FCStd`, im Rack steht nur der Platzhalter-Quader — am Modul arbeiten heißt
seitdem: Moduldatei öffnen, dort ändern, fertig. Der alte Workaround (Links löschen, arbeiten,
Links neu anlegen) ist nur noch nötig, wenn das echte Modul wieder ins Rack-Dokument eingehängt
wird.

---

## 4. Bedienkonzept — entschieden am 19.08.2026

Die Entnahmerichtung der Trays war offen und blockierte die Schienenlage. Entschieden:

**Die Trays gleiten nach vorn heraus.** Nach oben geht nicht — Moduldecke und LED-Ebene sind im
Weg, und beide fahren beim Herausziehen des Moduls mit. Daraus folgen drei Dinge:

1. **Die Schienen laufen in Y**, also in Auszugsrichtung, und tragen die Trays an ihren
   Längskanten. Drei Stück je Modul: außen 8 mm, in der Mitte 18 mm für beide Spalten.
2. **Die Modulfront ist eine Klappe.** Ohne sie kommt man nicht an die Trays, ohne das ganze
   Modul zu ziehen. Sie überlappt die Öffnung umlaufend um 12 mm.
3. **Vorne darf kein Anschlag sein.** Seitlich und hinten sichern Aufkantungen die Trayposition,
   die Vorderkante bleibt frei.

Dass die hinterste Trayreihe erst nach den vorderen entnommen werden kann, ist unkritisch: Die
Staffelungslogik in `anbau/sorten-und-staffelung.md` sorgt dafür, dass ohnehin alle Sorten am
selben Tag geerntet werden.

**Zwei Bedienzustände** ergeben sich daraus: Klappe öffnen für die tägliche Arbeit, Modul ziehen
für den Tausch. Das Ziehen bleibt der Kern der Modularität, ist aber nicht mehr der Normalfall.
Seit Befund 4ac **rollt** das Modul dabei auf Rackrollen statt zu gleiten (Auszugskraft ~11 N
statt ~108 N); der Auszugsstopp fehlt noch (P-10).

---

## 5. Was noch fehlt

- **Scharniere und Verschluss der Frontklappe im Detail** — als Kaufteil oder Kantteil
  auslegen; offener Punkt aus der CAD-Übergabe vom 22.08. (steht seit 22.08. auch in
  `projekt/01-status.md`, Nächste Schritte)
- **Die Leitungsstrecke selbst** zwischen Schränken und Rack ist bewusst nicht modelliert: Die
  Schrankposition ist frei, die Schlauchlänge ergibt sich vor Ort. Die Anschlusspunkte auf beiden
  Seiten stehen, und `12-Installationsgrenzen` in der Arbeitsmappe rechnet, wie weit es maximal
  sein darf
- **Perforation der Modulrückwand** für den Lüfter — bisher ist er nur angedeutet
- **Dübel und Schrauben** für die Wandlaschen — die Laschen selbst sind gebaut; Wandbefestigung
  ist beim einspaltigen Rack Pflicht von Anfang an (`projekt/01-status.md`, Befund 4v; P-31)
- **Bodenperforation** der GN-Behälter — bewusst offen gelassen, das Lochbild hängt am Substrat,
  das noch nicht gewählt ist. Ein hartcodiertes Muster wäre hier ein Rückschritt
- **Auszugsstopp** außerhalb der Rollenspur (P-10, I-02)
- **Kragen am Wannenablauf** (P-34) — Parameter `kragen_h` steht bereit, Geometrie fehlt
- **Abwicklungen und DXF** für den Wasserstrahl
- **Schweißnahtvorbereitung** und Kantenradien — für die Fertigung, nicht für die Auslegung

---

## 6. Gegenprobe CAD ↔ Arbeitsmappe

Am 19.08.2026 zum ersten Mal durchgeführt und **sofort ein Fehler gefunden**: Die Mappe rechnete
den Blechbedarf je Modul nur aus der Hüllfläche und übersah den Innenausbau — 0,283 m² je Modul,
rund 30 € (Details in `projekt/01-status.md`, Befund 4k).

**So geht die Prüfung:** Für jedes Blechteil `Shape.Volume / blech` rechnen, das ergibt die
abgewickelte Fläche. Summieren, mit dem Verschnittzuschlag multiplizieren und gegen `03-Modul`
Zeile 51 halten. Nach der Korrektur stimmen beide Seiten auf 0,7 % überein.

**Am 21.08. zum zweiten Mal fündig geworden — diesmal beim Ständerwerk.** Die Mappe rechnete die
Profillänge als `4 · rack_h + (Z+2) · 2 · (Breite + Tiefe)`. Beides war zu großzügig: Die Ständer
stehen auf den Füßen und beginnen erst bei `fuss_h`, und die Riegel laufen nur **zwischen** den
Ständern, nicht um sie herum — der äußere Umfang zählt jede Ecke doppelt. Statt 19,648 m sind es
**18,108 m** (Stand 21.08., Etagenteilung 400 — seit 4ac neu abzunehmen, s. Abschnitt 1a);
Ständerwerk 157 → 145 €, Masse 34,8 → 32,0 kg.

Die Prüfung geht so: über alle `Part::Box` im Ständerwerk laufen, die Kante identifizieren, die
**nicht** `profil` ist, und aufsummieren. CAD und Mappe stimmen seitdem auf drei Nachkommastellen.

**Diese Prüfung gehört nach jeder größeren Geometrieänderung wiederholt.** Sie ist die einzige
Möglichkeit, Fehler zu finden, die in einem der beiden Modelle allein unsichtbar bleiben.

---

## 7. Arbeitsweise

Gerechnet wird in `mikrogruen-rack-modell.xlsx`, konstruiert in FreeCAD. **Die Werte fließen
seit Befund 4ab automatisch:** Blatt `16-CAD-Parameter` der Mappe listet jede Eingangsgröße, das
Makro `MikrogruenParameter_Sync` (Abschnitt 1a) liest die Mappe direkt und schreibt die Werte in
alle offenen CAD-Dokumente — Rack und Modul im selben Lauf. Was **nicht** mitfließt: die
Topologie (Anzahl der Teile — dafür das Rastermakro, P-20) und die Fillet-Radien (dafür das
Radienmakro, P-35). Abgeleitete Maße bleiben im CAD Expressions und werden nie überschrieben.

Zuletzt vollständig abgeglichen am 21.08.2026: Raster **1 × 1 × 4**, Technik extern,
Strangbauraum an `ablauf_d` gekoppelt. Seither sind Befund 4ac (Etagenteilung 425 mm, Rackhöhe
1820 mm) und 4z (Verband außen, Hüllmaß 517 × 551,5 mm) dazugekommen — **der nächste
Sync-und-Gegenprobe-Lauf hat diesen Stand zu bestätigen.** Die Rasterform steht in beiden
Modellen als Parameter: in der Mappe `01-Eingaben` Abschnitt Q, im CAD als `n_rack_x` /
`n_rack_y`. Die Arbeitsmappe rechnet zusätzlich Massen und Standsicherheit (Blatt
`11-Massen-Statik`), die im CAD nicht abgebildet sind.

In Skizzen niemals feste Zahlen, immer Referenzen auf die Aliasse.

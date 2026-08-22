# Prototyp Nr. 1 — Konstruktion und Technik

*Inhaltsstand: 19.08.2026 · Struktur: 19.08.2026*
*Nachbardokumente: Ablauf in `technik/zeitplan-prototyp.md`, Koordinaten und Baugruppen in
`technik/3d-modell-briefing.md`, Prinzipskizze `technik/rack-architektur.svg`, Sorten in
`anbau/sorten-und-staffelung.md` · Zahlen in `mikrogruen-rack-modell.xlsx`*

> **Ersetzt die Box-Version vom 18.08.2026 vollständig.** Aus dem geschlossenen Einzelschrank ist
> ein modulares Rack geworden; die alte Arbeitsmappe `mikrogruenboxmodell.xlsx` gilt nicht mehr.

Rein technisches Dokument. Sortenwahl, Aussaatlogik und Ertragsfragen stehen in
`anbau/sorten-und-staffelung.md`, der Ablauf in `technik/zeitplan-prototyp.md`.

**Alle Maße sind parametrisch.** Konkrete Zahlen stehen nicht hier, sondern in
`mikrogruen-rack-modell.xlsx`. Dieses Dokument beschreibt die *Regeln*, nach denen die Maße
entstehen; die Arbeitsmappe rechnet sie aus.

---

## 1. Architektur: Rack + austauschbare Module + externe Technikschränke

Kein Einzelgehäuse. Ein offenes Ständerwerk trägt N gleiche Klimamodule. Die Technik sitzt
**nicht mehr im Rack**, sondern in zwei eigenständigen Schränken daneben.

| Baugruppe | Was darin passiert | Was sich ändern darf |
|---|---|---|
| Ständerwerk | trägt, führt, verteilt Versorgung | Etagenzahl, Höhe |
| Modul | ein abgeschlossener Klimaraum | Inhalt, Klima, Trayformat, Steuerung |
| Elektronikschrank | Steuerung, Netzteile, Relais | Ausbaustufe, später Serversteuerung |
| Hydraulikschrank | Reservoir, Zentralpumpe | Volumen, Zahl versorgter Racks |

**Warum die Technik aus dem Rack heraus ist** (Entscheidung 19.08.2026):

1. **Eine Trennwand trennt nicht.** Trocken- und Nasszone lagen in einem gemeinsamen Fach,
   nach oben zum selben Luftraum offen — 1 mm Blech teilt den Raum, nicht die Atmosphäre.
   Zwei gekapselte Gehäuse trennen wirklich.
2. **Schwerkraft arbeitet mit statt gegen.** Der Elektronikschrank hängt oben, der
   Hydraulikschrank steht unten. Ein Leck kann die Elektronik nicht erreichen.
3. **Das Rack wird 160 mm niedriger** und gewinnt damit Platz für eine weitere Etage, ohne die
   Ergonomiegrenze zu überschreiten.
4. **Die Technik skaliert unabhängig vom Rack.** Ein Schrankpaar kann mehrere Racks versorgen;
   der Parameter `Racks je Schrankpaar` in der Arbeitsmappe rechnet den Anteil je Rack aus. Das
   ist die Voraussetzung für Fahrplan-Phase 6 (Anlagen beim Kunden) und für einen späteren
   Wechsel auf zentrale Serversteuerung.

Der Preis: zwei gekapselte Gehäuse brauchen mehr Blech als ein geteiltes Fach. Beim ersten Rack
ist das ein Aufschlag, ab dem zweiten Rack am selben Schrankpaar ein Vorteil.

Das Drei-Zonen-Prinzip bleibt bestehen, ist aber nicht mehr eine Frage der Gehäusegeometrie,
sondern der Baugruppengrenzen: Growkammern im Rack, Trockenzone im Elektronikschrank, Nasszone
im Hydraulikschrank. Im Rack bleibt nur der Versorgungsstrang an der Rückwand.

Der Vorteil ist nicht Platzersparnis, sondern **Änderbarkeit ohne Neukonstruktion**. Ein Modul
mit anderem GN-Format, anderem Klima oder eigenem Salzwasserreservoir (Queller) fügt sich in
dasselbe Rack, solange es die Schnittstelle aus Abschnitt 2 einhält.

Das Drei-Zonen-Prinzip bleibt bestehen, wandert aber eine Ebene nach oben: Trocken- und Nasszone
liegen nebeneinander im Technikfach, die Growkammern sind die Module darüber.

---

## 2. Modulschnittstelle — der eigentliche Konstruktionsgegenstand

Solange diese drei Größen fix bleiben, ist jedes Modul gegen jedes andere tauschbar. Sie sind
deshalb *vor* jeder Detailkonstruktion festzulegen und danach nicht mehr anzufassen.

**Mechanisch.** Modulaußenmaß und Lochrasterteilung des Ständerwerks. Die Teilung wird analog
zur 19-Zoll-Technik gewählt: Module rasten in Vielfachen einer Grundteilung ein, ein hohes Modul
belegt zwei Teilungen. Die Arbeitsmappe rundet die Modulhöhe auf die Teilung auf und weist den
Rundungsverlust aus — ist er groß, passt entweder die Teilung oder die Modulhöhe nicht.

**Elektrisch.** Ein Steckverbinder je Modul: Versorgungsspannung, Masse, Busleitung. Für die
Umgebung richtig ist ein M12-Rundsteckverbinder — in der Lebensmitteltechnik Standard, gedichtet,
kodiert, nicht falsch herum steckbar. Alles Weitere (Ventil, Lüfter, Sensoren, ggf. eigener
Controller) bleibt Sache des Moduls und ist von außen nicht sichtbar.

**Hydraulisch.** Eine Schnellkupplung im Vorlauf, ein Ablauf in die Sammelrinne. Kupplung in
Edelstahl mit lebensmittelechter Silikondichtung; das Ventil sitzt im Modul, nicht im Rack —
sonst wäre die Zahl der Ventile im Technikfach an die Etagenzahl gekoppelt und die Schnittstelle
nicht mehr sauber.

Die Rücklaufführung ist der Grund, warum der Modulboden geneigt ausgeführt wird: das Wasser
läuft in die Sammelrinne an der Rückwand und von dort ins Reservoir. Keine Auffangschale unter
irgendeinem Tray.

---

## 3. Materialprinzip: kein Mikroplastik, keine Ausgasung

Grundsatz für jede Bauteilentscheidung: nichts, das in Produktnähe Mikroplastik abgibt, ausgast
oder sich chemisch löst.

| Ausgeschlossen | Problem |
|---|---|
| PVC (Hartschaum, Rohre, Folie) | Weichmacher können migrieren, Mikroplastik-Abrieb an Kanten |
| Mylar/BOPET-Reflexionsfolie | Beschichtung blättert bei Belastung ab, Partikel fallen in Trays |
| OSB/Spanplatte/MDF | Formaldehydharz-Verleimung gast dauerhaft aus |
| Standard-Growzelt-Gewebe (PU-Oxford) | PU-Beschichtung hydrolysiert und degradiert über Zeit |
| Verzinkter Stahl in Wasserkontakt | Zink kann sich bei feuchtem Kontakt lösen |
| Unbehandelter Baustahl | Rostpartikel als Kontaminationsrisiko |
| PVC-Wasserschläuche | Weichmacher-Austrag ins Bewässerungswasser |
| Normale Sanitär-Silikondichtmasse | Enthält oft Fungizide/Biozide |
| ABS, generische 3D-Druck-Kunststoffe in Produktnähe | Nicht lebensmittelecht zertifiziert, Abrieb möglich |
| **EPS/XPS/PU-Dämmschaum** | Styrolabrieb bzw. Isocyanat-Ausgasung — scheidet als Dämmstoff aus |

**Ersatzmaterialien:** Edelstahl 1.4301 (V2A) als Hauptmaterial in Produkt- und Feuchtenähe,
1.4404 (V4A) für dauerhaft im Freien stehende Bauteile. Wasserführung aus lebensmittelechtem
Silikon oder PE. **Dämmung: Schaumglas** — rein mineralisch, geschlossenzellig, gast nicht aus,
nimmt kein Wasser auf und ist zwischen zwei Edelstahlschalen vollständig gekapselt. Alternativen
sind ein reiner Luftspalt (billiger, schlechter) oder Vakuum-Isolationspaneele (dünner, teurer,
druckempfindlich).

---

## 4. Maßkette — wie die Geometrie entsteht

### 4.1 Vom Tray zum Raster

```
Traylänge, Traybreite = Nachschlag GN-Format in DIN 66075
Reihen                = aufgerundet( Trays je Etage / Spalten )
Rasterbreite  X       = Spalten · Trayausdehnung_X + (Spalten − 1) · Fügespalt
Rastertiefe   Y       = Reihen  · Trayausdehnung_Y + (Reihen  − 1) · Fügespalt
```

**Warum der Spalt fast verschwindet.** Bisher trug er zwei Funktionen: Griffzugang und
Scherenfreiheit beim Ernten. Beide entfallen, weil das Tray zum Ernten aus dem Modul genommen
wird — geschnitten wird auf der Arbeitsfläche, nicht im Gerät. Übrig bleibt ein reiner
**Fügespalt** in der Größenordnung weniger Millimeter für Fertigungstoleranz an Schnitt und
Schweißnaht sowie das Auszugsspiel. Auf null geht er nicht: ein Behälter, der auf Nennmaß in
sein Feld passt, klemmt in der Praxis.

**Der Griff wandert in die Auflageschiene.** Der GN-Behälter hängt mit seinem Bördelrand auf
zwei Schienen, der Behälterkörper darunter ist schmaler. Dieser Rücksprung ist der Griffraum —
konstruktiv sauberer als ein Spalt, weil er keine Rasterfläche kostet. Die Schienenhöhe geht
dafür in die Modulinnenhöhe ein.

Zwei Flächen entstehen, und sie sind **nicht austauschbar**:

- **Anbaufläche netto** = Trayzahl · Trayfläche → Basis für Wasser, Substrat, Saat, Ertrag
- **Rasterfläche brutto** = Rasterbreite · Rastertiefe → Basis für die Lichtrechnung

Der Quotient beider ist der **Packungsgrad**. Mit dem alten Erntespalt lag er im Bereich um 0,75,
mit dem reinen Fügespalt nahe 1 — die Lichtrechnung verliert damit fast keine Fläche mehr an
Zwischenräume.

### 4.2 Vom Raster zum Modul

```
Modulinnenbreite = Rasterbreite + 2 · Wandabstand
Modulinnentiefe  = Rastertiefe  + 2 · Wandabstand
Modulinnenhöhe   = Schienenhöhe + Trayhöhe + Pflanzenhöhe + Lichtabstand
                   + LED-Bauhöhe + Reserve
Wandaufbau       = 2 · Blechstärke + Auslegungs-Dämmstärke
Modulaußenmaß    = Soll-Innenmaß + 2 · Wandaufbau   (je Richtung)
```

Die Doppelschale ist die Konsequenz aus Abschnitt 3: der Dämmstoff darf weder mit dem Produkt
noch mit der Raumluft in Kontakt kommen, also liegt er zwischen zwei Blechen.

**Die Außenkontur folgt immer dem gedämmten Endzustand**, auch wenn zunächst einschalig gebaut
wird. Der Grund steht in Abschnitt 4.3: das Außenmaß bestimmt Führungsspiel, lichte Rackbreite,
Etagenteilung und Rackhöhe. Würde es sich beim Nachrüsten ändern, änderte sich das Rack — und
die Modulschnittstelle aus Abschnitt 2 wäre keine mehr. Die Dämmung wächst deshalb **nach innen**,
nie nach außen. Details in Abschnitt 6.

### 4.3 Vom Modul zum Rack

```
Etagenteilung   = aufgerundet( (Modulaußenhöhe + 2 · Führungsspiel) / Rastermaß ) · Rastermaß
Lichte Breite   = MAX( Modulaußenbreite + 2 · Führungsspiel, Technikfachbreite )
Rackaußenmaße   = lichte Maße + Ständerprofile
Rackhöhe        = Etagen · Teilung + Technikfachhöhe + Sockel + Rahmen
```

Dieselbe MAX-Kopplung wie zuvor, nur eine Ebene höher: entweder bestimmt das Modul die
Rackbreite oder das Technikfach. Die Arbeitsmappe zeigt an, welcher Fall vorliegt.

**Kennzahl des Racks** ist der Flächenfaktor: Anbaufläche netto je Quadratmeter Stellfläche.
Er steigt mit jeder Etage, aber unterproportional, weil Modulwand, Dämmung und Führungsspiel
je Etage erneut anfallen. Größere Module verbessern ihn stärker als mehr Etagen, weil der
Wandumfang gegenüber der Fläche langsamer wächst.

---

## 5. Klimazonen

### 5.1 Der entscheidende Befund

In einem kleinen, gedämmten Modul ist die **LED die dominierende Wärmequelle** — nahezu ihre
gesamte elektrische Leistung wird zu Wärme, die Photonenenergie verlässt das Modul praktisch
nicht. Bei den hier üblichen Größenordnungen liegt die interne Last deutlich über dem, was die
Hülle passiv abgeben kann.

Daraus folgt die Umkehrung der Intuition: **Klimazonen entstehen über gesteuerte Wärmeabfuhr,
nicht über Heizen.** Eine Heizmatte ist der Sonderfall (kalte Umgebung, Elterngartenphase), der
Normalfall ist ein drehzahlgeregelter Lüfter.

Und weiter: **Dämmung macht das Modul wärmer, nicht kälter.** Ihr Zweck ist nicht die
Temperaturhaltung gegen die Umgebung, sondern die **Entkopplung der Etagen voneinander**. Ohne
sie zieht jede Etage die Nachbaretage mit.

### 5.2 Rechenweg

```
U-Wert       = 1 / ( 1/α_innen + Dämmstärke/λ + 1/α_außen )
UA           = U · Hüllfläche
ΔT passiv    = interne Wärmelast / UA
Volumenstrom = abzuführende Wärme / ( ρ_Luft · c_p · ΔT_Ziel ) · 3600
Luftwechsel  = Volumenstrom / Modulvolumen
```

Der Heizfall ist derselbe Ausdruck mit umgekehrtem Vorzeichen: Heizleistung = UA · ΔT − interne
Last, nach unten auf null begrenzt.

### 5.3 Der Zielkonflikt, den man nicht wegkonstruiert

Temperaturregelung über Luftaustausch kostet Feuchtekontrolle. Je höher der Luftwechsel, desto
näher liegt die Modulfeuchte an der Raumluft. Die Arbeitsmappe bewertet die Luftwechselrate
genau deshalb qualitativ mit.

Wer beides will, braucht einen geschlossenen Kreis mit Peltier-Element oder Wärmetauscher statt
Abluft — mit Kondensatanfall als neuem Problem. Das ist eine Ausbaustufe V3, keine
Prototypenaufgabe.

### 5.4 Warum gleichmäßige Dämmung nichts bringt

Die Arbeitsmappe weist den **Kopplungsanteil** aus: den Anteil des Wärmestroms, der über Boden
und Decke zu den Nachbaretagen fließt statt an die Umgebung.

```
Kopplungsanteil = U · 2 · Bodenfläche / ( U · Hüllfläche )
                = 2 · Bodenfläche / Hüllfläche
```

**Der U-Wert kürzt sich heraus.** Sind alle sechs Flächen gleich gedämmt, ist der
Kopplungsanteil eine rein geometrische Größe — der Dämmstoff verschwindet aus der Rechnung. Ein
vollständig gedämmtes Modul ist gegenüber seinen Nachbarn exakt so stark gekoppelt wie ein
ungedämmtes. Für Klimazonen ist Volldämmung damit wirkungslos.

Sie ist sogar dreifach nachteilig: das Modul wird deutlich wärmer (die Hülle gibt weniger ab,
während die LED unverändert einheizt), es braucht spürbar mehr Lüftungsvolumenstrom, um auf
Zieltemperatur zu bleiben, und sie verdoppelt den Blechbedarf.

**Wirksam ist nur ungleichmäßige Dämmung.** Gedämmt werden ausschließlich die beiden Flächen,
die zu den Nachbarn zeigen — Boden und Decke. Die vier Seitenwände bleiben einschalig und geben
weiter an den Raum ab. Damit sinkt der Zähler, während der Nenner groß bleibt: der
Kopplungsanteil fällt deutlich, die Modultemperatur bleibt nahe am ungedämmten Wert, und es
werden nur zwei statt sechs Flächen doppelschalig ausgeführt.

Die Arbeitsmappe rechnet alle drei Varianten nebeneinander (Blatt `06-Klima`, Stufen 1, 2, 2b)
und benennt die beste. Erwartungshaltung auch dann: **wenige Kelvin** stabiler Unterschied
zwischen Etagen — genug für Keimphase gegen Hauptkultur, genug für eine kontrollierte
Stressphase vor der Ernte. Getrennte Kühl- und Warmzonen im Sinne von zwanzig Kelvin sind es
nicht.

**Was dagegen ohne jeden Aufwand entkoppelt ist:** Licht. Photoperiode, Intensität und
Spektrum sind je Modul frei, weil jedes Modul einen eigenen LED-Kreis hat und optisch ohnehin
geschlossen ist. Ebenso die Bewässerung, weil jedes Modul sein eigenes Ventil hat. Die
Klimazonen-Idee trägt also auch dann, wenn die Temperaturspreizung am Ende bescheiden ausfällt.

---

## 6. Ausbaustufen — einschalig bauen, gedämmt nachrüsten

### 6.1 Das Prinzip

Alle Module werden zunächst **einschalig** gefertigt, aber nach der Außenkontur des gedämmten
Endzustands. Dämmung und Innenschale (der *Liner*) werden später nach innen eingesetzt.

| Stufe | Ausführung | Zweck |
|---|---|---|
| 1 | nur Außenschale | schnellster Weg zur ersten Charge, geringste Materialkosten |
| 2 | Liner und Dämmung auf allen Flächen | thermische Abschottung gegen den Raum |
| 2b | Liner und Dämmung nur an Boden und Decke | Trennung der Etagen untereinander (siehe 5.4) |

Weil das Außenmaß in allen Stufen gleich ist, sind Module beliebig mischbar: eine Etage
gedämmt, zwei einschalig, im selben Rack, ohne Anpassung. Das erlaubt einen sauberen Vergleich
unter sonst identischen Bedingungen — dieselbe Sorte, dieselbe Charge, zwei Klimavarianten.
Genau diese Art Messung ist es, die später eine dokumentierte Rezeptur begründet.

In Stufe 1 bleibt je Seite ein toter Raum in Höhe des späteren Wandaufbaus. Er kostet nichts
außer Luft und wird beim Nachrüsten vom Liner belegt.

### 6.2 Was in Stufe 1 bereits vorhanden sein muss

Nachrüstbarkeit entsteht nicht später, sondern jetzt im CAD. Vier Punkte:

1. **Liner als einsetzbares Bauteil.** Das Modul ist eine geschweißte Außenschale, kein
   geschlossener Kasten. Ohne Zugang von innen ist kein Nachrüsten möglich.
2. **Befestigungspunkte vorsehen.** Gewindestehbolzen oder Standoffs auf der Innenseite der
   Außenschale, Position jetzt festgelegt. Am Wasserstrahl und an der CNC kostet das im selben
   Arbeitsgang fast nichts; nachträglich bedeutet es Bohren in ein fertiges Gehäuse.
3. **Durchführungen für den Endzustand auslegen.** Kabelverschraubungen, Wasserzulauf, Ablauf
   und Sensordurchführungen queren später den vollen Wandaufbau statt nur ein Blech.
   Klemmbereich und Öffnungsdurchmesser entsprechend wählen. Der Ablauf ist der kritischste
   Punkt: die Öffnung in der Außenschale wird überdimensioniert ausgeführt, der eigentliche
   Ablaufstutzen sitzt in beiden Stufen als Flansch von innen — in Stufe 2 mit längerem Stutzen.
4. **Innere Einbauten auf absolute Höhen referenzieren, nicht auf Blechoberflächen.**
   Auflageschienen und LED-Träger sitzen auf Standoffs in fest definierter Höhe über der
   Modulunterkante. Sonst verschieben sich beim Nachrüsten Trayebene und Lichtabstand um den
   Wandaufbau — und die berechnete PPFD stimmt nicht mehr.

### 6.3 Konsequenz für die Fertigung

Der Liner wird nach dem Einsetzen am oberen Rand mit der Außenschale verschweißt und
verschliffen. Damit ist der Dämmstoff dauerhaft gekapselt, kein Wasser gelangt in den
Zwischenraum, und es gibt keine Dichtmasse als Schwachstelle. Preis dafür: **das Nachrüsten ist
einseitig.** Ein gedämmtes Modul lässt sich nicht wieder in Stufe 1 zurückbauen. Das ist
vertretbar, sollte aber bewusst entschieden werden, bevor der erste Liner eingesetzt wird.

### 6.4 Empfohlener Weg

Alle Module in Stufe 1 bauen, mit den Vorbereitungen aus 6.2. Nachrüsten erst, wenn die
Logdaten der ersten Charge zeigen, wie stark sich die Etagen tatsächlich beeinflussen — und
dann nach Stufe 2b, nicht 2. Das verschiebt einen erheblichen Teil der Materialkosten nach
hinten und macht die Entscheidung datengestützt statt spekulativ.

---

## 7. Gehäuse- und Modulfertigung

Kein gekauftes Growzelt: die Produktkategorie ist auf Geruchsdichtheit für Cannabis ausgelegt,
eine für Mikrogrün irrelevante Anforderung, und das Material scheitert an Abschnitt 3.

Stattdessen Eigenfertigung über den Werkstattzugang der Ausbildungsfirma (Schweißbau,
Edelstahlbau, Wasserschneider, CNC, Sandstrahlkabine — Rohmaterial und Maschinenstunden selbst
zu tragen).

**Materialspezifikation**

- Modulschalen: V2A-Blech, dünn ausführbar — das Modul trägt keine Last, das Ständerwerk trägt
- Ständerwerk: Vierkantrohr, Kantenlänge als Parameter; hier liegt die Tragfunktion
- Oberfläche: sandgestrahlt — matt, blendfrei, hygienisch, entfernt Anlauffarben

**Fertigungsreihenfolge**

1. **CAD** — ein parametrisches Modulmodell, aus dem alle Module abgeleitet werden
2. **Wasserschneider** — Paneele inkl. Kabeldurchführungen, Lüftungsschlitzen, Schienenaufnahmen
   und dem Lochraster der Ständerprofile direkt in der Kontur
3. **Schweißbau** — Ständerwerk fügen, Modulschalen kanten und fügen
4. **CNC-Fräse** — Standoffs für LED-Profil, Sensordurchführungen, Kupplungsaufnahmen
5. **Sandstrahlkabine** — Finish nach dem Schweißen

**Fertigungsvorteil der Modularität:** ein Modul wird konstruiert, N-mal geschnitten. Der
Rüstaufwand am Wasserstrahl fällt einmal an, die Grenzkosten jeder weiteren Etage sind reines
Material. Das ist der Grund, warum die Arbeitsmappe Modulkosten und Basiskosten getrennt
ausweist.

---

## 8. Anzuchtgefäße

**Gastronorm statt Kunststoff-Tray.** GN ist nach DIN 66075 / EN 631 genormt, in Edelstahl
lebensmittelecht, und teilt die Normung mit den Küchen der Zielrestaurants.

**Einzeln entnehmbar** ist jetzt tragendes Prinzip, nicht nur Komfort: die gestaffelte Aussaat
verlangt es, das Ernten außerhalb des Moduls verlangt es, und der Transport zum Kunden im selben
Behälter verlangt es. Der Behälter ist damit Anzuchtgefäß, Erntegefäß und Präsentationsgefäß in
einem.

**Formatwahl** ist ein freier Parameter:

- Kleines Format (GN 1/9, 1/6) → viele Sorten je Etage, wenig Menge je Sorte
- Großes Format (GN 1/3, 1/2, 1/1) → wenige Sorten, dafür Liefermenge

Gemischte Bestückung ist möglich, weil GN-Formate flächenkompatibel sind: zwei GN 1/9 belegen
die Fläche eines GN 1/6. Ein Modul kann also gleichzeitig Sample-Formate und Liefermengen
tragen — vorausgesetzt, die Auflageschienen sind auf die kleinste vorgesehene Teilung ausgelegt.

**Perforation:** kleine GN-Formate sind überwiegend glatt verfügbar. Lösung: glatte Blanks
beziehen, Bodenperforation selbst per Wasserstrahl schneiden — Lochbild passend zum Substrat
statt generisches Dampfgarer-Raster.

---

## 9. Lichtsystem

```
erforderlicher Photonenstrom = Ziel-PPFD · Rasterfläche brutto
erforderliche LED-Leistung   = Photonenstrom / LED-Effizienz
elektrisch nötige Länge      = Leistung / (W pro Meter)
geometrisch nötige Länge     = Rasterbreite · Reihenzahl
gewählte Länge               = aufgerundet( MAX(beide) )
```

Die geometrische Bedingung ist im Rasterlayout schärfer als früher: je Trayreihe wird eine Bahn
über die Rasterbreite geführt, sonst bleiben die hinteren Reihen unterversorgt. Bei mehreren
Reihen ist deshalb regelmäßig die Geometrie und nicht die Elektrik die bestimmende Größe — die
tatsächlich erreichte PPFD liegt dann über dem Zielwert.

Rückrechnung als Kontrolle:

```
DLI = PPFD · Photoperiode · 3600 / 1 000 000       [mol/m²/Tag]
```

Die Arbeitsmappe bewertet gegen den für Mikrogrün üblichen DLI-Bereich. Liegt der Istwert
deutlich über Ziel, ist die Antwort nicht ein kürzerer Streifen, sondern Dimmen oder eine
kürzere Photoperiode — beides kostet nichts und ist je Modul einstellbar.

---

## 10. Bewässerung

```
Tagesbedarf je Modul = spezifischer Bedarf [l/m²/Tag] · Anbaufläche netto je Modul
Menge je Zyklus      = Tagesbedarf / Zyklen pro Tag
Ventilöffnungszeit   = Menge je Zyklus / effektiver Düsendurchsatz
Reservoirbedarf      = Tagesbedarf gesamt · gewünschte Autonomie
```

**Eine Pumpe, N Ventile.** Die Pumpe hält den Vorlauf unter Druck, jedes Modul entnimmt über
sein eigenes Magnetventil. Das entkoppelt die Bewässerungspläne der Etagen vollständig
voneinander, ohne die Pumpe zu vervielfachen. Ventilwerkstoffe: Gehäuse Edelstahl oder
Messing, Membran lebensmittelechtes Silikon oder EPDM — die üblichen Polyamidgehäuse fallen
unter Abschnitt 3.

**Module nacheinander bewässern, nicht gleichzeitig.** Das hält die Spitzenlast unabhängig von
der Etagenzahl und stellt sicher, dass der Vorlaufdruck nicht einbricht.

**Der effektive Düsendurchsatz ist nicht die Nennförderleistung der Pumpe.** Sprühdüsen drosseln
erheblich. Der Wert ist ein eigener Parameter und nach dem Aufbau einmal zu messen (Behälter
unterstellen, 60 s laufen lassen, wiegen).

**Untergrenze der Schaltzeit:** unter etwa zwei Sekunden dominiert die Ventilträgheit gegenüber
der Fördermenge. Wird die Rechnung so kurz, ist die Antwort weniger Zyklen pro Tag, nicht eine
kürzere Öffnungszeit.

---

## 11. Elektrik und Bus

**Zwei Spannungsebenen.** Ein Leistungskreis für LED, Lüfter, Ventile und Pumpe; ein Logikkreis
für Steuerung und Sensorik. Bei mehreren Etagen lohnt sich 24 V statt 12 V im Leistungskreis:
halber Strom, dünnere Leitungen im Ständerwerk, geringere Verluste. Alle Massen auf einen Punkt,
sonst driften die Analogmessungen.

**Skalierungsgrenzen, die die Arbeitsmappe prüft**

| Größe | Wächst mit | Grenze |
|---|---|---|
| Schaltkanäle | 2 je Modul + 1 zentral | freie GPIO am ESP32 |
| Analogkanäle | 1 je Modul | nur ADC1 nutzbar, wenn WLAN aktiv |
| SHT31-Adressen | 1 je Modul | nur zwei Adressen ab Werk |

Die SHT31-Grenze schlägt als Erste zu: ab dem dritten Modul ist ein I²C-Multiplexer nötig.

**Zwei mögliche Architekturen**

*Zentral.* Ein Controller im Technikfach, Portexpander und I²C-Multiplexer für die Module.
Wenige Bauteile, ein Programm, aber jedes Modul hängt am Rack.

*Dezentral.* Ein kleiner Controller je Modul, verbunden über einen Bus. Teurer je Modul,
aber das Modul wird ein eigenständiges Gerät: es läuft auch außerhalb des Racks, lässt sich
einzeln tauschen, und ist genau das, was später als Retrofit-Kit verkauft werden kann.

Empfehlung für den Prototyp: zentral beginnen, aber die Schnittstelle aus Abschnitt 2 so
auslegen, dass die Busleitung schon vorhanden ist. Dann ist der Wechsel auf dezentral ein
Modultausch und keine Neukonstruktion.

**Sicherheit:** Kabelverbindungen zu Pumpe und Ventilen wasserdicht isolieren. Nie mit nassen
Händen an offener Elektronik arbeiten. Die Zonentrennung ist die konstruktive Absicherung
dafür, nicht die Sorgfalt im Betrieb.

---

## 12. Steuerungslogik

### Version 1 — Steuerung ohne Rückführung

1. **Licht** — Timer je Modul, Photoperiode als Parameter, reduzierte Intensität in der Keimphase
2. **Bewässerung** — zeitgesteuerte Kurzintervalle je Modul, sequenziell über die Etagen
3. **Klima** — Lüfter je Modul, feste Drehzahl; Heizmatte nur bei Bedarf
4. **Sensorik** — Temperatur, Luftfeuchte, Substratfeuchte werden geloggt, aber **nicht** zur
   Steuerung genutzt. Zweck ist der Aufbau der Datenbasis
5. **Kein WLAN-Dashboard** — Version 1 braucht es nicht

Der Verzicht auf die Regelung ist Absicht: eine Steuerung, deren Verhalten man versteht, ist
mehr wert als eine Regelung, deren Sensoren noch nicht kalibriert sind.

### Version 2 — geschlossene Regelschleifen

Zwei getrennte Schleifen je Modul:

- **Feuchte** — Bewässerung wird durch den Substratfeuchte-Sensor ausgelöst statt durch den
  Zeitplan. Voraussetzung ist die Kalibrierung aus den V1-Logdaten
- **Temperatur** — Lüfterdrehzahl wird gegen den Sollwert des Moduls geregelt. Das ist die
  Schleife, die aus einem gedämmten Kasten überhaupt erst eine Klimazone macht

Beides zusammen ist der technische Kern des späteren Automatisierungs-Kits.

---

## 13. Offene Punkte

- Effektiver Düsendurchsatz messen, Parameter in der Arbeitsmappe ersetzen
- Kalibrierkurve der kapazitiven Feuchtesensoren gegen gravimetrische Substratfeuchte
- λ-Wert und Bezugsquelle des Dämmstoffs verifizieren — der angesetzte Wert ist eine Annahme
- Reale Maschinenstundensätze der Firma; bisher nicht in der Kostenrechnung enthalten
- Lochbild der Trayperforation: Durchmesser und Teilung abhängig vom Substrat
- Prüfen, ob die einschalige, ungedämmte Variante für Prototyp 1 ausreicht — sie halbiert den
  Blechbedarf und damit den größten Kostenblock. Klimazonen wären dann Ausbaustufe 2
- Ableitung der Blechabwicklungen als DXF für den Wasserschneider

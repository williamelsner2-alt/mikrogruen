# Problemregister

*Stand: 22.08.2026 · lebendes Dokument*
*Nachbardokumente: aktueller Stand in `projekt/01-status.md`, Regeln in
`technik/konstruktionskriterien.md`, spätere Vorhaben in `projekt/04-ideen.md`*

Hier steht alles, was **noch nicht stimmt**. Nicht was fehlt, weil es dran ist — das steht in den
nächsten Schritten —, sondern was bekannt ist und ungelöst.

**Warum getrennt vom Status:** Der Status beschreibt, wo das Vorhaben steht. Dieses Register
beschreibt, was dabei im Weg liegt. Ein Problem, das nur im Gespräch auftaucht, verfällt; eines
mit einer Nummer nicht.

## Wie das Register benutzt wird

Jeder Eintrag hat eine **ID** (`P-xx`), die sich nie ändert. Gelöste Probleme werden nicht
gelöscht, sondern auf `gelöst` gesetzt und mit dem Datum versehen — die Lösung ist oft die
wichtigere Information als das Problem.

| Schwere | Bedeutung |
|---|---|
| **blockierend** | Verhindert einen konkreten nächsten Schritt. Zuerst lösen |
| **teuer** | Kostet Geld oder Arbeit, je später desto mehr |
| **Risiko** | Tut nicht heute weh, kann aber später den Entwurf umwerfen |
| **offen** | Muss irgendwann, drängt aber nicht |

---

## Überblick

| ID | Problem | Bereich | Schwere | Stand |
|---|---|---|---|---|
| P-01 | Elektronik-Bestandsaufnahme steht aus | Steuerung | blockierend | offen |
| P-02 | Substrat nicht gewählt — Trayperforation hängt daran | Anbau | blockierend | offen |
| P-03 | Blechbeschaffung offen, 471 € Spanne | Wirtschaft | teuer | offen |
| P-04 | Rasterform und Etagenzahl nicht entschieden | Technik | teuer | offen |
| P-05 | Modulinnenecken ohne Radien | Reinigung | teuer | **gelöst 21.08.** |
| P-06 | Bodengefälle 2° möglicherweise zu flach | Reinigung | Risiko | offen |
| P-07 | Toträume in den Düsen-Stichleitungen | Hygiene | Risiko | offen |
| P-08 | Übergang Innenboden zu Wand nicht durchgebildet | Reinigung | offen | **entfällt 21.08.** |
| P-09 | Oberflächengüte und Passivierung nicht festgelegt | Fertigung | offen | offen |
| P-10 | Auszugsstabilität — kein Auszugsstopp | Sicherheit | Risiko | offen |
| P-11 | Modul im Vollausbau über der Einzelhebe-Grenze | Ergonomie | Risiko | offen |
| P-12 | Pumpenförderhöhe ist eine Annahme | Hydraulik | Risiko | offen |
| P-13 | Pumpen-Volumenstrom bei N Ventilen nicht modelliert | Hydraulik | Risiko | offen |
| P-14 | I²C-Buslänge begrenzt den Schrankabstand | Steuerung | Risiko | offen |
| P-15 | Reservoir-Autonomie bricht bei großem Raster ein | Hydraulik | offen | offen |
| P-16 | Hydraulikschrank überdimensioniert | Technik | offen | offen |
| P-17 | Feuchtekontrolle in dieser Bauart nicht erreichbar | Klima | Risiko | akzeptiert |
| P-18 | Schachtelung veraltet — bis zu 180 € | Fertigung | teuer | offen |
| P-19 | Abwicklungen fehlen für Ständerwerk, Schränke, Laufschiene | Fertigung | offen | zurückgestellt |
| P-20 | Topologie fließt nicht durch den Parametersync | Werkzeug | offen | akzeptiert |
| P-21 | Laufrollen ohne Herstellernachweis | Technik | offen | offen |
| P-22 | Lüfteröffnung und Luftführung nur angedeutet | Klima | offen | offen |
| P-23 | Kabel- und Schlauchführung im Modul nicht modelliert | Technik | offen | offen |
| P-24 | Massenwerte sind Schätzungen | Modell | offen | offen |
| P-25 | λ-Wert des Dämmstoffs ist eine Annahme | Modell | offen | offen |
| P-26 | Ertragsdichte als Sammelwert für alle Sorten | Modell | offen | offen |
| P-27 | Effektiver Düsendurchsatz ist eine Annahme | Modell | offen | offen |
| P-28 | Rollenklärung mit der Firma ungeklärt | Recht | **teuer** | offen |
| P-29 | Erstberatung zum Rechtethema nicht erfolgt | Recht | Risiko | offen |
| P-30 | Maschinenstundensätze und Fertigungsvorlauf unbekannt | Wirtschaft | offen | offen |
| P-31 | Wandbefestigung nicht spezifiziert | Montage | offen | offen |
| P-32 | Sicherungskopien sammeln sich im CAD-Ordner | Ordnung | offen | **gelöst 22.08.** |
| P-33 | Wanne ganz geneigt — Aufkantung auf 10 mm begrenzt | Konstruktion | offen | offen |
| P-34 | Kragen am Wannenablauf noch nicht konstruiert | Hygiene | offen | offen |
| P-35 | Fillet-Radien sind nicht ausdrucksgebunden | Werkzeug | offen | akzeptiert |
| P-36 | Bestellquote ist eine ungestützte Annahme | Wirtschaft | Risiko | offen |
| P-37 | Traypreise aus US-Marktdaten, deutsch ungeprüft | Wirtschaft | Risiko | offen |

---

## Blockierend

### P-01 · Elektronik-Bestandsaufnahme steht aus
Zuhause liegen Raspberry Pi, Arduino, ein Bauteilmagazin und Steckbretter. Solange nicht
aufgenommen ist, was davon brauchbar ist, kann weder der Steuerungsplan noch die
Beschaffungsliste geschrieben werden — sonst wird gekauft, was schon da ist.
**Nächster Schritt:** Bestandsaufnahme gemeinsam durchgehen.
**Blockiert:** Steuerung V1, Firmware, Beschaffungspaket.

### P-02 · Substrat nicht gewählt
Das Lochbild der Trayperforation hängt am Substrat: Matte braucht grobe Drainage, loses Substrat
ein feines Lochbild oder ein Vlies. Ein hartcodiertes Muster im CAD wäre ein Rückschritt.
**Nächster Schritt:** Kokosmatte, Hanfmatte oder Anzuchterde entscheiden — die Premium-Argumente
sprechen für Matte, die Kosten für Erde.
**Blockiert:** GN-Bodenperforation, Saatgut- und Substratbestellung.

---

## Teuer, wenn ungelöst

### P-03 · Blechbeschaffung offen
Drei Szenarien mit **471 € Spanne** (Befund 4n): Zuschnitt nach Maß 528 €, Tafelkauf 816 €,
Restmaterial der Firma 345 € Startaufbau. Die Mappe schaltet um; entschieden ist nichts.
**Nächster Schritt:** eine Zahl aus dem Firmengespräch. Bis dahin rechnet die Mappe mit Szenario 1.

### P-04 · Rasterform und Etagenzahl nicht entschieden
Nicht nachträglich änderbar. Entscheidungsgrundlage steht (Befund 4p und 4q), drei Rückfragen
für das Firmengespräch sind vorbereitet.
**Kostet:** Jede Woche, die vergeht, ohne dass entschieden wird, kann keine Abwicklung entstehen.

### P-05 · Modulinnenecken ohne Radien *(gelöst 21.08.2026)*
Senkrechte Innenecken der Modulschale mit r = 6 mm, außen r = 7 mm. Der Innenboden ist zur
gekanteten Wanne mit r = 4 mm geworden. Damit ist auch **P-08 erledigt**, und zwar nicht durch
eine bessere Naht, sondern weil es an der Wasserlinie gar keine Naht mehr gibt: die Wanne liegt
lose im Modul. Details in `projekt/01-status.md`, Befund 4ae.

### P-18 · Schachtelung veraltet
Seit dem Wegfall der Rückwand ist die Teilefläche von 3,04 auf 2,26 m² gefallen. Die Mappe
rechnet weiter mit dem Schachtelgrad von 53 % aus dem alten Nesting und kommt auf drei Tafeln.
Bei 2,4 m² Zuschnittfläche müssten **zwei** reichen — im Tafelkauf-Szenario **180 €**.
**Nächster Schritt:** neu schachteln, aber erst wenn die Modulgeometrie steht (siehe P-05).

### P-28 · Rollenklärung mit der Firma ungeklärt
Der Stiefvater will einen fertigen Plan sehen und stellt danach eventuell Konstrukteure. Unter
welchen Bedingungen, ist offen. `wirtschaft/ip-und-verhandlung.md` beschreibt die gestufte
Offenlegung; angewandt wurde sie noch nicht.
**Warum das teuerste Problem der Liste:** Es geht nicht um Euro, sondern darum, wem das Ergebnis
am Ende gehört.

---

## Risiken

### P-06 · Bodengefälle 2° möglicherweise zu flach
R-2.3. Übliche Empfehlung für selbstentleerende Flächen liegt eher bei 3°. Bei 2° kann ein
Wasserfilm stehen bleiben — und stehendes Wasser im Spritzbereich ist der Anfang von Biofilm.
**Das ist rechnerisch prüfbar, noch vor dem ersten Aufbau:** Über die Oberflächenspannung und
die Rauheit lässt sich abschätzen, ab welcher Neigung ein Wasserfilm auf gebürstetem V2A
abreißt. Ergebnis entscheidet, ob 2° bleibt oder auf 3° geht.
**Kosten einer späten Änderung:** Der Innenboden ist ein eigenes Blech — Neigung ändern heißt
neues Teil, aber kein neues Modul.

### P-07 · Toträume in den Düsen-Stichleitungen
R-2.5. Von der Sprühleiste gehen zwei Stichleitungen zu den Düsen ab. Wird ein Abschnitt nicht
durchströmt, steht dort dauerhaft Wasser bei 22 °C — ideale Bedingungen.
**Nächster Schritt:** Leitungsführung so ändern, dass jeder Abschnitt bei jedem Zyklus
durchströmt wird, oder eine Entleerungsmöglichkeit vorsehen.

### P-10 · Auszugsstabilität, kein Auszugsstopp
R-8.3. Das Modul auf Laufrollen ist bis rund 47 % Auszug stabil. Danach kippt es nach vorn — bei
16,7 kg unangenehm, im Vollausbau bei 29,5 kg gefährlich. Ein Kipphaken war konstruiert und ist
wieder entfernt worden, weil er in die Rollenbahn lief.
**Zwei Lösungswege** stehen in `projekt/04-ideen.md` als I-01 und I-02.
**Zwischenlösung bis dahin:** In die Aufbauanleitung, dass das Modul nur bis zum Anschlag
gezogen und dann mit beiden Händen abgenommen wird.

### P-11 · Modul im Vollausbau über der Einzelhebe-Grenze
R-8.2 setzt 25 kg. Das Modul liegt heute bei 16,7 kg, im Vollausbau bei 29,5 kg.
**Konsequenz:** Im Vollausbau wird das Modul leergeräumt, bevor es gezogen wird — die Trays
kommen einzeln heraus. Das ist konstruktiv schon möglich, gehört aber in die Bedienanleitung.

### P-12 · Pumpenförderhöhe ist eine Annahme
3 m ist ein angenommener Datenblattwert. Er bestimmt die Obergrenze der Etagenzahl und damit
die Rackhöhe.
**Nächster Schritt:** Pumpe auswählen, Kennlinie ins Modell.

### P-13 · Volumenstrom bei mehreren gleichzeitig öffnenden Ventilen
Das Modell rechnet den Durchfluss je Modul. Was passiert, wenn bei 16 Modulen alle Ventile
gleichzeitig öffnen, ist nicht gerechnet. Entweder wird versetzt geschaltet, oder die Pumpe
bricht ein.
**Nächster Schritt:** Gleichzeitigkeitsfaktor einführen und die Pumpe danach auslegen.

### P-14 · I²C-Buslänge begrenzt den Schrankabstand
Befund 4o: 3,7 m gegen 25,6 m Leistungsleitung. Bei wachsendem Raster verschärft sich das
drastisch — 16 Module an einem Strang sprengen die Buskapazität um ein Vielfaches.
**Lösungswege:** I-05 (dezentraler Controller) oder I-06 (Bus-Extender).

### P-17 · Feuchtekontrolle nicht erreichbar *(akzeptiert)*
Der nötige Luftwechsel liegt so hoch, dass die Modulfeuchte praktisch der Raumluft entspricht
(Bauplan 5.3). Feuchte ist in dieser Bauart kein Stellhebel.
**Akzeptiert**, weil die Alternative eine geschlossene Klimatisierung wäre — anderes Vorhaben.
Wichtig für die Rezepturarbeit: Trockenstress läuft über die Bewässerung, nicht über die Luft.

### P-29 · Erstberatung zum Rechtethema nicht erfolgt
Vor jeder Übergabe von Unterlagen an die Firma. Steht seit dem 19.08. in den nächsten Schritten.

### P-36 · Bestellquote ist eine ungestützte Annahme *(neu 22.08., aus Audit-Befund B3)*
Die Skalierungsrechnung des Gründungs-Chats (2 Restaurants à 50 Gäste) arbeitet mit
Bestellquoten von 15/30/50 % — der Chat selbst nannte das „die unsicherste Zahl im ganzen
Modell". Die Annahme lebte bisher nur in jener Chat-Rechnung und stand in keinem Register und
keiner Messliste, obwohl das gesamte Umsatzmodell an ihr hängt.
**Warum Risiko:** Liegt die echte Quote deutlich unter 15 %, trägt das Geschäftsmodell in der
gerechneten Form nicht — das würde den Fahrplan umwerfen, nicht nur eine Zahl.
**Nächster Schritt:** Beim ersten Restaurantkontakt als Messgröße erheben (Referenzcharge, I-15,
ist das Vehikel dafür). Falls die Skalierungsrechnung vorher ins Rechenmodell einzieht, gehört
die Quote als Eingabe in die Arbeitsmappe, nicht in Fließtext.

### P-37 · Traypreise aus US-Marktdaten, deutsch ungeprüft *(neu 22.08., aus Audit-Befund B3)*
Die Traypreise 20/28/40 € stammen aus US-Marktdaten für Live-Trays. Ob die deutsche
Haute-Cuisine dieselbe Zahlungsbereitschaft hat, ist ungeprüft — Preisniveau, Mehrwertsteuer und
Einkaufsgewohnheiten unterscheiden sich.
**Warum Risiko:** Der Premium-Preis ist neben der Bestellquote (P-36) der zweite Hebel des
Umsatzmodells; beide zusammen entscheiden, ob „Qualität vor Quantität" wirtschaftlich aufgeht.
**Nächster Schritt:** Im ersten Kundengespräch gegen reale Zahlungsbereitschaft prüfen
(Blindverkostung/Referenzcharge als Anlass). Bis dahin als Annahme kennzeichnen, wo sie
auftaucht; bei Übernahme ins Rechenmodell in die Arbeitsmappe.

---

## Offen, nicht dringend

**P-33 · Wanne ganz geneigt, Aufkantung auf 10 mm begrenzt** — die Wanne ist als Ganzes um 2°
und 1° gekippt, ihre hohe Ecke liegt 23 mm über der tiefen. Mit mehr als 10 mm Aufkantung stößt
sie an die Trays. 10 mm reichen für den Wasserfilm, aber nicht für verschüttetes Substrat.
Die saubere Form wäre I-23: waagerechter Rand, trapezförmige Wände, geneigter Boden.

**P-34 · Kragen am Wannenablauf noch nicht konstruiert** — die Wanne hat eine Kerbe zum
Ablaufstutzen, aber keinen Überlauf-Kragen. Bei starkem Sprühen könnte Wasser neben den Stutzen
laufen. Parameter `kragen_h` steht bereit, die Geometrie fehlt.

**P-35 · Fillet-Radien sind nicht ausdrucksgebunden** *(akzeptiert)* — `Part::Fillet` speichert
den Radius in einer Kantenliste, nicht in einer Eigenschaft, die eine Expression tragen könnte.
Das Makro `MikrogruenModul_Radien` liest die Werte aus dem Parameterblatt und setzt sie neu.
Gleiche Behandlung wie die Topologie (R-7.4).

**P-09 · Oberflächengüte und Passivierung** — nirgends festgelegt (R-2.7). Richtwert für
Lebensmittelkontakt Ra ≤ 0,8 µm, nach dem Schweißen beizen. Gehört in die Fertigungsunterlage.

**P-15 · Reservoir-Autonomie bei großem Raster** — 20 l reichen bei einem Modul 175 Tage, bei
sechzehn noch 11. Kein Problem, solange der Behälter frei dimensionierbar ist (Befund 4y), aber
zu beachten, sobald das Raster wächst.

**P-16 · Hydraulikschrank überdimensioniert** — er war aus dem Reservoirbedarf abgeleitet, der
jetzt draußen sitzt. Enthält nur noch Pumpe, Ventile und Dosierung.

**P-19 · Abwicklungen fehlen** für Ständerwerk, Schränke und Laufschiene (R-3.2). Bewusst
zurückgestellt, bis die Geometrie steht — und bewusst *nicht* vor dem Firmengespräch, siehe P-28.

**P-20 · Topologie fließt nicht durch den Sync** *(akzeptiert)* — Maße wandern automatisch aus
der Arbeitsmappe ins CAD, die Zahl der Teile nicht. Nach jeder Rasteränderung muss zusätzlich
das Rastermakro laufen. Das ist eine Eigenschaft von Ausdrücken, kein Fehler.

**P-21 · Laufrollen ohne Herstellernachweis** — Ø 25, 3 je Seite, rechnerisch rund 90 N je Rolle.
Ein reales Datenblatt fehlt.

**P-22 · Lüfteröffnung und Luftführung** — der Lüfter ist ein Klotz an der Rückwand, die
Perforation und der Weg der Luft durch das Modul sind nicht konstruiert.

**P-23 · Kabel- und Schlauchführung im Modul** — nicht modelliert. Sie muss reinigbar sein
(R-2.4) und darf die Trayauszüge nicht behindern.

**P-24 bis P-27 · Vier Annahmen im Rechenmodell** — Massen der GN-Behälter und Einbauten,
λ-Wert des Dämmstoffs, Ertragsdichte als Sammelwert 0,22 g/cm² für alle Sorten, effektiver
Düsendurchsatz 20 l/h. Alle vier werden mit der ersten Charge zu Messwerten. Bis dahin trägt
der Sicherheitsbeiwert die Unsicherheit.

**P-30 · Maschinenstundensätze und Fertigungsvorlauf** — fehlen in der Kostenrechnung, kommen
aus dem Firmengespräch.

**P-31 · Wandbefestigung nicht spezifiziert** — die Laschen sind gebaut, Dübel und Schrauben
nicht ausgewählt. Bei einspaltigem Rack ist die Befestigung Pflicht (Befund 4v).

**P-32 · Sicherungskopien im CAD-Ordner** *(gelöst 22.08.2026, Audit-Vorschlag 4)* — FreeCAD
legt bei jedem Speichern eine `.FCBak` an. Gelöst an beiden Enden: „Maximale Anzahl
Sicherungsdateien" steht auf **1** (von William am 22.08. bestätigt — je Datei bleibt genau
eine Kopie, nichts sammelt sich mehr), und `.FCBak` ist in der `.gitignore` ausgenommen
(`werkzeuge/git-einrichtung.md`), damit Kopien nie in Versionierung oder Backup wandern.
Restbestand älterer `.FCBak`-Dateien im `cad/`-Ordner kann bei Gelegenheit einmalig von Hand
gelöscht werden — neuer entsteht keiner mehr über die eine Kopie hinaus.

---

## Gelöst — zum Nachschlagen

| ID | Problem | Gelöst am | Wie |
|---|---|---|---|
| P-G1 | Maßkette kannte die Schnittstelle nicht | 19.08. | `rack_t` um Schnittstelle und Strang erweitert (Befund 4e) |
| P-G2 | Ablauf zeigte auf das Modul darunter | 19.08. | Boden mit zwei Neigungen zu einem Tiefpunkt (Befund 4f) |
| P-G3 | Blechbedarf um ein Viertel unterschätzt | 19.08. | Innenausbau in `03-Modul` mitgerechnet (Befund 4k) |
| P-G4 | Masse und Kosten aus derselben Zahl | 19.08. | netto/brutto getrennt (Befund 4m) |
| P-G5 | Profillänge 8,5 % zu hoch | 21.08. | Riegel zwischen statt um die Ständer (Befund 4s) |
| P-G6 | CAD fehlten die Etagenauflagen | 21.08. | Z+2 Ringe aus dem Rastermakro (Befund 4s) |
| P-G7 | Diagonalen kollidierten mit den Auflageschienen | 21.08. | Verband nach außen, damit auch abnehmbar (Befund 4z) |
| P-G8 | Zwei Parametertabellen doppelt gepflegt | 21.08. | Blatt `16-CAD-Parameter` und Sync-Makro (Befund 4ab) |
| P-G9 | Reservoir am Modul zu schwer und schlecht wartbar | 21.08. | separater Behälter am Schrank (Befund 4y) |
| P-G10 | Rückwand ohne Funktion, 81 € | 21.08. | entfällt, Diagonalen übernehmen (Befund 4x) |
| P-G11 | Scharfe Innenecken im Spritzbereich | 21.08. | Schale r6, Wanne r4 (Befund 4ae) |
| P-G12 | Schweißnaht des Bodens lag an der Wasserlinie | 21.08. | Boden ist eine lose Wanne — keine Naht mehr (Befund 4ae) |
| P-G13 | Ablauf lag 48 mm neben dem Tiefpunkt | 21.08. | `ablauf_x` an den Tiefpunkt gelegt (Befund 4ae) |

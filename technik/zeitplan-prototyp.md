# Zeitplan Prototyp 1

*Inhaltsstand: 18.08.2026 · Struktur: 19.08.2026*
*Nachbardokumente: Technik in `technik/prototyp-bauplan.md`, Sorten und Staffelung in
`anbau/sorten-und-staffelung.md` · Zahlen in `mikrogruen-rack-modell.xlsx`*

## 1. Der Plan hat zwei Betriebsarten

**Stand 19.08.2026: es gibt keinen Kundentermin.** Damit fehlt der Fixpunkt, auf den dieser Plan
ursprünglich gerechnet war. Das ist keine Lücke, sondern ein anderer Modus.

### Modus A — vorwärts, meilensteingetrieben *(aktuell aktiv)*

Ohne Termin ist das Ziel nicht "fertig an Tag K", sondern **vorführbereit auf Abruf**. Der Plan
läuft auf Zustände statt auf Daten:

| Meilenstein | Zustand, der erreicht ist |
|---|---|
| M1 | Modellparameter festgelegt, CAD-Volumenmodell steht |
| M2 | Steuerung läuft 48 h fehlerfrei am Steckbrett |
| M3 | Erste Charge geerntet — im Provisorium, ohne fertiges Modul |
| M4 | Rezepturversuch gefahren, Verkostung dokumentiert |
| M5 | Module und Rack gefertigt und montiert |
| M6 | Vollständiges Sample-Tray reproduzierbar → **ab hier ist ein Termin machbar** |

**Wichtige Umkehrung gegenüber der ursprünglichen Planung:** Solange kein Termin drückt, ist die
Reihenfolge nicht "erst bauen, dann anbauen". Der Anbau im Provisorium (M3) gehört **vor** die
Fertigung, nicht dahinter. Drei Gründe:

1. Er liefert die Messwerte, die das Modell noch als Annahme führt (Düsendurchsatz, Wasserbedarf,
   Ertragsdichte je Sorte) — mit ihnen wird das Modul richtig dimensioniert statt geschätzt
2. Er erzeugt Fotos und Logdaten, also Verhandlungsmaterial, **bevor** irgendjemand eingeweiht
   werden muss
3. Er kostet fast nichts und hängt an keinem fremden Termin

Was ursprünglich Rückfallebene war ("erste Charge in gekauften GN-Behältern auf offenem Regal"),
ist damit der empfohlene erste Schritt.

### Modus B — rückwärts, sobald ein Termin steht

Sobald ein Datum mit einem Zielhaus vereinbart ist, gilt wieder die Rückwärtsrechnung. Sie wird
dann zum führenden Plan, weil sie sofort sichtbar macht, was gestrichen werden muss:

```
Kundentermin                  = Tag K
Ernte                         = K − 1 bis K − 2   (frisch, aber Puffer für Fotos)
Chargenstart (früheste Saat)  = Ernte − längste Kulturdauer der Charge
Testcharge abgeschlossen      = Chargenstart − 3   (Steuerung kalibriert)
Aufbau fertig                 = Testcharge − 1
Fertigung abgeschlossen       = Aufbau − Fertigungsvorlauf der Firma
```

Der **Fertigungsvorlauf** ist die einzige Größe, die nicht in deiner Hand liegt. Ist M6 vorher
erreicht, ist er irrelevant — genau deshalb lohnt Modus A.

---

## 2. Kritischer Pfad

Nur diese Kette bestimmt, wann ein Termin überhaupt zusagbar ist. Alles andere läuft parallel.

```
CAD-Modell → Freigabe/Slot Firma → Wasserstrahl → Schweißen → Sandstrahlen
    → Montage → Testcharge → Show-Charge → Ernte → Termin
```

**Der Engpass liegt bei "Freigabe/Slot Firma".** Maschinenzeit an Wasserstrahl und Schweißbau
bekommt man nicht spontan, und der Zugang hängt an einer Zusage, die noch nicht eingeholt ist
(Stand siehe `projekt/01-status.md`). Konsequenz für die Reihenfolge: das CAD-Modell ist die erste
Aufgabe auf diesem Pfad, weil ohne fertige Zeichnung kein Slot angefragt werden kann.

**Aber:** dieser Pfad ist in Modus A *nicht* der einzige. Die Anbau-Kette

```
Saatgut → Provisorium → Testcharge → Rezepturversuch → dokumentierte Ergebnisse
```

läuft vollständig daran vorbei, kostet unter 100 € und ist die einzige Kette, die kein Gespräch
mit Dritten voraussetzt. Wer den Firmenpfad als kritischen Pfad behandelt, während der Anbaupfad
brachliegt, wartet auf fremde Zusagen statt eigene Ergebnisse zu erzeugen — und geht mit
schwächerer Verhandlungsposition ins Gespräch. Siehe `wirtschaft/ip-und-verhandlung.md`.

---

## 3. Arbeitspakete

Die Pakete selbst ändern sich durch Modus A nicht, ihre **Reihenfolge** schon:

| | Reihenfolge mit Kundentermin | Reihenfolge ohne Termin (aktuell) |
|---|---|---|
| 1. | AP 1 Konstruktion und Freigabe | AP 2 Beschaffung *(nur Anbauteil: Saatgut, Substrat, GN-Behälter)* |
| 2. | AP 2 Beschaffung | AP 3 Steuerung |
| 3. | AP 3 Steuerung | AP 5 Testcharge **im Provisorium** |
| 4. | AP 4 Montage | AP 1 Konstruktion — jetzt mit gemessenen statt geschätzten Parametern |
| 5. | AP 5 Testcharge | AP 4 Montage |
| 6. | AP 6 Show-Charge | AP 6 Show-Charge, sobald ein Termin steht |

### AP 1 — Konstruktion und Freigabe

- **Modulschnittstelle festschreiben** (mechanisch / elektrisch / hydraulisch,
  `technik/prototyp-bauplan.md` Abschnitt 2) — muss vor jeder Detailkonstruktion stehen und
  danach unverändert bleiben
- Parameter in `mikrogruen-rack-modell.xlsx` festlegen: GN-Format, Trays je Etage, Etagenzahl,
  Auslegungs-Dämmstärke, Zonenmaße im Technikfach
- Ausbaustufe für den ersten Bau entscheiden (1 / 2 / 2b, Abschnitt 6 im Bauplan)
- CAD: Modulaußenschale, Auflageschienen auf absoluter Höhe, Liner-Befestigungspunkte,
  GN-Behälter als instanziiertes Bauteil
- Abwicklungen ableiten, Zuschnittsliste und DXF für den Wasserschneider erzeugen
- Materialbedarf und Maschinenzeit beziffern
- **Gespräch mit der Firma: Slot und Konditionen klären** ← Beginn des Fertigungsvorlaufs.
  Vorher `wirtschaft/ip-und-verhandlung.md` abarbeiten

*Abschlusskriterium: bestätigter Termin für Maschinenzeit.*

> **Reihenfolge-Falle:** Die vier Vorbereitungen für die spätere Dämmung (Bauplan 6.2) müssen
> **jetzt** ins CAD, nicht später. Nachträglich bedeutet Bohren in ein fertig geschweißtes Modul.

### AP 2 — Beschaffung (parallel zu AP 1 und AP 3)

- Elektronik bestellen (längste Lieferzeit zuerst prüfen)
- GN-Blanks bestellen
- Saatgut bestellen — die Sortenliste muss dafür stehen, siehe `anbau/sorten-und-staffelung.md`
- Substrat, Schläuche, Düsen

*Abschlusskriterium: alles im Haus, bevor die Fertigung endet.*

### AP 3 — Steuerung (parallel, unabhängig von der Mechanik)

- Firmware V1: Timer für Licht und Bewässerung, Logging alle 15 Minuten
- Aufbau auf dem Steckbrett, ohne Modul testen
- Sensoren gegen bekannte Referenzen prüfen
- **Effektiven Düsendurchsatz messen** und Parameter im Modell ersetzen

*Abschlusskriterium: Steuerung läuft 48 h ohne Aussetzer am Steckbrett.*

Dieses Arbeitspaket ist der beste Puffer im ganzen Plan: es hängt an keinem Firmentermin und
lässt sich in Abendstunden erledigen, während die Fertigung wartet.

### AP 4 — Montage und Inbetriebnahme

- Elektronik in der Trockenzone des Technikfachs montieren, Pumpe und Reservoir in der Nasszone
- Verkabelung, gemeinsame Masse prüfen
- Dichtheitsprüfung der Wasserführung **vor** dem Einbau der Elektronik
- Ablauf des Modulbodens auf Rückfluss in die Sammelrinne und ins Reservoir prüfen

### AP 5 — Testcharge

Keine Show-Charge. Zweck ist ausschließlich Kalibrierung:

- Läuft die Bewässerung ohne Staunässe und ohne Austrocknen?
- Stimmt die reale PPFD mit der Rechnung überein?
- Wie verhalten sich die Feuchtesensoren über einen vollen Zyklus?

*Abschlusskriterium: eine Sorte sauber durchgezogen, Logdaten plausibel.*

Wird dieses Paket gestrichen, um Zeit zu sparen, wandert das Risiko in die Show-Charge — und ein
Fehler dort kostet den Termin, nicht nur eine Woche.

### AP 6 — Show-Charge

- Gestaffelte Aussaat nach der Rückwärtsrechnung in `anbau/sorten-und-staffelung.md`
- Tägliche Fotodokumentation ab Keimung
- Logdaten sichern — sie sind Teil des Verkaufsarguments

### AP 7 — Ernte und Termin

- Ernte 1–2 Tage vor dem Termin
- Verkostung selbst, bevor der Chef sie verkostet
- Transport im GN-Behälter — kein Umfüllen, das ist Teil der Präsentation

---

## 4. Zeitbudget

Bei etwa 5 Stunden pro Woche neben der Ausbildung (siehe `projekt/02-rahmen-und-netzwerk.md`) ist die
Verteilung ungleich:

| Phase | Aufwand | Charakter |
|---|---|---|
| AP 1 CAD | hoch | konzentrierte Blöcke, schlecht stückelbar |
| AP 2 Beschaffung | gering | nebenher |
| AP 3 Steuerung | mittel | gut in Abendstunden stückelbar |
| AP 4 Montage | mittel | ein bis zwei zusammenhängende Tage |
| AP 5/6 Chargen | sehr gering | genau das ist der Sinn der Automatisierung |

Die Wachstumsphasen kosten fast keine Arbeitszeit, aber sie kosten **Kalenderzeit**, die sich
nicht komprimieren lässt. Zeit gewinnt man ausschließlich vorne im Plan, nie hinten.

---

## 5. Risiken und Rückfallebenen

| Risiko | Rückfallebene |
|---|---|
| Kein Maschinenslot / Firma sagt ab | Provisorium bleibt in Betrieb, Module später extern fertigen (Blechservice mit DXF) |
| Einzelne Sorte keimt nicht | **Kein freies Rasterfeld mehr** — 6 Trays auf 6 Felder je Modul. Reserve muss bewusst freigelassen oder in einer anderen Etage vorgehalten werden |
| Nur ein Modul fertig, Rack noch nicht | Modul funktioniert eigenständig, sobald Versorgung provisorisch angeschlossen ist — das ist der Sinn der Schnittstelle |
| Bewässerung zu nass/zu trocken | Manuell übersteuern, Logdaten trotzdem weiterschreiben |
| Termin platzt kundenseitig | Charge läuft weiter, Fotos und Logdaten bleiben verwertbar |
| Idee wird im Firmenumfeld abgezogen | Vorab dokumentieren und gestuft offenlegen — `wirtschaft/ip-und-verhandlung.md` |

**Grundsatz:** Rack und Module sind die aufwendigste, aber nicht die kritischste Komponente. Ein
funktionierendes Sample-Tray ohne fertiges Modul ist ein besseres Ergebnis als ein fertiges
Modul ohne Ernte.

---

## 6. Was nach dem Termin ansteht

Unabhängig vom Ausgang des Gesprächs:

- Ertragsdichten je Sorte aus der Charge in den Sortenkatalog eintragen
- Gemessenen Wasserbedarf gegen den angenommenen Parameter im Modell abgleichen
- Kalibrierkurve der Feuchtesensoren erstellen → Voraussetzung für Steuerung V2
- Reale Fertigungskosten in das Kostenblatt eintragen, Schätzwerte ersetzen

Erst mit diesen vier Punkten wird aus dem Prototyp ein Modell, das sich auf die nächste
Ausbaustufe hochrechnen lässt.

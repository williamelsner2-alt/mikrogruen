# Rahmenbedingungen und Netzwerk

*Stand: 19.08.2026 · Vertraulich — enthält Personen- und Finanzkontext*

Der Kontext, den jedes Gespräch über dieses Vorhaben voraussetzt. Wenn ein neuer Chat nur eine
Datei lesen soll, dann diese und `projekt/01-status.md`.

---

## 1. Harte Randbedingungen

| Größe | Wert | Konsequenz |
|---|---|---|
| **Startkapital** | unter 1.000 €, bootstrapped | keine Fremdfinanzierung angestrebt; jede Ausgabe muss aus Eigenmitteln oder Umsatz kommen |
| **Schufa** | negative Einträge, Löschung 3 Jahre nach Begleichung | bis dahin ohne Bankkredit und ohne Leasing planen; Wachstum über Eigenkapital und Kundenanzahlungen |
| **Gewerbe** | noch nicht angemeldet | Anmeldung erst bei tatsächlich zahlenden Kunden, nicht vorher (Fahrplan Phase 3) |
| **Zeitbudget** | ca. 5 Std./Woche neben der Ausbildung | ausbaufähig; bestimmt die Reihenfolge der Arbeitspakete stärker als das Geld |
| **Eigene Arbeitszeit** | mit ca. 15 €/h bewertet | Maßstab für Eigenbau-gegen-Kauf-Entscheidungen: was in unter 2 h selbst gemacht ist, lohnt selten den Kauf |
| **Werkstattzugang** | über die Ausbildungsfirma, **noch nicht zugesagt** | Rohmaterial und Maschinenstunden selbst zu tragen |

Diese Größen sind der Grund für fast jede Entscheidung im Fahrplan. Ändert sich eine davon,
gehört der Fahrplan neu bewertet.

> **Aktuelle Spannung:** Der Rack-Vollausbau mit drei Modulen kostet 910 € Material — praktisch
> das gesamte Startbudget, ohne Maschinenstunden, Saatgut und Werkzeug. Der Umgang damit steht in
> `projekt/01-status.md`, Abschnitt 4a.

**Verfügbare Maschinen** (Ausbildungsfirma): Schweißbau, Edelstahlbau, Wasserschneider,
CNC-Dreherei und -Fräserei, Sandstrahlkabine.

---

## 2. Personen und Netzwerk

### Stiefvater

Inhaber der Ausbildungsfirma und eines eigenen Hallenbaubetriebs.

- **Kurzfristig:** Werkstattzugang (Schweißbau, Edelstahlbau, Wasserschneider, CNC,
  Sandstrahlkabine) und Netzwerk
- **Position:** möchte einen fertigen Plan sehen, stellt danach eventuell Konstrukteure zur
  Verfügung
- **Langfristig:** möglicher Infrastruktur-Partner und Kunde in Phase 6
- **Offener Punkt:** Bedingungen der Zusammenarbeit sind ungeklärt. Das Vorhaben soll in eigener
  Hand bleiben — Vorgehen dazu in `wirtschaft/ip-und-verhandlung.md`. **Bevor Unterlagen
  herausgehen, ist dieser Punkt zu klären.**

### Gastro-Kontakte

Ehemalige Küchenchefs und Kollegen; der Kontakt ist eng genug für kurzfristige Termine.

| Haus | Ort | Anknüpfungspunkt |
|---|---|---|
| Ristorante Gambero Rosso da Domenico | Eibelstadt | Carpaccio → Rucola; italienisch-mediterranes Profil |
| Chizzo by Jondal | Kitzbühel | Hummer mit rotem Basilikum-Pesto; Sushi-Akzente → Micro-Shiso |

Beide Häuser haben ein Fisch-lastiges Profil — deshalb ist die Gruppe "Fischbegleiter" im
Sortenkatalog die wichtigste (`anbau/sorten-und-staffelung.md`, Abschnitt 2.1).

**Stand 19.08.2026:** noch kein Termin vereinbart, noch keine Muster übergeben.

---

## 3. Standorte

**Zwei-Standort-Labor:**

| Standort | Rolle | Rhythmus |
|---|---|---|
| WG | Schnelllabor — Prototyp, Steuerung, Testchargen | unter der Woche, täglicher Zugriff |
| Elterngarten | Feldversuch, später zweites/größeres System | am Wochenende |

Die Aufteilung bestimmt mit, welche Versuche wo laufen: alles, was tägliche Beobachtung braucht,
gehört in die WG. Die Rackgröße ist an den WG-Platz gebunden — Stellfläche und Rackhöhe stehen im
Modell (`mikrogruen-rack-modell.xlsx`, Blatt `04-Rack`), aktuell 0,25 m² bei 1,48 m Höhe.

**Materialwahl mit Standortbezug:** V2A (1.4301) für das Rack in der WG, V4A (1.4404) für
dauerhaft im Freien stehende Bauteile im Elterngarten.

---

## 3a. Werkzeuge und Arbeitsumgebung

| Werkzeug | Rolle |
|---|---|
| **FreeCAD 1.1.3** mit MCP-Anbindung | parametrische Konstruktion, Modell `MikrogruenRack.FCStd` — Einrichtung in `werkzeuge/freecad-mcp-setup.md` |
| **Cowork** | alles, was lokale Anwendungen, Dateien oder Konfiguration betrifft |
| **Excel / LibreOffice** | die Arbeitsmappe, alle Formeln live verknüpft |
| Claude Design | Darstellung, **nicht** parametrische Konstruktion |

**Arbeitsteilung Modell ↔ CAD:** Gerechnet wird in der Arbeitsmappe (Licht, Klima, Wasser,
Kosten). Das FreeCAD-Spreadsheet trägt **nur** die geometriebildenden Größen. Es gibt keine
Verbindung zwischen beiden — geometrierelevante Änderungen müssen von Hand nachgezogen werden.
Das ist die wahrscheinlichste Fehlerquelle im ganzen Aufbau.

---

## 4. Eigener Hintergrund

- **Mechatronik** — deckt Konstruktion, Elektrik und Steuerung ab
- **Küche** — deckt Produktverständnis, Verkostung und den Zugang zu den Zielhäusern ab
- **Lücke:** Pflanzenwissenschaft. Dafür `anbau/lernpfad-agrarwissenschaft.md`

Die Kombination der ersten beiden Punkte ist der Teil des Vorhabens, den niemand kopieren kann —
siehe `wirtschaft/ip-und-verhandlung.md`, Abschnitt 2.

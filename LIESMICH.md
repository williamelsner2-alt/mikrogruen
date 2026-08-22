# Mikrogrün-Rack — Arbeitsordner

*Synchronisiert am 21.08.2026 aus dem Claude-Projekt „Technologie und Agrar Unternehmen".*

Dieser Ordner ist eine **Kopie** des Projektstands zum Mitnehmen und Ausdrucken. Die führende
Fassung liegt im Claude-Projekt; wenn beide auseinanderlaufen, gewinnt das Projekt.

## Was wo liegt

| Ordner | Inhalt |
|---|---|
| `00-Uebersicht.md` | Index aller Dokumente und die Pflegeregeln — hier anfangen |
| `projekt/` | Status, **Problemregister**, **Ideenregister**, Rahmen · **`02-rahmen-und-netzwerk.md` ist vertraulich** |
| `technik/` | Bauplan, Zeitplan, 3D-Briefing, CAD-Modellstand, Prinzipskizze |
| `anbau/` | Katalog, Methodik der Stresssteuerung, `sorten/` mit einer Datei je Sorte, Lernpfad |
| `wirtschaft/` | Fahrplan, Produktkatalog, IP und Verhandlung, Finanzierung und Wettbewerbe |
| `werkzeuge/` | FreeCAD-MCP-Einrichtung |
| `cad/` | FreeCAD-Dateien — neuer Speicherort, nicht mehr im FreeCAD-Benutzerverzeichnis |
| `3d-export/` | OBJ/GLB-Export zum Anschauen ohne FreeCAD |
| `MikrogruenRack_Ansichten/` | gerenderte Ansichten |
| `_alt_2026-08-19/` | überholte Vorversionen — nichts davon ist noch gültig |
| `mikrogruen-rack-modell.xlsx` | **die einzige Quelle für konkrete Zahlen** |

## Wie das Rack im CAD umgestellt wird

Die Rasterform ist ein Parameter, aber die **Zahl** der Ständer und Riegel kann keine Formel
erzeugen — dafür läuft ein Makro.

1. In FreeCAD das Blatt `Parameter` öffnen.
2. `n_rack_x` (Spalten), `n_rack_y` (Reihen, höchstens 2), `n_etagen`, `n_module` ändern.
3. **Makro ausführen:** Menü *Makro → Makros… → `MikrogruenRack_Raster` → Ausführen.*

Erst Schritt 3 baut Ständerwerk, Versorgungsstrang und Modulinstanzen neu auf. Ohne ihn ändern
sich nur die Maße der vorhandenen Teile, nicht ihre Anzahl — das Bild sieht dann falsch aus.

Das Makro meldet im Berichtsfenster, was es gebaut hat, und ob alle Objekte gültig sind.

## Wie Maße aus der Arbeitsmappe ins CAD kommen

Zweites Makro: **`MikrogruenParameter_Sync`**. Es liest `mikrogruen-rack-modell.xlsx`, Blatt
`16-CAD-Parameter`, direkt und schreibt die Eingangsgrößen in jedes offene CAD-Dokument.
Abgeleitete Maße bleiben Ausdrücke und werden nie überschrieben.

**Reihenfolge, wenn sich etwas ändert:**

1. Wert in der Arbeitsmappe ändern (`01-Eingaben`), Mappe speichern
2. `MikrogruenParameter_Sync` ausführen → Maße wandern ins CAD
3. Nur wenn sich die **Anzahl** von Teilen ändert (Raster, Bauart): zusätzlich
   `MikrogruenRack_Raster` ausführen
4. Gegenprobe: Massen und Längen aus dem CAD gegen die Mappe halten

Neuer Parameter heißt: eine neue Zeile im Blatt `16-CAD-Parameter`. Kein Makro anfassen.

# Mikrogrün-Rack — Arbeitsordner

*Zuletzt geordnet: 23.08.2026 · Kopie des Projektstands aus dem Claude-Projekt
„Technologie und Agrar Unternehmen".*

Dieser Ordner ist eine **Kopie** zum Mitnehmen und Ausdrucken. Die führende Fassung liegt im
Claude-Projekt; wenn beide auseinanderlaufen, gewinnt das Projekt. Seit dem 23.08. sichert
sich der Ordner selbst: alle 20 Minuten Commit und Push ins private GitHub-Repository, sobald
sich etwas geändert hat (`werkzeuge/auto-sicherung.md`). Was hier hineingelegt wird, liegt
also binnen 20 Minuten online — Vertrauliches vorher in die `.gitignore`.

## Was wo liegt

| Ordner | Inhalt |
|---|---|
| `00-Uebersicht.md` | Index aller Dokumente und die Pflegeregeln — hier anfangen |
| `projekt/` | Status, **Problemregister**, **Ideenregister**, Rahmen · **`02-rahmen-und-netzwerk.md` ist vertraulich** |
| `technik/` | Bauplan, Zeitplan, 3D-Briefing, CAD-Modellstand, Prinzipskizze |
| `anbau/` | Katalog, Methodik der Stresssteuerung, `sorten/` mit einer Datei je Sorte, Lernpfad |
| `wirtschaft/` | Fahrplan, Produktkatalog, IP und Verhandlung, Finanzierung und Wettbewerbe |
| `werkzeuge/` | Arbeitsumgebung: Chat-Konvention, Arbeitsteilung, Instanzen und Zugriffe, `postfach/`, Git und Auto-Sicherung, FreeCAD-MCP |
| `berichte/` | Audit- und Auswertungsberichte |
| `uebergabe/` | Übergabepaket der CAD-Session vom 22.08. |
| `cad/` | FreeCAD-Dateien — neuer Speicherort, nicht mehr im FreeCAD-Benutzerverzeichnis |
| `3d-export/` | OBJ/GLB-Export zum Anschauen ohne FreeCAD |
| `MikrogruenRack_Ansichten/` | gerenderte Ansichten |
| `_papierkorb/` | aussortiert, wartet auf Löschung von Hand — Inhalt und Regeln in `_papierkorb/00-LIESMICH.md` |
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

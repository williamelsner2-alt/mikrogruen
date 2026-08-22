# Übergabepaket — Mikrogrün-Rack

*Erzeugt am 22.08.2026 · Projekt „Technologie und Agrar Unternehmen"*

Dieses Paket enthält den **vollständigen Sitzungsverlauf vom 19. bis 22. August 2026** —
28 Nachrichten von William, 776 Antwortabschnitte, **661 Werkzeugaufrufe** und 25 Bilder.

## Was worin steckt

| Datei | Für wen | Inhalt |
|---|---|---|
| `chatverlauf.html` | **zum Lesen** | Der Verlauf wie im Chat, aber mit **allen Werkzeugpanels ausgeklappt**: Eingabe und Ergebnis jedes Aufrufs, Bilder eingebettet. Eine einzige Datei, kein Nachladen aus dem Netz. Oben rechts zwei Knöpfe zum Auf- und Zuklappen aller Panels |
| `chatverlauf.md` | **zur Übergabe an Claude** | Derselbe Verlauf als Text. Kompakt genug, um ihn einer neuen Sitzung als Kontext zu geben |
| `bilder/` | beides | Die 25 Bilder einzeln, gleiche Nummerierung wie im Markdown |
| `rohverlauf.jsonl.gz` | Notfall | Der unbearbeitete Rohverlauf, falls ein Detail fehlt, das oben gekürzt wurde |

**Gekürzt wurde:** Werkzeugergebnisse über 2.200 Zeichen im HTML, über 800 im Markdown. Alles
andere ist vollständig. Interne Überlegungen sind im Rohverlauf ohnehin nicht im Klartext
gespeichert und daher nirgends enthalten.

## So übergibst du es an eine neue Cowork-Sitzung

Der Verlauf allein ist **nicht** der beste Einstieg — er ist die Beweisführung, nicht das
Ergebnis. Das Ergebnis steht in der Projektablage. Empfohlene Reihenfolge:

1. **`00-Uebersicht.md`** — welche Datei welche Frage beantwortet, und die Pflegeregeln
2. **`projekt/01-status.md`** — der Stand mit allen 31 Befunden (4a bis 4ae)
3. **`projekt/03-probleme.md`** und **`projekt/04-ideen.md`** — was offen ist, was später kommt
4. **`technik/konstruktionskriterien.md`** — die Regeln, auf die sich alles beruft (R-1.1 … R-8.5)
5. Dieser Verlauf **nur bei Bedarf**, wenn eine Entscheidung im Detail nachvollzogen werden muss

Kurzfassung für den Einstieg einer neuen Sitzung:

> Bootstrapped Gründungsvorhaben: modulares Edelstahl-Rack für Mikrogrün-Anbau, Zielgruppe
> Haute Cuisine. Startaufbau rund 530 €. Zwei parametrische CAD-Dateien in `cad/`
> (`MikrogruenRack.FCStd`, `MikrogruenModul.FCStd`), gespeist aus
> `mikrogruen-rack-modell.xlsx`, Blatt `16-CAD-Parameter`, über das Makro
> `MikrogruenParameter_Sync`. Aktuelle Arbeit: das einzelne Modul verfeinern.
> Zuletzt fertig: Innenwanne herausnehmbar mit Radien. Als Nächstes: Frontklappe im Detail.

## Die vier FreeCAD-Makros

| Makro | Wann ausführen |
|---|---|
| `MikrogruenParameter_Sync` | nach jeder Änderung in der Arbeitsmappe |
| `MikrogruenRack_Raster` | wenn sich die **Anzahl** von Teilen ändert (Raster, Bauart) |
| `MikrogruenModul_Radien` | wenn ein Verrundungsradius geändert wird |
| `MikrogruenWachhalten` | vor längeren unbeaufsichtigten Läufen |

## Was in diesem Verlauf entschieden wurde

Die wichtigsten Weichenstellungen, chronologisch — jede ist im Status unter der genannten
Befundnummer ausführlich belegt:

- **4e/4i** Maßketten kannten Bauteile nicht — Racktiefe 488 → 550 mm
- **4k/4m/4s** drei Rechenfehler durch die Gegenprobe CAD ↔ Arbeitsmappe gefunden
- **4o** Signalleitung begrenzt den Schrankabstand, nicht die Leistungsleitung
- **4p/4q** Rack wächst als Raster X × Y × Z, nicht nur in der Höhe
- **4u/4x** Fachwerk statt Vollring, Rückwand entfällt — Rack 226 → 126 €
- **4v** einspaltiges Rack kippt bei 320 N — Wandbefestigung ist Pflicht
- **4y** Reservoir gehört an den Schrank, nicht ans Modul
- **4ab** Arbeitsmappe speist das CAD direkt, 50 Parameter
- **4ac** Modul läuft auf Rollen — Auszugskraft 108 → 11 N
- **4ae** Innenboden ist eine herausnehmbare Wanne mit Radien

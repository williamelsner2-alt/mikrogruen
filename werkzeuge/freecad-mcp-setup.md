# FreeCAD-MCP in Claude Desktop (Windows) — Einrichtung und Fallstricke

*Stand: 22.08.2026 (B2-Prüfung aufgelöst: mitgelieferte uv-Runtime bestätigt aktiv) · Rechner: williams-laptop (Windows, Benutzer `Arbeit`) · FreeCAD 1.1.3*
*Zweck im Projekt: CAD-Werkzeugkette für AP 1 in `technik/zeitplan-prototyp.md`*

**Status: funktioniert.** Die Brücke besteht aus zwei Teilen — dem RPC-Server im FreeCAD-Addon
*und* dem von Claude Desktop gestarteten Prozess. Erscheint nichts unter Connectors, fehlt der
zweite Teil, nicht der erste.

> **Prüfung erledigt (22.08.2026, William am Rechner — löst Audit-Befund B2 und Vorschlag 17
> auf):** Der `command`-Eintrag zeigt weiterhin auf die **mitgelieferte uv-Runtime**
> (`…\uv-runtime\uv-0.9.7-win32-x64\uvx.exe`). Diese Doku hatte also recht; die Behauptung des
> Projektgedächtnisses, es laufe bereits eine eigene uv-Installation, war **falsch** (gehört zur
> Gedächtnis-Korrektur in Audit-Vorschlag 26). Der Update-Fallstrick unten bleibt damit real.
> **Optionale Härtung (~5 min, empfohlen bei Gelegenheit):** `winget install --id astral-sh.uv`,
> danach im `command` den Pfad auf `C:\Users\Arbeit\.local\bin\uvx.exe` ändern, Claude
> Desktop vollständig neu starten (Infobereich → Beenden), Verifikation wie unten beschrieben.

---

## Modell und Arbeitsweise

| | |
|---|---|
| Dokumente | `MikrogruenRack.FCStd` + `MikrogruenModul.FCStd` (getrennt seit Befund 4aa) |
| Ablage | `C:\Users\Arbeit\Desktop\Claude\mikrogruen\cad\` — umgezogen am 21.08.2026 ✓ |
| Inhalt | Tabellenobjekt `Parameter` mit benannten Aliassen in beiden Dateien; Eingaben gelb, Formeln grün |
| Geprüft | Änderungen greifen durch die gesamte Maßkette (Test: Pflanzenhöhe 100 → 160 mm ⇒ Modul +60 mm ⇒ Etagenteilung 400 → 450 mm ⇒ Rack mit 4 Etagen 2080 mm) |

**Aliasse** (Auszug): `tray_L`, `tray_B`, `tray_h`, `n_trays`, `n_spalten`, `fuegespalt`,
`wandabstand`, `schiene_h`, `pflanzenhoehe`, `led_abstand`, `led_bauhoehe`, `reserve_h`,
`substrat_h`, `blech`, `daemm_ausleg`, `n_etagen`, `rastermass`, `fuehrungsspiel`, `profil`,
`sockel_h`, `trocken_b`, `trocken_h`, `nass_b`, `nass_h`, `bodenneigung`, `ablauf_d`, `loch_d`,
`loch_teilung`, `n_reihen`, `raster_x`, `raster_y`, `wand_ausleg`, `soll_b`, `soll_t`, `soll_h`,
`mod_a_b`, `mod_a_t`, `mod_a_h`, `ung_b`, `ung_t`, `ung_h`, `freiraum`, `technik_h`,
`technik_b_erf`, `teilung`, `rack_i_b`, `rack_b`, `rack_t`, `rack_h`, `z_basis`.
Vollständige, aktuelle Liste: `technik/cad-modellstand.md`, Abschnitt 2.

**Zwei Regeln, die nicht gebrochen werden dürfen:**

1. In Skizzen **niemals feste Zahlen**, immer Referenzen auf diese Aliasse.
2. Modul *k* liegt bei `Z = z_basis + (k−1) · teilung + fuehrungsspiel`.

**Arbeitsteilung:** Gerechnet wird in `mikrogruen-rack-modell.xlsx` (Licht, Klima, Wasser,
Kosten). Das FreeCAD-Spreadsheet trägt **nur** die geometriebildenden Größen. Die Werte fließen
seit dem 21.08. über Blatt `16-CAD-Parameter` und das Makro `MikrogruenParameter_Sync`
automatisch (Befund 4ab); Topologie und Fillet-Radien fließen **nicht** mit — Details und
Makro-Reihenfolge in `technik/cad-modellstand.md`, Abschnitte 1a und 7.

---

## Ausgangslage der Einrichtung

Der MCP-Server "freecad" tauchte nicht in der Connectors-Liste auf, obwohl das FreeCAD-Addon
installiert war und dessen RPC-Server lief. Es fehlte die MCP-Brücke auf Claude-Desktop-Seite.

## Diagnose-Befunde

1. **Logs** (`%APPDATA%\Claude\logs\`): Es existierte keine `mcp-server-freecad.log`, und
   `mcp.log` enthielt ausschließlich `[Blender]`-Einträge. Claude Desktop hatte also nie
   *versucht*, einen Server "freecad" zu starten — kein Startfehler, sondern eine fehlende
   Definition.

2. **Konfigurationsdatei**: Liegt unter `%APPDATA%\Claude\claude_desktop_config.json`.
   Einen Unterordner `config\` gibt es **nicht**. Die Datei enthielt überhaupt kein
   `mcpServers`-Objekt.

3. **Blender kommt nicht aus dieser Datei.** Blender ist als Desktop-Extension installiert:
   `%APPDATA%\Claude\Claude Extensions\ant.dir.gh.blender.blender-mcp`. Extensions und
   `claude_desktop_config.json` sind zwei getrennte Mechanismen.

4. **`uv` / `uvx` / `pipx` sind auf diesem Rechner nicht installiert.** Es gibt auch keinen
   `.local`-Ordner. Die verbreitete Vermutung "Claude Desktop erbt den PATH des Terminals
   nicht" traf hier also *nicht* zu — der Befehl existierte schlicht nirgends.

5. **Claude Desktop bringt eine eigene uv-Runtime mit**:
   `%APPDATA%\Claude\uv-runtime\uv-0.9.7-win32-x64\` mit `uv.exe`, `uvw.exe` und `uvx.exe`.
   Die Blender-Extension benutzt genau diese.

## Angewandte Lösung

In `claude_desktop_config.json` wurde ein `mcpServers`-Objekt ergänzt, das auf die
mitgelieferte `uvx.exe` zeigt:

```json
"mcpServers": {
  "freecad": {
    "command": "C:\\Users\\Arbeit\\AppData\\Roaming\\Claude\\uv-runtime\\uv-0.9.7-win32-x64\\uvx.exe",
    "args": ["freecad-mcp"]
  }
}
```

Backup des Originals: `%APPDATA%\Claude\claude_desktop_config.backup-20260819.json`

## Wichtige Fallstricke für später

- **Der Pfad enthält die uv-Version `0.9.7`.** Bei einem Claude-Desktop-Update kann dieser
  Ordner durch eine neue Version ersetzt werden — dann bricht der Eintrag. Symptom: freecad
  verschwindet nach einem Update wieder aus der Connectors-Liste. Fix: den Ordner unter
  `%APPDATA%\Claude\uv-runtime\` nachsehen und die Versionsnummer im `command` nachziehen.
  Dauerhaft robuster wäre `winget install --id astral-sh.uv` und dann
  `C:\Users\Arbeit\.local\bin\uvx.exe` als `command`.
- **Erster Start dauert.** `uvx` lädt `freecad-mcp` beim ersten Mal von PyPI. Das kann
  Claude Desktops Start-Timeout überschreiten. Bei Fehlschlag im ersten Anlauf einfach noch
  einmal neu starten — dann liegt das Paket im uv-Cache.
- **Neustart muss vollständig sein.** Fenster schließen genügt nicht; der Prozess läuft im
  Infobereich weiter und muss dort über Rechtsklick → Beenden geschlossen werden.
- **Das FreeCAD-Addon muss laufen**, damit der MCP-Server sich verbinden kann.

## Verifikation

Nach dem Neustart muss `%APPDATA%\Claude\logs\mcp-server-freecad.log` existieren, und
`mcp.log` sollte `[freecad] Server started and connected successfully` enthalten.

## Umgebungshinweis

`%APPDATA%\Claude` lässt sich einer Cowork-Session **nicht** als Ordner freigeben
(Claude Desktop schützt seinen eigenen Konfigurationsordner). Terminals (PowerShell, cmd,
Windows Terminal) sind für die Fernsteuerung ebenfalls gesperrt. Zugriff auf Logs und Config
war nur über den Editor (Notepad) per Fernsteuerung möglich; Shell-Befehle muss William
selbst ausführen.

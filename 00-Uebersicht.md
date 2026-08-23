# Projektübersicht: Vollautomatisierte Gewächshäuser

*Index der Projektablage · Struktur zuletzt geordnet: 23.08.2026*

Bootstrapped Gründungsvorhaben für automatisierte Premium-Anbausysteme (Mikrogrüns,
Spezialkräuter) für die Gastronomie, mit dem langfristigen Ziel vollautomatisierter Gewächshäuser.
Kapitalarmer Einstieg unter 1.000 €, Qualität vor Quantität, Zielgruppe Haute Cuisine.

**Der Prototyp ist ein modulares Edelstahl-Rack:** ein offenes Ständerwerk trägt austauschbare
Klimamodule über einem zentralen Technikfach. Der Konstruktionsgegenstand ist die
Modulschnittstelle, nicht das Gehäuse.

> **Aktueller Stand steht nicht hier, sondern in `projekt/01-status.md`.** Dieses Dokument beschreibt nur,
> was wo liegt.

---

## Einstieg — welche Datei für welche Frage

| Frage | Datei |
|---|---|
| Wie weit ist das Vorhaben gerade, was ist zu entscheiden? | `projekt/01-status.md` |
| Was stimmt noch nicht? | `projekt/03-probleme.md` |
| Was könnte man später machen? | `projekt/04-ideen.md` |
| Wer ist beteiligt, welches Budget, welche Werkzeuge? | `projekt/02-rahmen-und-netzwerk.md` |
| Wie ist das Rack konstruiert und warum so? | `technik/prototyp-bauplan.md` |
| Woran muss sich jede Konstruktionsentscheidung messen? | `technik/konstruktionskriterien.md` |
| Welche Maße, Koordinaten, Baugruppen? | `technik/3d-modell-briefing.md` |
| Wie weit ist das CAD-Modell, wo sind die Fallen? | `technik/cad-modellstand.md` |
| Was ist als Nächstes zu tun? | `technik/zeitplan-prototyp.md` |
| Welche Sorten, wann aussäen? | `anbau/sorten-und-staffelung.md` |
| Was kostet / bringt / misst das? | `mikrogruen-rack-modell.xlsx` |
| Hält das Rack, wie weit dürfen die Schränke weg? | `mikrogruen-rack-modell.xlsx`, Blätter 11 und 12 |
| Wie schwer wird ein Modul im Vollausbau? | `mikrogruen-rack-modell.xlsx`, Blatt 14 |
| Vollring oder Fachwerk, hält die Auflageschiene? | `mikrogruen-rack-modell.xlsx`, Blatt 15 |
| Was wird verkauft, und wann? | `wirtschaft/produktkatalog.md` + `wirtschaft/fahrplan.md` |
| Wie bleibt das Vorhaben in eigener Hand? | `wirtschaft/ip-und-verhandlung.md` |
| Wie werden Chats benannt und beendet? | `werkzeuge/chat-konvention.md` |
| Welches Werkzeug, welches Modell, welcher Aufwand? | `werkzeuge/arbeitsteilung.md` |
| Welche Instanz erreicht was — und wie reden sie miteinander? | `werkzeuge/instanzen-und-zugriffe.md` |
| Hat mir eine andere Instanz etwas hinterlassen? | `werkzeuge/postfach/an-<name>.md` — zu Sessionbeginn prüfen (Skill `briefkasten`) |
| Wie voll ist das Kontingent gerade? | `werkzeuge/kontingent.md` (Momentaufnahme — Zeitstempel beachten) |

**Für einen neuen Chat genügen als Kontext:** `projekt/01-status.md` und `projekt/02-rahmen-und-netzwerk.md`.
Alles Weitere nur, wenn das Thema es verlangt.

---

## Alle Dateien

### Wurzel und `projekt/` — projektweit

| Datei | Inhalt |
|---|---|
| `00-Uebersicht.md` | dieses Dokument — Index und Pflegeregeln |
| `projekt/01-status.md` | **lebendes Dokument.** Stand, Befunde, nächste Schritte, offene Fragen, Änderungsprotokoll |
| `projekt/03-probleme.md` | **Problemregister.** Alles, was noch nicht stimmt — mit ID, Auswirkung und nächstem Schritt |
| `projekt/04-ideen.md` | **Ideenregister.** Alles, was später kommen könnte — bewusst nicht jetzt |
| `projekt/02-rahmen-und-netzwerk.md` | Kapital, Schufa, Zeitbudget, Personen, Standorte, Werkzeuge · *vertraulich* |
| `mikrogruen-rack-modell.xlsx` | parametrisches Rechenmodell — die einzige Quelle für konkrete Zahlen |

> **Zum Dateinamen der Arbeitsmappe:** In der Projektablage erscheint sie als
> `mikrogruenrackmodell.xlsx` — hochgeladene Dateien verlieren dort die Bindestriche. Im
> Arbeitsordner auf dem Rechner heißt sie `mikrogruen-rack-modell.xlsx`. Es ist dieselbe Datei;
> alle Verweise in den Dokumenten benutzen die Schreibweise mit Bindestrichen.

### `technik/` — Hardware und Steuerung

| Datei | Inhalt |
|---|---|
| `prototyp-bauplan.md` | Rack-Architektur, Modulschnittstelle, Material, Maßkette, Klimazonen, Ausbaustufen, Fertigung, Elektrik, Steuerungslogik V1/V2 |
| `konstruktionskriterien.md` | **Regeln, keine Maße.** Zonen, Reinigbarkeit, Blech, Tragwerk, Parametrik, Sicherheit — mit Liste der aktuellen Verstöße |
| `zeitplan-prototyp.md` | Arbeitspakete, kritischer Pfad, Risiken; Modus A (ohne Termin) und B (mit Termin) |
| `3d-modell-briefing.md` | Koordinaten, Baugruppenhierarchie, Positionen — zur Übergabe an Modellierwerkzeuge |
| `cad-modellstand.md` | Was im FreeCAD-Volumenmodell steht, ergänzte Parameter, Fallstricke, was noch fehlt |
| `rack-architektur.svg` | Prinzipskizze: Rack, Module, Technikfach, Schnittstelle |

### `anbau/` — Pflanzenseite

| Datei | Inhalt |
|---|---|
| `sorten-und-staffelung.md` | Sortenkatalog, Auswahlkriterien, Rückwärtsrechnung der Aussaat, Erntemengen |
| `stresssteuerung-grundlagen.md` | **Methodik**: wie gezielter Stress Geschmack und Wirkstoffe steuert — Dosisgesetz, Zeitfenster, Nachweis |
| `sorten/` | **eine Datei je Sorte** nach festem Aufbau: Steckbrief, Wirkkette, Hebel, Versuchsansatz, Fallen, Ernte |
| `sorten/_vorlage.md` | Muster für eine neue Sorte — kopieren, nicht neu erfinden |
| `lernpfad-agrarwissenschaft.md` | Kurse, Bücher, Reihenfolge für die CEA-Weiterbildung |

### `wirtschaft/` — Strategie und Recht

| Datei | Inhalt |
|---|---|
| `fahrplan.md` | sechs Phasen mit Auslösern statt Terminen — beantwortet **wann** |
| `produktkatalog.md` | fünf Produktlinien mit Voraussetzungen — beantwortet **was** |
| `ip-und-verhandlung.md` | Schutz der Idee, Rollenklärung mit der Firma, gestufte Offenlegung |
| `finanzierung-und-wettbewerbe.md` | Fördermittel und Wettbewerbe nach Aufwand-Nutzen sortiert, mit Fristen und Wiedervorlage |

### `werkzeuge/` — Arbeitsumgebung

| Datei | Inhalt |
|---|---|
| `freecad-mcp-setup.md` | FreeCAD-MCP in Claude Desktop: Einrichtung, Fallstricke, Verifikation |
| `chat-konvention.md` | Namensschema und Lebenszyklus der Claude-Chats und Cowork-Sessions, mit Migrationstabelle vom 22.08.2026 |
| `arbeitsteilung.md` | Werkzeug-, Modell- und Aufwandswahl je Aufgabentyp, mit Token-Sparregeln |
| `schicht-auftraege.md` | Warteschlange des Schichtdienstes (geplante Aufgabe, Zeit einstellbar) — rückfragefreie Rechercheaufträge |
| `arbeitsteilung-fehlversuche.md` | Sammlung realer Fälle, in denen Werkzeug-/Ablagewahl nicht griff — Grundlage für den Leitstand |
| `leitstand.md` | Rollen, Grenzen und Kickoff-Text des Leitstands (Aufnahme, Einordnung, Delegation) |
| `projekt-instructions.md` | Referenzkopie der Projekt-Instructions — wird von Hand in die Projekteinstellungen eingefügt |
| `git-einrichtung.md` | Versionierung des Arbeitsordners: erledigte Vorbereitung und die drei Schritte am Rechner |
| `auto-sicherung.md` | automatische Git-Sicherung des Arbeitsordners (Aufgabenplanung, Skript, Bedienung) |
| `kontingent.md` | Momentaufnahme des Konto-Kontingents mit Verfallsregeln — wird überschrieben, nicht gepflegt |
| `instanzen-und-zugriffe.md` | Zugriffs-Matrix aller Instanzen, Instanzen-Verzeichnis, Kommunikationskanäle, Sammeldatei-Regeln |
| `postfach/` | **Briefkasten:** gerichtete Nachrichten zwischen Instanzen, eine Datei je Empfänger (`an-<name>.md`) — Regeln in `instanzen-und-zugriffe.md`, Abschnitt 3; Vollform als kontoweiter Skill `briefkasten` |

---

## Der Arbeitsordner auf dem Rechner

Neben dieser Projektablage gibt es eine gespiegelte Kopie unter
`Desktop\Claude\mikrogruen\`. Sie enthält zusätzlich, was hier nicht liegen kann:

| Ordner | Inhalt |
|---|---|
| `cad/` | FreeCAD-Dateien und das Rastermakro — seit 21.08. der Speicherort des Modells |
| `3d-export/` | STEP, OBJ, STL zum Anschauen und Weitergeben ohne FreeCAD |
| `MikrogruenRack_Ansichten/` | gerenderte Ansichten je Rasterform |
| `_alt_2026-08-19/` | überholte Vorversionen, nichts davon ist gültig — Verfallsdatum: erster Git-Commit (`werkzeuge/git-einrichtung.md`) |
| `berichte/` | Audit- und Auswertungsberichte — seit 22.08. auch in der Projektablage gespiegelt |
| `uebergabe/` | vollständiges Übergabepaket der CAD-Session vom 22.08. (Rohverlauf, Bilder, LIESMICH) |
| `manifest/` | Konto-Datenexport — **enthält private Chats aller Projekte, sollte gelöscht werden** (Audit-Vorschlag 26) |

**Die Projektablage führt.** Läuft der Ordner auseinander, wird er aus dem Projekt neu
befüllt, nicht umgekehrt.

---

## Wie die Dokumente zusammenhängen

```
mikrogruen-rack-modell.xlsx        rechnet alle Zahlen
        │
        ├─→ technik/prototyp-bauplan.md      beschreibt die Regeln dahinter, keine Zahlen
        ├─→ technik/3d-modell-briefing.md    übersetzt Zahlen in Koordinaten (Momentaufnahme!)
        ├─→ projekt/01-status.md             bewertet die Ergebnisse
        └─→ FreeCAD-Spreadsheet              trägt nur die geometriebildenden Größen
```

Der Bauplan enthält bewusst keine konkreten Maße. Ändert sich etwas, ändert es sich in der
Arbeitsmappe, und die abhängigen Werte ziehen nach. Zwischen Arbeitsmappe und FreeCAD gibt es
**keine automatische Verbindung** — geometrierelevante Änderungen sind von Hand nachzuziehen.

---

## Arbeitsteilung der Dokumente

Damit nichts doppelt gepflegt werden muss, gilt eine feste Zuständigkeit:

| Art von Information | Steht ausschließlich in |
|---|---|
| **Zahlen und Maße** | `mikrogruen-rack-modell.xlsx` |
| **Aktueller Stand, Entscheidungen, Befunde** | `projekt/01-status.md` |
| **Was verkauft wird** | `wirtschaft/produktkatalog.md` |
| **Wann etwas passiert** | `wirtschaft/fahrplan.md` (langfristig) · `technik/zeitplan-prototyp.md` (Prototyp) |
| **Konstruktionsregeln (allgemein)** | `technik/konstruktionskriterien.md` |
| **Konstruktionsentscheidungen (konkret)** | `technik/prototyp-bauplan.md` |
| **Sortenwissen** | `anbau/sorten-und-staffelung.md`, vertieft je Sorte in eigener Datei |

Steht dieselbe Aussage an zwei Stellen, gewinnt die zuständige Datei; die andere bekommt einen
Verweis statt einer Kopie.

---

## Pflegeregeln

1. **Neue Erkenntnis → zuerst `projekt/01-status.md`.** Erst wenn sie sich als dauerhaft erweist, wandert
   sie in das zuständige Fachdokument.
2. **Messwerte ersetzen Annahmen im Modell**, nicht im Fließtext. Die Dokumente sagen, *wie*
   gerechnet wird; die Arbeitsmappe sagt, *womit*.
3. **Ändert sich ein Eingabewert im Modell**, verliert `technik/3d-modell-briefing.md` seine
   Gültigkeit und muss neu abgeleitet werden. Es ist eine Momentaufnahme, keine Quelle.
4. **Neue Sorte** → `anbau/sorten/_vorlage.md` kopieren, ausfüllen, im Katalog
   `anbau/sorten-und-staffelung.md` verlinken. Die allgemeine Methodik bleibt in
   `anbau/stresssteuerung-grundlagen.md` — in der Sortendatei steht nur das Sortenspezifische.
5. **Kopfzeile beibehalten:** jede Datei beginnt mit Inhaltsstand, Strukturstand und den
   Nachbardokumenten. Das ist die Navigation.
6. **Dateiverweise als Pfad schreiben** (`anbau/sorten-und-staffelung.md`), nicht als Fließtext
   ("siehe Anbaudokument") — sonst brechen sie beim nächsten Umbau unbemerkt.
7. **Problem oder Idee → sofort ins Register.** Ein Problem, das nur im Chat steht, ist kein
   Problem, sondern eine Erinnerung, die verfällt. Jeder Eintrag bekommt eine ID (P-xx / I-xx),
   auf die man sich später berufen kann.
8. **Sammeldateien frisch lesen, bevor geschrieben wird** — und während Parallelarbeit hat
   jede Sammeldatei genau einen Schreiber. Die vollständigen Regeln (samt Beleg F-04) stehen
   in `werkzeuge/instanzen-und-zugriffe.md`, Abschnitt 4.
9. **Vertrauliches kennzeichnen.** `projekt/02-rahmen-und-netzwerk.md` und alles mit Rezeptur- oder
   Kundendaten trägt den Vermerk in der Kopfzeile — das ist Voraussetzung für den
   Geschäftsgeheimnisschutz, siehe `wirtschaft/ip-und-verhandlung.md`.

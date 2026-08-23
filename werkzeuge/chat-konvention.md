# Chat-Konvention — Benennung und Lebenszyklus

*Stand: 23.08.2026 (neu: Rollen-Kürzel `[WERK]`; Migrationsstand nachgeführt) · gilt für claude.ai-Chats und Cowork-Sessions im Projekt „Technologie und Agrar Unternehmen"*
*Nachbardokumente: Pflegeregeln in `00-Uebersicht.md` · Herleitung in `berichte/workflow-audit-v2-2026-08-22.md` (Vorschläge 1 und 2)*

Chats sind Arbeitsräume, keine Ablage. Was bleiben soll, wandert in die Projektdokumente
(Pflegeregel 7) — der Chat selbst bekommt einen Namen, unter dem man ihn wiederfindet, und ein
Ende, nach dem er nicht weiterwächst.

---

## 1. Namensschema

**Muster:** `[KÜRZEL] Thema` — das Thema als knappe Substantivphrase, möglichst unter fünf Wörtern.

| Kürzel | Bereich | Beispiele |
|---|---|---|
| `[CAD]` | FreeCAD-Arbeit am Modell | `[CAD] Frontklappe und Scharniere` |
| `[TECH]` | Technik außerhalb des CAD: Steuerung, Elektrik, Fertigung | `[TECH] Firmware V1 am Steckbrett` |
| `[ANBAU]` | Sorten, Substrat, Stressrezepturen, Chargen | `[ANBAU] Sortenliste erste Charge` |
| `[WIRT]` | Strategie, Förderung, Recht, Kunden | `[WIRT] BayStartUP-Registrierung` |
| `[DOKU]` | Ablagepflege, Werkzeuge, Workflow | `[DOKU] Workflow-Audit` |
| `[LEIT]` | Leitstand (Audit-Vorschlag 25, `werkzeuge/leitstand.md`) | `[LEIT] Leitstand` |
| `[WERK]` | Werkstatt — stehende Umsetzungs- und Werkzeugbau-Session | `[WERK] Werkstatt` |

**Rollen-Kürzel:** `[LEIT]` und `[WERK]` bezeichnen keine Arbeitspakete, sondern **stehende
Instanzen** (Rollen-Sessions). Sie tragen den Namen ihrer Rolle, bekommen kein
Abschluss-Suffix, solange die Rolle lebt, und stehen mit Lane und Postfach im
Instanzen-Verzeichnis (`werkzeuge/instanzen-und-zugriffe.md`, Abschnitt 3a) — Chatliste und
Verzeichnis sagen so dasselbe.

**Regeln:**

1. **Der Name wird beim Start vergeben**, nicht später. Automatisch erzeugte Titel sofort
   überschreiben — ein automatischer Titel ist das Signal, dass die Regel gerade bricht.
2. **Ein Chat = ein Arbeitspaket.** Wechselt das Thema, beginnt ein neuer Chat; den Kontext
   liefert die Ablage, nicht der Verlauf. Das gilt für Cowork-Sessions genauso — die
   CAD-Session vom 19.–22.08. hat gezeigt, dass auch Sessions zu Sammelbecken werden können.
3. **Abgeschlossene Chats bekommen ein Suffix:** `(abgeschlossen)` oder `(übergeben TT.MM.)`.
   Ein Chat gilt als abgeschlossen, wenn seine Ergebnisse in der Ablage stehen — danach wird er
   nicht mehr fortgesetzt, nur noch nachgeschlagen.
4. **Andere Vorhaben bleiben in ihren eigenen Projekten** (Ausbildung, Fundstück,
   claude-optimierung mit `[OPT]`). Dort ist kein Mikrogrün-Kürzel nötig — die
   Projektzugehörigkeit trennt bereits. Kürzel nur, wo mehrere Bereiche in einem Projekt
   zusammenlaufen, also hier.

**Warum so:** Die Kürzel spiegeln die Ordnerstruktur der Ablage — dieselbe Sortierung an beiden
Orten. Man sieht in der Chatliste ohne Öffnen, ob es zu einem Thema schon einen Chat gibt, und
das Suffix trennt Lebendiges von Nachschlagbarem.

---

## 2. Einmalige Migration — Umbenennungsliste vom 22.08.2026

Umbenennen geht nur von Hand (Chatliste → Chat → Titel anklicken bzw. ⋯-Menü → Umbenennen).
Vorschläge, gerne anpassen:

| Bisheriger Name | Neuer Name |
|---|---|
| Automatisierte Gewächshäuser mit kleinem Budget gründen | `[WIRT] Gründungskonzept (abgeschlossen)` |
| Technische Umsetzung und Realisation | `[TECH] Von der Box zum Rack (abgeschlossen)` |
| Projektkompatibilität prüfen | `[WIRT] Förder-Check EIC (abgeschlossen)` |
| Fable Cowork Workflow-Optimierung und Tool-Integration | `[DOKU] Audit-Prompt (abgeschlossen)` |
| Skill creator tool | löschen — durch die Skills `ablage-pflege` / `chat-uebergabe` überholt *(Konto-Hygiene, übergeben an claude-optimierung)* |
| Agrar-Technologie Projekt CAD *(Cowork)* | `[CAD] Rack und Modul (übergeben 22.08.)` |
| FreeCAD MCP Server troubleshooting *(Cowork)* | löschen — Gehalt steckt in `werkzeuge/freecad-mcp-setup.md` |
| Prompt cowork workflow audit *(Cowork)* | ✓ **erledigt 23.08.** — hieß zunächst `[DOKU] Workflow-Audit (übergeben 22.08.)`, ist seit dem 23.08. `[WERK] Werkstatt`: Aus der Audit-Session wurde die stehende Werkstatt-Instanz |
| 7 Chats ohne Titel (leer) | löschen *(Konto-Hygiene, übergeben an claude-optimierung)* |

Die Löschungen sind Teil der Aufräumaktion (Audit-Vorschlag 26) — wer beim Umbenennen ohnehin
durch die Liste geht, erledigt sie am besten gleich mit.

---

## 3. Chat-Ende

Das Abschlussritual ist im Skill `chat-uebergabe` beschrieben (sofern installiert; sonst von
Hand): Ergebnisse in Status und Register sichern, Übergabedokument erzeugen, Kickoff-Prompt für
den Nachfolge-Chat — dessen Name folgt diesem Schema.

**Eine Statuszeile ist kein Register-Ersatz.** Was eine Cowork-Session am Ende selbst
zusammenfasst, lebt nur in dieser Session — die CAD-Session vom 19.–22.08. hat einen offenen
Punkt („Klappenscharniere") genau so fast verloren (Befund B1a,
`berichte/workflow-audit-v2-2026-08-22.md`). Erst der Eintrag in `projekt/01-status.md` bzw.
im passenden Register (`projekt/03-probleme.md` / `projekt/04-ideen.md`) überlebt den Chat —
das Abschlussritual oben leistet das, eine eigene Zusammenfassung am Session-Ende ersetzt es
nicht.

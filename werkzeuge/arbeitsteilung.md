# Arbeitsteilung — Werkzeug, Modell, Aufwand

*Stand: 22.08.2026 · setzt Audit-Vorschlag 3 um, erweitert um Token-Ökonomie (Anlass: Sitzung vom 22.08.)*
*Nachbardokumente: `werkzeuge/chat-konvention.md` (Benennung/Abschluss) · `00-Uebersicht.md` (Pflegeregeln) · `berichte/workflow-audit-v2-2026-08-22.md` (Herleitung)*

Zwei Entscheidungen fallen vor jedem Arbeitsschritt: **welches Werkzeug** und **welche Stufe**
(Modell × Aufwand). Beide fallen hier einmal — nicht jedes Mal neu. Leitsatz: **Gespart wird am
Kontext und an der Stufenwahl, nie an der Qualität der Ergebnisse.** Die teuerste Sitzung ist
die, die wiederholt werden muss.

---

## 1. Werkzeug je Aufgabentyp

| Aufgabentyp | Werkzeug | Warum |
|---|---|---|
| CAD am Modell | Claude Desktop + FreeCAD-MCP | einziger Weg zur Werkzeugkette |
| Doku-/Register-Pflege, Dateiarbeit, Excel-Datei | Cowork mit Ordner | Schreibzugriff auf Ablage + Spiegel |
| Recherche, Denk- und Textarbeit | **normaler Chat im Projekt** | gleiche Qualität, deutlich sparsamer als Cowork |
| Arbeit auf konkreten Webseiten (Shops, Portale, Formulare) | Claude in Chrome | Seitenkontext statt Kopieren |
| Unterwegs erfassen (Ideen, Probleme, Kurzfragen) | iOS-App im Projekt | Pflegeregel 7 mobil |
| Rechner-Wartung (Logs, Configs, Shell) | Desktop Commander / Computernutzung, beaufsichtigt | Cowork-Fernsteuerung darf das nicht |
| Außen-Material: Einseiter, Pitch-Folien, Produktkarten | Claude Design, punktuell | Entwurfsqualität ohne Designkenntnisse — nichts Parametrisches, Artefakte veralten still (Audit 24) |
| Präsentations-Renderings aus `3d-export/` | Blender-MCP am Desktop, beaufsichtigt | fotorealistisch fürs Firmengespräch; hängt nicht an der Parameterkette (Audit 16) |
| Firmware (später, nach P-01) | Claude Code | agentisch + Git |

**Cowork nur, wenn Datei- oder Werkzeugzugriff gebraucht wird.** Reine Recherche oder Denkarbeit
in Cowork ist der häufigste vermeidbare Mehrverbrauch.

## 2. Stufe je Aufgabentyp — als Spanne

Notation: **min – max**. Die Untergrenze ist das Qualitätsminimum (darunter entstehen Fehler,
deren Korrektur mehr kostet als die Ersparnis), die Obergrenze der Kostendeckel. **Standardwahl
ist die Untergrenze**; eine Stufe höher nur bei erkennbarem Risiko (unklare Anforderung, viele
Abhängigkeiten, irreversible Entscheidung). Modellklassen mit heutigen Namen: Haiku (klein) ·
Sonnet (mittel) · Opus (groß) · Fable (Spitze); Aufwandsregler nutzen, wo das Modell ihn anbietet.

| Aufgabentyp | Spanne | Anmerkung |
|---|---|---|
| Register-/Doku-Pflege mit Skill, Umformatieren, Ablage-Routine | Sonnet niedrig – Sonnet hoch | Skill trägt die Regeln, das Modell führt aus |
| Unterwegs-Erfassung, Kurzfragen | Sonnet niedrig – Sonnet mittel | kurz halten, abends prüfen |
| Recherche (Fördermittel, Lieferanten, Datenblätter) | Sonnet mittel – Opus niedrig | Breite zählt mehr als Tiefe |
| Rechen-/Modellarbeit (Arbeitsmappe, Maßketten, Statik) | Sonnet hoch – Opus mittel | Rechenfehler sind die teuersten Fehler |
| CAD-Sitzungen (viele Werkzeugaufrufe) | Sonnet hoch – Opus mittel | Fable nur für Architekturfragen, nicht fürs Modellieren |
| Strategie, IP, Verhandlung, Texte nach außen | Opus mittel – Fable mittel | Urteilskraft zählt |
| Grundsatzentscheidungen mit Projektwirkung (z. B. dieses Audit) | Opus hoch – Fable max | bewusst und selten — vorher fragen: hängt wirklich alles daran? |

**Rolle des Leitstands (Audit-Vorschlag 25, erweitert):** Der Leitstand empfiehlt bei jeder
Delegation die Spanne mit — jeder Arbeitsauftrag endet mit einer Zeile
`Stufe: min Sonnet hoch – max Opus mittel` plus Ein-Satz-Begründung. Das Übergabe-Ritual
(Skill `chat-uebergabe`) tut dasselbe im Kickoff-Prompt. Seit 22.08. ist der Leitstand
eingerichtet (`werkzeuge/leitstand.md`, Chat `[LEIT] Leitstand`) und wendet diese Tabelle an; ohne ihn
gilt sie weiter direkt.

## 3. Sparregeln, die Qualität nicht kosten

1. **Kontext klein halten.** Neue Chats statt Fortsetzungen (`werkzeuge/chat-konvention.md`);
   Minimalkontext-Regel der Übersicht nutzen (Status + Rahmen genügen); nicht die ganze Ablage
   anhängen.
2. **Einmal erklären statt hundertmal:** Projekt-Instructions (Audit 5) und Skills tragen die
   Regeln — Prompts bleiben kurz.
3. **Fragen bündeln.** Fünf Einzelfragen über den Tag = fünfmal Kontextaufbau. Sammeln und in
   einem Chat stellen (der Leitstand ist dafür der natürliche Sammelort).
4. **Autonome Langläufe („arbeite weiter, bis…") nur mit klarem Auftrag, Abbruchkriterium und
   Zwischensicherung** — sie sind das stärkste, aber auch teuerste Muster. Nicht für Exploration
   verwenden.
5. **Erst denken lassen, dann bauen lassen.** Entwurf/Plan auf kleiner Stufe prüfen, Umsetzung
   auf der nötigen Stufe fahren — statt teurer Vollläufe ins Blaue.
6. **Wiederholungen automatisieren:** Was zum dritten Mal gleich abläuft, wird Skill, Makro
   oder geplante Aufgabe.
7. **Die Untergrenze ist eine Grenze.** Bei Rechen-, Maßketten- und Rechtsfragen nie unter die
   Spanne gehen — Befund 4k–4s zeigt, was unentdeckte Fehler kosten.
8. **Modellwechsel bündeln, nicht pendeln.** Ein Wechsel der Modellstufe *innerhalb* eines
   Chats liest beim nächsten Beitrag den gesamten bisherigen Verlauf neu ein — spürbar
   langsamer und teurer als viele der Aufgaben selbst (Sitzung 22.08.: entdeckt am Warnhinweis
   beim Wechselversuch). Deshalb: anstehende Aufgaben grob nach Stufe sortieren (Abschnitt 2),
   dann blockweise auf der jeweils passenden Stufe abarbeiten — alles, was zur aktuell
   laufenden Stufe passt, zuerst erledigen, danach erst wechseln. Eine einzelne kleine
   Aufgabe auf zu hoher Stufe mitlaufen zu lassen, ist fast immer billiger als für sie extra
   herunter- und wieder hochzuschalten. Ausführlicher, noch zu prüfender Gedanke dazu: I-27
   im Ideenregister.

## 4. Kontingent-Bewirtschaftung

**Was Claude sehen kann und was nicht:** Den Stand des Konto-Kontingents (Max-Fenster) kann
Claude aus einer Session heraus **nicht** auslesen — die Prozentanzeige lebt in der Oberfläche.
Was geht: die Verteilung der Tokens *innerhalb* einer Session erklären lassen
(Stichwort „explain usage"), und **Schwellen von Hand melden** — eine kurze Nachricht wie
„Achtung 90 %" genügt, Claude schaltet dann auf Sicherungsmodus (Ergebnisse sichern, Übergabe,
kompakte Schritte). Diese Meldung gehört zum Arbeitsablauf wie das Umbenennen der Chats.

**Die Fenster ausnutzen statt an ihnen zu scheitern:** Das Kontingent regeneriert in
Zeitfenstern. Konsequenzen:

1. **Schwere Arbeit in die stillen Stunden.** Token-intensive, rückfragefreie Aufträge
   (Recherche, Rechnung, Dokumentation) laufen als geplante Aufgabe **„Schichtdienst
   Mikrogrün"** über die Warteschlange `werkzeuge/schicht-auftraege.md`. Standardzeit ~03:00,
   aber **frei einstellbar** (Aufgaben-Verwaltung oder Zuruf an Claude) und jederzeit **auf
   Abruf** startbar — die Schicht gehört in die Stunden, in denen William das Kontingent nicht
   selbst braucht, nicht zwingend in die Nacht. Ausbaustufen dazu im Ideenregister: I-25
   (Git-Brücke, damit auch Cloud-Läufe den Spiegel erreichen) und I-26 (kontingentgesteuerte
   Betriebsmodi).
2. **Interaktive Fenster für Interaktives.** Tagsüber die Stufen-Spannen aus Abschnitt 2
   fahren; Spitzenmodelle bewusst und selten (Zeile „Grundsatzentscheidungen").
3. **Vor großen Sitzungen: Fenster prüfen.** Eine Fable-max-Sitzung nicht am Ende eines fast
   verbrauchten Fensters beginnen.
4. **Abbruch ist kein Verlust, wenn übergeben wurde.** Das Übergabe-Ritual (`chat-uebergabe`)
   macht jede Unterbrechung folgenlos — deshalb gilt: lieber bei 90 % sauber übergeben als bei
   100 % abreißen.

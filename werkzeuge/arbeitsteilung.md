# Arbeitsteilung — Werkzeug, Modell, Aufwand

*Stand: 23.08.2026 · setzt Audit-Vorschlag 3 um, erweitert um Token-Ökonomie (Anlass: Sitzung vom 22.08.) und um die Kontingentdatei (23.08., Idee I-24)*
*Nachbardokumente: `werkzeuge/chat-konvention.md` (Benennung/Abschluss) · `werkzeuge/kontingent.md` (Momentaufnahme des Kontingentstands) · `00-Uebersicht.md` (Pflegeregeln) · `berichte/workflow-audit-v2-2026-08-22.md` (Herleitung)*

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
| Rechner-Wartung (Logs, Configs, Shell, geplante Aufgaben am Rechner) | Desktop Commander / Computernutzung, beaufsichtigt | Cowork-Fernsteuerung darf das nicht — **und kann es nicht:** die Geräte-Brücke bietet Dateien, Computernutzung, FreeCAD und Blender, aber keine Kommandozeile (festgestellt 23.08.) |
| Außen-Material (Einseiter, Folien, Mockups) | Claude Design | Darstellung ja, Parametrik nein |
| Präsentations-Renderings aus den 3D-Exporten | Blender-MCP | schon verbunden, nutzt die vorhandene Exportkette |
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
| Skripte und Rechner-Einrichtung (Melder, Makros, geplante Aufgaben) | Sonnet hoch – Opus mittel | läuft später unbeaufsichtigt; ein Skript, das still Falsches schreibt, ist schlimmer als keins |
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
9. **Unbeaufsichtigtes braucht Zwischenstände, keine Deckel.** Ein Lauf, der nach jedem
   Teilergebnis sichert, darf beliebig lang laufen — ein Abbruch kostet dann nur das angefangene
   Stück. Ein Lauf ohne Zwischensicherung braucht ein hartes Limit. Der Schichtdienst ist seit
   23.08. der erste Fall: Auftragslimit gestrichen, Sicherung nach jedem Auftrag zur Bedingung
   gemacht (Abschnitt 4, Punkt 1).

## 4. Kontingent-Bewirtschaftung

**Was Claude sehen kann und was nicht** *(Stand 23.08., Recherche zu I-24)*:

- **Den kontoweiten Kontingentstand kann Claude aus einer Session heraus nicht abfragen.** Es
  gibt dafür keine offizielle Schnittstelle; der Wunsch, die Auslastung an Statusline und Hooks
  durchzureichen, wurde bei Anthropic ausdrücklich abgelehnt. Was es gibt, sind Umwege, und die
  stehen samt Grenzen in `projekt/04-ideen.md` unter I-24.
- **Auch das eigene laufende Modell** ist von innen nicht sicher erkennbar (Nachtrag zu I-24).
  Claude nennt die empfohlene Stufe, die laufende bestätigt William.
- **Der eigene Sessionverbrauch** ist dagegen aufschlüsselbar („explain usage"). Für *fremde*,
  bereits beendete Sessions — etwa einen Schichtdienst-Lauf — gibt es keine Zahl; deshalb
  berichtet seit 23.08. jeder Lauf seinen Verbrauch selbst (Idee I-30).
- **Die lokalen Werkzeuge** (`/usage`, `ccusage`) sehen ausschließlich Sitzungen, die auf dem
  Rechner gelaufen sind. Cloud-Läufe und claude.ai-Chats tauchen dort **nie** auf — wer damit
  plant, unterschätzt den Verbrauch systematisch.

**Die Kontingentdatei.** `werkzeuge/kontingent.md` ist der vereinbarte Ort für den jeweils
letzten gemessenen Stand. Sie trägt immer einen Zeitstempel, und die beiden Zahlen altern
verschieden schnell: der **5-Stunden-Wert ist nach 15 Minuten unbrauchbar**, der
**7-Tage-Wert hält Stunden**. Keine Datei, keine Zahlen oder ein zu alter Zeitstempel heißen
„kein Wert" — dann wird normal gearbeitet und die Lücke offen benannt, statt einen alten Wert
als aktuellen auszugeben. Bis ein automatischer Melder steht, bleibt die **Schwellen-Meldung von
Hand** („Achtung 90 %") der verlässliche Weg; sie gehört zum Arbeitsablauf wie das Umbenennen
der Chats.

**Die Fenster ausnutzen statt an ihnen zu scheitern:** Das Kontingent regeneriert in
Zeitfenstern. Konsequenzen:

1. **Schwere Arbeit in die stillen Stunden.** Token-intensive, rückfragefreie Aufträge
   (Recherche, Rechnung, Dokumentation) laufen als geplante Aufgabe **„Schichtdienst
   Mikrogrün"** über die Warteschlange `werkzeuge/schicht-auftraege.md`. Standardzeit ~03:00,
   aber **frei einstellbar** (Aufgaben-Verwaltung oder Zuruf an Claude) und jederzeit **auf
   Abruf** startbar. Seit 23.08. arbeitet ein Lauf die **Warteschlange leer** statt nur einen
   Auftrag — tragfähig nur, weil er nach jedem Auftrag sichert (Sparregel 9). Eine
   Kontingent-Bremse ist im Aufgaben-Prompt bereits angelegt und greift, sobald
   `werkzeuge/kontingent.md` frische Werte führt. Ausbaustufen im Ideenregister: I-24
   (Sichtbarkeit), I-25 (Git-Brücke, damit auch Cloud-Läufe den Spiegel erreichen), I-26
   (kontingentgesteuerte Betriebsmodi), I-30 (Verbrauchsmessung je Lauf).
2. **Interaktive Fenster für Interaktives.** Tagsüber die Stufen-Spannen aus Abschnitt 2
   fahren; Spitzenmodelle bewusst und selten (Zeile „Grundsatzentscheidungen").
3. **Vor großen Sitzungen: Fenster prüfen.** Eine Fable-max-Sitzung nicht am Ende eines fast
   verbrauchten Fensters beginnen.
4. **Abbruch ist kein Verlust, wenn übergeben wurde.** Das Übergabe-Ritual (`chat-uebergabe`)
   macht jede Unterbrechung folgenlos — deshalb gilt: lieber bei 90 % sauber übergeben als bei
   100 % abreißen.
5. **Was einmal läuft, läuft weiter.** Eine geplante Aufgabe oder Wiedervorlage verbraucht
   Kontingent nach ihrem eigenen Takt, auch wenn die Absicht sich geändert hat — und ein
   laufender Cloud-Lauf ist von einer anderen Session aus **nicht abbrechbar** (F-03 in
   `werkzeuge/arbeitsteilung-fehlversuche.md`). Wer etwas plant, plant auch das Abräumen mit.

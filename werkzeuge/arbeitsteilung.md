# Arbeitsteilung — Werkzeug, Modell, Aufwand

*Stand: 01.09.2026 (Nachträge: Abschnitt 2 — Spitzenstufe hat kein eigenes Kontingent; Abschnitt 4 — Nutzungsanzeige vermessen, Anker-Delta-Rechenfalle) · setzt Audit-Vorschlag 3 um, erweitert um Token-Ökonomie (22.08.) sowie
Kontingent-Stand und Sparregel 9 (23.08., Zulieferung des Leitstands per Postfach)*
*Nachbardokumente: `werkzeuge/chat-konvention.md` (Benennung/Abschluss) · `werkzeuge/instanzen-und-zugriffe.md` (wer erreicht was) · `werkzeuge/kontingent.md` (Momentaufnahme) · `00-Uebersicht.md` (Pflegeregeln) · `berichte/workflow-audit-v2-2026-08-22.md` (Herleitung)*

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
| Rechner-Wartung (Logs, Configs, Shell) | Desktop Commander — seit 23.08. auch aus Cowork durchgereicht — / Computernutzung, beaufsichtigt | Zugriffs-Matrix: `werkzeuge/instanzen-und-zugriffe.md` |
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

**Was die Spitzenstufe kostet** *(beantwortet 01.09.2026 aus der Dokumentation, nicht gemessen —
Zulieferung von `opt/besprechungsraum`; der geplante Fable-Test erübrigt sich damit)*:
Spitzenstufen-Nutzung zählt **auf dasselbe Wochenlimit** wie alles andere; bis zu **50 % des
Wochenlimits** dürfen darauf entfallen, ohne Aufpreis. Also **eine zusätzliche Obergrenze
innerhalb desselben Topfes, kein eigenes Kontingent** — ein Fable-Lauf kostet **nicht** doppelt.

Die Obergrenzen der Tabelle bleiben trotzdem stehen, jetzt aber aus gemessenem Grund statt aus
Vermutung: **Kein eigenes Kontingent heißt nicht folgenlos.** Die 50-%-Schranke wirkt genau dann
wie ein Kontingent, wenn mehr als die Hälfte einer Woche in Spitzenstufe läuft — und sie meldet
sich mitten in der Woche, nicht vorher. „Bewusst und selten“ gilt also weiter.

> **Erst fragen, was das Werkzeug schon weiß. Dann messen.** Diese Antwort stand die ganze Zeit
> in der Dokumentation; der Test hätte Kontingent gekostet und wäre an der 1-%-Auflösung
> (Abschnitt 4) womöglich ergebnislos geblieben.

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
   oder geplante Aufgabe. Beispiel seit 23.08.: Das Sichern des Arbeitsordners läuft von selbst
   (`werkzeuge/auto-sicherung.md`) — solche Handgriffe gehören auf den Rechner, nicht in die
   Erinnerung.
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
   Teilergebnis sichert, darf beliebig lang laufen — ein Abbruch kostet dann nur das
   angefangene Stück. Ein Lauf ohne Zwischensicherung braucht ein hartes Limit. Der
   Schichtdienst ist seit 23.08. der erste Fall (kein Auftragslimit mehr, Sicherung nach jedem
   Auftrag). *(Präzisiert Regel 4; Wortlaut vom Leitstand, 23.08.)*

## 4. Kontingent-Bewirtschaftung

**Was Claude sehen kann und was nicht:** Den Live-Stand des Konto-Kontingents (Max-Fenster)
kann Claude aus einer Session heraus **nicht** auslesen — die Prozentanzeige lebt in der
Oberfläche. Seit 23.08. gibt es als Behelf `werkzeuge/kontingent.md`: eine **Momentaufnahme**
mit Zeitstempel und Verfallsregeln, die von Meldern beschrieben und vor größeren Arbeiten
gelesen wird — kein Wert oder zu alt heißt „kein Wert vorhanden", nie raten. Zwei Fakten, die
sonst nirgends stehen: Die **lokalen Verbrauchswerkzeuge** (`/usage`, `ccusage`) sehen
ausschließlich Sitzungen, die auf dem Rechner selbst liefen — **Cloud-Läufe (Schichtdienst)
und claude.ai-Chats tauchen dort nie auf**; wer nur damit plant, unterschätzt den Verbrauch
systematisch. Und neben dem Füllstand wird künftig der **Verbrauch je Lauf** erfasst
(Selbstauskunft des Schichtdiensts, Idee I-32 — Weiterentwicklung beim Projekt
claude-optimierung). Unverändert gilt: **Schwellen von Hand melden** („Achtung 90 %" →
Sicherungsmodus) bleibt der verlässliche Weg; die Verteilung *innerhalb* einer Session erklärt
„explain usage".

**Nachtrag 01.09.2026 — die Anzeige ist gefunden, und ihre Grenzen sind vermessen.** Auf
`claude.ai/settings/usage` stehen **drei getrennte Zähler** (laufende Sitzung ≈ 5 h · Woche über
alle Modelle · Woche Spitzenstufe) als **Text** in der Seite, ohne Klickerei erreichbar. Das ist
gemessen, nicht vermutet — das Nachbarprojekt claude-optimierung hat am 01.09. nachgesehen.
Damit ist die Sichtbarkeit **für eine Sitzung gelöst, die die Browser-Werkzeuge hat und deren
Chrome auf demselben Rechner läuft** — für alle anderen (normaler Chat, Handy, Cloud-Lauf)
unverändert nicht. Drei Eigenschaften begrenzen jede Nutzung:

- **Nur Prozent, keine absoluten Zahlen.** Die Anzeige beantwortet „ist jetzt Platz für einen
  langen Lauf?", nicht „reicht es für diese Sitzung?" — sie taugt als **Auslöser, nicht als
  Takt**.
- **Auflösungsgrenze:** Was weniger als einen Prozentpunkt kostet, ist unsichtbar. Kleine Läufe
  lassen sich damit grundsätzlich nicht messen.
- **Aktualisieren-Knopf:** Der angezeigte Wert kann beim Laden schon alt sein. Wer ihn abliest,
  übernimmt das „zuletzt aktualisiert" **von der Seite** — nie die eigene Uhr. *Ein frischer
  Zeitstempel auf einer alten Zahl ist schlimmer als gar keine Zahl:* Beim Fehlen wird normal
  weitergearbeitet, beim falschen Zeitstempel wird gerechnet.

**Die Rechenfalle, die dabei auffiel** (Live-Chat mit `opt/besprechungsraum`, 01.09.): Der
naheliegende Gedanke „selten ablesen, laufend mitzählen" geht so **nicht** auf — der abgelesene
Anker ist ein **Prozentsatz**, ein mitgezählter Verbrauch wären **Tokens**, und das eine lässt
sich vom anderen nicht abziehen. Wer es dennoch tut, bekommt eine plausibel aussehende Zahl, die
nichts bedeutet. Zwei Auswege, beide ungetestet: den Wechselkurs einmal **messen** (zwei
Ablesungen um eine bekannte Arbeitsmenge herum — geht wegen der Auflösungsgrenze nur an großen
Läufen), oder — besser — **nicht Tokens zählen, sondern Arbeitseinheiten**: Ein Lauf weiß immer,
wie viele Aufträge er abgeschlossen hat; „ein mittlerer Auftrag kostet rund X %" ist einmal zu
messen und danach einheitengleich mit dem Anker. Der Preis ist Ehrlichkeit über die Streuung —
ein Rechercheauftrag und ein kleiner Doku-Auftrag sind nicht derselbe „Auftrag". Was daraus
wird, entscheidet der Leitstand (I-24/I-32).

**Die Fenster ausnutzen statt an ihnen zu scheitern:** Das Kontingent regeneriert in
Zeitfenstern. Konsequenzen:

1. **Schwere Arbeit in die stillen Stunden.** Token-intensive, rückfragefreie Aufträge
   (Recherche, Rechnung, Dokumentation) laufen als geplante Aufgabe **„Schichtdienst
   Mikrogrün"** über die Warteschlange `werkzeuge/schicht-auftraege.md`. Standardzeit ~03:00,
   aber **frei einstellbar** (Aufgaben-Verwaltung oder Zuruf an Claude) und jederzeit **auf
   Abruf** startbar. **Mengensteuerung seit 23.08. geändert:** kein Auftragslimit je Lauf
   mehr — die Schicht arbeitet die Warteschlange leer, unter der Bedingung der Sicherung nach
   jedem Auftrag (Sparregel 9); dazu eine schlafende Kontingent-Bremse und eine
   Verbrauchs-Selbstauskunft je Lauf (beides: `werkzeuge/kontingent.md`, Abschnitt „Wer
   schreibt, wer liest", und der gespeicherte Aufgaben-Prompt). Ausbaustufen im Ideenregister:
   I-25 (Git-Brücke, damit Cloud-Läufe den Spiegel erreichen — bleibt hier) und I-26
   (kontingentgesteuerte Betriebsmodi — Weiterentwicklung bei claude-optimierung).
2. **Interaktive Fenster für Interaktives.** Tagsüber die Stufen-Spannen aus Abschnitt 2
   fahren; Spitzenmodelle bewusst und selten (Zeile „Grundsatzentscheidungen").
3. **Vor großen Sitzungen: Fenster prüfen.** Eine Fable-max-Sitzung nicht am Ende eines fast
   verbrauchten Fensters beginnen. Falls frisch (Zeitstempel!): `werkzeuge/kontingent.md`.
4. **Abbruch ist kein Verlust, wenn übergeben wurde.** Das Übergabe-Ritual (`chat-uebergabe`)
   macht jede Unterbrechung folgenlos — deshalb gilt: lieber bei 90 % sauber übergeben als bei
   100 % abreißen.

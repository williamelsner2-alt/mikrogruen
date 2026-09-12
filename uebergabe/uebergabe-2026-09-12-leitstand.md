# Übergabe — Leitstand: Kontingent-Sichtbarkeit, Schichtdienst-Mengensteuerung, Briefkasten

*12.09.2026 · Chat: `[LEIT] Leitstand` (Cowork, Ordner `mikrogruen` verbunden) · Projekt „Technologie und Agrar Unternehmen"*

## Kurzfassung für den Einstieg

Der Leitstand läuft seit 22.08. als einziger Eingang für Neues. Zwei Arbeitspakete sind in dieser
Sitzung abgeschlossen worden: die **Mengensteuerung des Schichtdienstes** (Auftragslimit
gestrichen, dafür Sicherung nach jedem Auftrag und eine Kontingent-Bremse im gespeicherten
Prompt) und die **Grundlage für I-24**, die Kontingent-Sichtbarkeit — Vertragsdatei
`werkzeuge/kontingent.md` mit Verfallsregeln, ein belegter Ableseweg über den Browser, und eine
geklärte Zuständigkeit (Weiterentwicklung im Nachbarprojekt claude-optimierung, der konkrete
Melder bleibt hier). **Nicht gebaut** ist der Melder selbst: Die Rolle `melder` in
`werkzeuge/kontingent.md` ist unbesetzt, der Bauauftrag liegt als Kickoff-Text unten in diesem
Dokument. Die Schichtdienst-Warteschlange ist seit dem 24.08. **leer**; vier Nachschub-Kandidaten
stehen in `werkzeuge/schicht-auftraege.md`, zwei davon sind ausdrücklich nicht schichttauglich.
Dringend und unabhängig davon: **der Spiegelordner hängt drei Wochen zurück** (siehe offene
Punkte) — das Git-Backup ist für die Sammeldateien unvollständig.

## Entscheidungen dieses Chats

- **Mengensteuerung des Schichtdienstes aufgehoben** — kein Auftragslimit, „Warteschlange leer
  arbeiten", Bedingung ist die Sicherung nach jedem einzelnen Auftrag — im gespeicherten
  Aufgaben-Prompt (Punkt 7), beschrieben im Kopf von `werkzeuge/schicht-auftraege.md`,
  Protokollzeile in `projekt/01-status.md` (23.08.)
- **Kontingent-Bremse im Voraus verankert** — Punkt 8 des Prompts liest
  `werkzeuge/kontingent.md` und greift von selbst, sobald dort frische Werte stehen; ohne Datei
  oder mit altem Zeitstempel wird sie vollständig ignoriert
- **I-24 auf Reife *entschieden* hochgestuft**, nachdem Williams eigene Ansätze abgeholt waren —
  Anforderung: automatisch oder gar nicht; die von Hand gepflegte Notizdatei ist damit verworfen
  (`projekt/04-ideen.md`, I-24, Nachtrag 23.08.)
- **`werkzeuge/kontingent.md` angelegt** als Momentaufnahme mit Zeitstempel und getrennten
  Verfallsregeln: 5-Stunden-Wert 15 Minuten, 7-Tage-Wert 60 Minuten. Grundsatz: lieber nichts
  wissen als falsch wissen
- **I-32 (Verbrauchs-Selbstmessung) als eigene Idee registriert**, nachdem die ID-Kollision mit
  I-30 aufgelöst war — `projekt/04-ideen.md`, I-32; Hergang in F-04
- **Warteschlange bleibt für das Nachbarprojekt geschlossen** — bestätigt am 12.09.; Begründung
  in `werkzeuge/schicht-auftraege.md`, Abschnitt Pflege
- **Verbrauchszeile gehört in den Erledigt-Eintrag**, nicht nur ins Register — sonst findet sie
  niemand, der zwei Läufe vergleichen will (I-32, Nachtrag 12.09.; Prompt Punkt 9)

## Offene Punkte

- **Kontingent-Melder ist nicht gebaut** — Rolle `melder` in `werkzeuge/kontingent.md` unbesetzt;
  Kickoff-Text unten in diesem Dokument. Als Teil von **I-24** registriert, Stand dort im
  Nachtrag 12.09. Nichts hängt daran, aber die Bremse aus Prompt-Punkt 8 schläft solange
- **Spiegelordner drei Wochen zurück** — `projekt/04-ideen.md` im Spiegel stammt vom 23.08. 17:00;
  die Auto-Sicherung schiebt nur Spiegel → Git, niemand schiebt Ablage → Spiegel. Als Nachtrag zu
  **I-25** registriert und der Werkstatt gemeldet (Shell und Auto-Sicherung sind ihre Lane).
  **Bewusst nicht als eigenes Problem registriert**, weil der Fix ein Befehl ist; wird es, wenn er
  bis zur nächsten Sitzung nicht passiert ist
- **Warteschlange leer** — vier Kandidaten in `werkzeuge/schicht-auftraege.md`; zwei brauchen
  Werkzeuge, die ein Cloud-Lauf nicht hat (Traglasttabelle → Browser, Luftspalt-Rechnung →
  Arbeitsmappe). Nachfüllen entscheidet William
- **Namens-Map an `opt/leitstand` offen** — sie brauchen den Namen, unter dem dieser Chat bei
  William in der Oberfläche steht; nur er weiß das. Antwort geht über
  `werkzeuge/postfach/an-poststelle.md`, sobald er es sagt
- **Browser-Ableseweg ungetestet in dieser Sitzung** — am 23.08. war die Erweiterung nicht
  verbunden, danach kam es nicht mehr dazu. Belegt ist er durch das Nachbarprojekt, nicht durch
  uns (I-24, Nachtrag 12.09.)

## Werkzeug-Hinweise

- **Der gespeicherte Aufgaben-Prompt ist die Wahrheit, nicht der Startzuruf.** Eine beim
  Sofortstart mitgegebene Zusatzanweisung kann Regeln im Prompt nicht aufheben (F-05). Wer das
  Verhalten eines Laufs ändern will, ändert den gespeicherten Text.
- **Ein laufender Cloud-Lauf ist von außen nicht abbrechbar** — nur in der Aufgaben-Verwaltung
  der Oberfläche. Und jede selbst gesetzte Wiedervorlage läuft weiter, auch wenn die Absicht sich
  geändert hat: bei jeder Richtungsänderung zuerst die eigenen Wiedervorlagen durchsehen (F-06).
- **Sammeldateien unmittelbar vor dem Schreiben neu lesen**, IDs nur aus der frisch gelesenen
  Fassung (F-04). Am 23.08. hat ein Schichtlauf so einen kompletten Registernachtrag gelöscht.
- **Beim Senden über die Poststelle** muss die Kopfzeile `HH:MM` tragen, sonst erkennt der
  Postbote den Block nicht und meldet trotzdem Erfolg (F-07). Muster:
  `^## \[\d{4}-\d{2}-\d{2} \d{2}:\d{2}\] von \S+ an \S+ — `
- **Lanes:** Der Leitstand führt beide Register, `werkzeuge/kontingent.md` und
  `werkzeuge/schicht-auftraege.md`. `projekt/01-status.md`, `werkzeuge/arbeitsteilung.md` und die
  Fehlversuch-Sammlung führt die **Werkstatt** — Änderungswünsche dorthin per Postfach, nicht
  selbst schreiben.
- **Schichtdienst-Slot:** 01:0x UTC (03:0x deutscher Zeit), Dauer seit der Aufhebung des Limits
  nicht mehr vorhersagbar. Beide Projekte hängen an einem Kontingent — ein zweiter Lauf im
  Nachbarprojekt braucht deutlichen Abstand.

## Der Bauauftrag für den Kontingent-Melder (lebte bis heute nur im Chatverlauf)

Einzufügen in einen neuen Chat. Seit dem Shell-Ausbau vom 23.08. ginge es auch direkt aus einer
Cowork-Session; der Text ist auf Claude Desktop formuliert und dort unverändert brauchbar.

```
[DOKU] Kontingent-Melder

Werkzeug: Claude Desktop mit Desktop Commander, beaufsichtigt.
Stufe: min Sonnet hoch – max Opus mittel. Begründung: kleines Skript, aber es läuft danach
unbeaufsichtigt und fasst Zugangsdaten an — ein Melder, der still Falsches schreibt, ist
schlechter als keiner.

Kontext: Im Projekt „Technologie und Agrar Unternehmen" (Mikrogrün-Rack) soll Claude den
Kontingentstand des Kontos selbst sehen können, statt auf Zuruf zu warten (Idee I-24,
entschieden 23.08.). Der vereinbarte Ablageort und die Regeln stehen in
werkzeuge/kontingent.md — lies die Datei zuerst, sie ist der Vertrag. Der Arbeitsordner ist
Desktop\Claude\mikrogruen\ und seit 22.08. ein Git-Repository.

Auftrag: Bau eine geplante Windows-Aufgabe, die alle 15 Minuten den Kontingentstand in
Desktop\Claude\mikrogruen\werkzeuge\kontingent.md schreibt, genau in dem Block-Format, das
dort schon vorgegeben ist.

Erster Schritt: Finde heraus, wo Claude Code auf diesem Rechner das OAuth-Token ablegt —
unter Linux ist es ~/.claude/.credentials.json, Feld claudeAiOauth.accessToken, unter Windows
kann es anders liegen. Berichte, was du findest, bevor du weiterbaust.

Danach: GET https://api.anthropic.com/api/oauth/usage mit "Authorization: Bearer <token>" und
"anthropic-beta: oauth-2025-04-20". Antwort liefert 5-Stunden- und 7-Tage-Auslastung samt
Reset-Zeitpunkten.

Harte Vorgaben:
- Der Endpunkt ist NICHT dokumentiert, sondern von der Gemeinschaft gefunden. Antwortet er mit
  401, 404 oder sonst etwas Unerwartetem: aufhören und berichten. Nicht nach anderen Endpunkten
  suchen, nichts aus der Weboberfläche auslesen.
- Bei jedem Fehler die alte Datei UNVERÄNDERT lassen und nur in ein lokales Logfile schreiben.
  Ein veralteter Wert, der wie ein frischer aussieht, ist der einzige echte Schaden hier.
- Das Token darf nirgends landen: nicht in kontingent.md, nicht im Log, nicht in der
  Aufgabendefinition.
- Kein Git-Commit aus dem Melder heraus — 96 Commits am Tag machen die Historie unlesbar. Der
  Transportweg zur Cloud wird mit I-25 entschieden.

Optional, wenn es schnell geht: Claude Code ist installiert. Seine Statusline bekommt die
gleichen Werte ab Version 2.1.x kostenlos über stdin (Felder rate_limits.five_hour und
.seven_day) — ein Statusline-Skript, das dieselbe Datei schreibt, ist die offizielle und
zugangsdatenfreie Zweitquelle. Läuft nur, wenn Claude Code läuft, kostet aber fast nichts.

Zum Schluss: einmal laufen lassen, die echten Werte zeigen, und mir berichten was funktioniert
hat und was nicht — inklusive dem Feld quelle: (melder). Die Ablage schreibt diese Sitzung
nicht selbst; die Ergebnisse bringe ich in den Leitstand zurück.
```

**Nachtrag zum Auftrag, Stand 12.09.:** Der Browser-Weg ist inzwischen belegt (I-24, Nachtrag
12.09.) — auf `claude.ai/settings/usage` stehen drei Zähler als Text. Wer den Melder baut, sollte
wissen: Das ist die **belegte** Quelle, der Endpunkt oben die unbelegte. Scheitert der Endpunkt,
ist der Browser-Weg kein Notbehelf, sondern der bessere Startpunkt — allerdings nur für
Sitzungen mit offenem Chrome, also ohne Nutzen für Cloud-Läufe.

## Lesereihenfolge für den Nachfolge-Chat

1. `projekt/01-status.md` · 2. `projekt/02-rahmen-und-netzwerk.md` ·
3. `werkzeuge/instanzen-und-zugriffe.md` (wer erreicht was, Lanes, Briefkasten) ·
4. `werkzeuge/kontingent.md` und `projekt/04-ideen.md` I-24/I-25/I-32 — nur wenn das Thema
   Kontingent oder Schichtdienst ist. Mehr nur bei Bedarf.

# Arbeitsteilung — Fehlversuche

*Stand: 23.08.2026 · Sammlung konkreter Fälle, in denen Werkzeug- oder Ablagewahl nicht griff — Grundlage für den Leitstand (Audit-Vorschlag 25), seit 22.08. eingerichtet*
*Nachbardokumente: `werkzeuge/arbeitsteilung.md` (Regeln, die hier geprüft werden) · `werkzeuge/leitstand.md` · `werkzeuge/chat-konvention.md` · `berichte/workflow-audit-v2-2026-08-22.md` (Vorschlag 25)*

Jeder Eintrag ist ein Fall, in dem Werkzeug- oder Ablagewahl in der Praxis nicht griff — nicht um
Fehler festzuhalten, sondern um dem Leitstand konkrete Muster mitzugeben statt nur abstrakter
Regeln. Ein Eintrag bleibt auch nach der Korrektur stehen; er ist Lehrmaterial, kein offener
Punkt (dafür sind `projekt/03-probleme.md` und `projekt/04-ideen.md` zuständig).

---

## Übersicht

| Nr. | Datum | Symptom | Kern-Ursache |
|---|---|---|---|
| F-01 | 22.08.2026 | Normaler Chat konnte Audit-Vorschläge nicht weiterbearbeiten | Ergebnisdokument war nur lokal abgelegt, nicht in der Ablage |
| F-02 | 22.08.2026 | „Sonderlauf: ganze Warteschlange" beim Schichtdienst-Sofortstart lief nicht | Startzuruf kann den gespeicherten Aufgaben-Prompt nicht überstimmen |
| F-03 | 23.08.2026 | Laufender Schichtdienst ließ sich auf Zuruf nicht stoppen; eine eigene Wiedervorlage hätte ihn sogar erneut gestartet | Automatik überlebt die Absicht, die sie erzeugt hat — und ein laufender Cloud-Lauf hat von außen keinen Griff |

---

## F-01 · Audit-Bericht nicht in der Ablage auffindbar

**Datum:** 22.08.2026

**Symptom:** William bat einen normalen Chat im Projekt, an den Audit-Vorschlägen weiterzuarbeiten.
Der Chat meldete zurück: `berichte/workflow-audit-v2-2026-08-22.md` sei nicht in der
Projektablage, nur aus Querverweisen anderer Dokumente bekannt; außerdem verweise das
Änderungsprotokoll vom 22.08. auf `werkzeuge/nachtschicht-auftraege.md` — eine Datei, die es
unter diesem Namen nicht mehr gibt.

**Ursache, zweiteilig:**

1. Der Audit-Bericht wurde bei seiner Entstehung nur als Cowork-Ergebnis geliefert und in den
   Spiegel committet — nie per Schreibzugriff in die Projektablage selbst geschrieben. Das
   Änderungsprotokoll vermerkte das sogar korrekt („nur lokal"), aber ein Vermerk macht ein
   Dokument nicht lesbar.
2. Die Umbenennung der Schichtdienst-Datei (`nachtschicht-auftraege.md` → `schicht-auftraege.md`,
   noch am selben Tag) wurde in den direkt betroffenen Dokumenten nachgezogen, aber nicht gegen
   die bereits geschriebene Änderungsprotokoll-Zeile desselben Tages geprüft.

**Korrektur (22.08., nachgezogen):** Audit-Bericht in die Projektablage geschrieben; Pfadangabe im
Änderungsprotokoll korrigiert — siehe `projekt/01-status.md`, Abschnitt 7.

**Was das für den Leitstand bedeutet:**

1. **Nachschlagewert entscheidet, nicht das Werkzeug, in dem etwas entsteht.** Jedes Ergebnis, auf
   das später aus irgendeinem Chat heraus Bezug genommen werden soll, gehört in die Projektablage
   — unabhängig davon, ob es in Cowork oder anderswo entstanden ist. „Nur lokal" ist nur für
   Zwischenstände vertretbar, nie für ein Dokument, das andere Dokumente bereits zitieren.
2. **Umbenennen/Verschieben braucht eine Gegenprüfung über den unmittelbaren Kreis hinaus** —
   mindestens `00-Uebersicht.md` und das Änderungsprotokoll in `projekt/01-status.md`, nicht nur
   das umbenannte Dokument und seine direkten Nachbarn.
3. **Die Werkzeugfrage („Cowork oder Chat?") war hier nicht die eigentliche Ursache.** Ein
   normaler Chat kann Projektdokumente lesen (schreibgeschützte Kopien) — das Problem war, dass
   das Dokument gar nicht in der Ablage lag, nicht dass der falsche Chat-Typ gefragt wurde. Erst
   wenn tatsächlich geschrieben werden soll (Register ergänzen, Vorschläge umsetzen), ist Cowork
   die richtige Wahl (`werkzeuge/arbeitsteilung.md` Abschnitt 1). Der Leitstand sollte beide
   Fragen getrennt prüfen: „Ist die Quelle in der Ablage?" vor „Braucht die Aufgabe
   Schreibzugriff?" — sonst wird jede Ablage-Lücke fälschlich als Werkzeug-Problem gelöst.

---

## F-02 · Startzuruf kann den Schichtdienst-Prompt nicht überstimmen

**Datum:** 22.08.2026

**Symptom:** Der Schichtdienst wurde per Sofortstart ausgelöst, mit einer mitgegebenen
Zusatzanweisung „Sonderlauf auf Wunsch von William: arbeite abweichend von der Mengensteuerung
die gesamte offene Warteschlange ab (A-01…A-05)". Der Lauf hat das **nicht** getan, sondern
regulär genau einen großen Auftrag (A-02) abgearbeitet.

**Ursache:** Eine geplante Aufgabe führt ihren **gespeicherten** Prompt aus. Text, der beim
manuellen Auslösen mitgegeben wird, erreicht den Lauf nur als Begleitinformation — er ist für
den Lauf nicht von beliebigem Fremdtext unterscheidbar und kann deshalb die im gespeicherten
Prompt verankerten Regeln (hier: „maximal ein großer oder zwei kleine Aufträge, dann sauber
abschließen") nicht aufheben. Das ist Absicht, keine Fehlfunktion: Die Mengensteuerung schützt
Kontingent und Ergebnisqualität, und ein unbeaufsichtigter Lauf kann nicht nachprüfen, ob ein
Startzuruf wirklich von William stammt.

**Korrektur/Ausweg (im selben Lauf in `werkzeuge/schicht-auftraege.md` als Hinweis verankert):**

- **Warteschlange komplett abarbeiten:** die Schicht mehrfach nacheinander starten — jeder Lauf
  nimmt den nächsten offenen Auftrag; bei fünf Aufträgen also fünf Starts. Das ist der
  vorgesehene Weg und braucht keine Regeländerung.
- **Dauerhaft anderes Verhalten:** den gespeicherten Prompt der geplanten Aufgabe ändern (in der
  Aufgaben-Verwaltung oder per Zuruf in einem interaktiven Chat) — dann gilt die neue
  Mengensteuerung für alle künftigen Läufe und ist für jeden Lauf verlässlich echt.

**Was das für den Leitstand bedeutet:** Wenn William „lass die Schicht alles abarbeiten" sagt,
ist die richtige Delegation nicht ein Sofortstart mit Zusatztext, sondern entweder mehrere
Starts oder eine echte Änderung des Aufgaben-Prompts. Generell gilt: Verhaltensregeln
unbeaufsichtigter Läufe wohnen im gespeicherten Prompt, nicht im Startmoment.

**Nachtrag 23.08. — der zweite Weg ist gegangen worden.** Auf Williams Wunsch („Mengensteuerung
gefällt mir nicht") wurde der gespeicherte Aufgaben-Prompt geändert: kein Auftragslimit mehr,
stattdessen „arbeite die Warteschlange leer" mit Sicherung nach **jedem** Auftrag als Bedingung,
plus eine schlafende Kontingent-Bremse, die greift, sobald `werkzeuge/kontingent.md` frische
Werte führt. Damit ist F-02 nicht nur dokumentiert, sondern an der Wurzel erledigt — der Grund,
mehrfach zu starten, entfällt.

---

## F-03 · Automatik überlebt die Absicht — und ein laufender Cloud-Lauf hat keinen Griff

**Datum:** 23.08.2026

**Symptom:** Zwei Dinge an einem Vormittag:

1. William bat, den laufenden Schichtdienst „beim nächsten Checkpoint" zu stoppen, weil er
   Kontingent verbraucht. Der Leitstand konnte das **nicht** — es gibt keinen Weg, einen bereits
   laufenden Cloud-Lauf von einer anderen Session aus anzuhalten.
2. Schlimmer: Der Leitstand hatte sich zwei Stunden zuvor selbst eine Wiedervorlage gesetzt, die
   genau das Gegenteil getan hätte — sie war beauftragt, bei „A-04 fertig, A-05 offen" **einen
   weiteren Lauf zu starten**. Sie wurde 30 Minuten vor ihrem Feuern gelöscht.

**Ursache:** Beides ist dieselbe Sache aus zwei Richtungen. Eine Automatik trägt die Absicht des
Moments, in dem sie gesetzt wurde, und führt sie später aus, ohne zu wissen, dass die Absicht
sich geändert hat. Ein Sofortstart ist danach nicht mehr einholbar (die Aufgaben-Verwaltung in
der Oberfläche ist der einzige Ort, an dem ein laufender Lauf abgebrochen werden kann), und eine
gesetzte Wiedervorlage feuert, bis jemand sie wegnimmt.

**Was das entschärft hat, ohne dass es geplant war:** Der laufende Lauf war durch seinen eigenen
alten Prompt begrenzt (F-02) und hörte nach einem Auftrag von selbst auf. Die Sicherung nach
jedem Auftrag sorgte dafür, dass sein Ergebnis (A-04, Befund 4ai) vollständig in der Ablage
stand, obwohl er ungeplant endete.

**Was das für den Leitstand bedeutet:**

1. **Wer eine Automatik setzt, plant ihr Abräumen mit.** Jede Wiedervorlage und jede geplante
   Aufgabe braucht von Anfang an eine Antwort auf „wer löscht sie, wenn sich die Lage ändert?".
   Beim Leitstand heißt das konkret: Bei jeder Änderung der Marschrichtung zuerst die eigenen
   offenen Wiedervorlagen durchsehen, bevor irgendetwas anderes passiert.
2. **Sofortstarts sind unwiderruflich.** Ein Start, den man vielleicht zurücknehmen will, sollte
   gar nicht erst als Sofortstart laufen, sondern als geplanter Lauf mit Vorlauf — der lässt sich
   noch abbestellen.
3. **Ehrlich bleiben über die Grenze.** „Ich stoppe das" ist eine Zusage, die der Leitstand nicht
   halten kann. Richtig ist: sagen, dass es von hier nicht geht, sagen, wo es geht
   (Aufgaben-Verwaltung), und sofort alles abräumen, was nachlegen würde.

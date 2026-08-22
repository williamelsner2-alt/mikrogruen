# Arbeitsteilung — Fehlversuche

*Stand: 22.08.2026 · Sammlung konkreter Fälle, in denen Werkzeug- oder Ablagewahl nicht griff — Grundlage für den Leitstand (Audit-Vorschlag 25), sobald eingerichtet*
*Nachbardokumente: `werkzeuge/arbeitsteilung.md` (Regeln, die hier geprüft werden) · `werkzeuge/chat-konvention.md` · `berichte/workflow-audit-v2-2026-08-22.md` (Vorschlag 25)*

Jeder Eintrag ist ein Fall, in dem Werkzeug- oder Ablagewahl in der Praxis nicht griff — nicht um
Fehler festzuhalten, sondern um dem Leitstand, sobald er steht, konkrete Muster mitzugeben statt
nur abstrakter Regeln. Ein Eintrag bleibt auch nach der Korrektur stehen; er ist Lehrmaterial,
kein offener Punkt (dafür sind `projekt/03-probleme.md` und `projekt/04-ideen.md` zuständig).

---

## Übersicht

| Nr. | Datum | Symptom | Kern-Ursache |
|---|---|---|---|
| F-01 | 22.08.2026 | Normaler Chat konnte Audit-Vorschläge nicht weiterbearbeiten | Ergebnisdokument war nur lokal abgelegt, nicht in der Ablage |

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

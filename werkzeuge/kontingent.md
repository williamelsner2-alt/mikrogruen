# Kontingentstand — Momentaufnahme

*Stand der Datei: 23.08.2026 · Vertrag angelegt, **noch keine Messwerte** · setzt Idee I-24 um*
*Nachbardokumente: `werkzeuge/arbeitsteilung.md` Abschnitt 4 (Kontingent-Bewirtschaftung) ·
`projekt/04-ideen.md` I-24 (warum), I-26 (wofür), I-30 (Verbrauch statt Füllstand) ·
`werkzeuge/schicht-auftraege.md` (der Schichtdienst liest diese Datei)*

**Diese Datei ist eine Momentaufnahme, kein Dokument.** Sie wird überschrieben, nicht gepflegt,
und sie hat keine Geschichte. Wer sie liest, liest zuerst den Zeitstempel.

---

## Stand

```
stand_utc:         —
stand_lokal:       —
quelle:            —
fenster_5h_pct:    —
fenster_5h_reset:  —
woche_7d_pct:      —
woche_7d_reset:    —
```

*Solange hier Striche stehen, gibt es keinen Messwert. Das ist der ehrliche Zustand, nicht ein
Fehler — jede Automatik, die diese Datei liest, muss damit umgehen können.*

---

## Verfallsregeln — der wichtigste Teil

Die beiden Zahlen altern **unterschiedlich schnell**, und wer sie gleich behandelt, rechnet
falsch:

| Wert | Brauchbar, solange der Zeitstempel jünger ist als | Warum |
|---|---|---|
| `fenster_5h_pct` | **15 Minuten** | Das 5-Stunden-Fenster rollt ständig weiter; ein halbstündig alter Wert kann um Größenordnungen danebenliegen |
| `woche_7d_pct` | **60 Minuten** (im Zweifel auch länger) | Der Wochenwert bewegt sich träge — ein paar Stunden Alter machen ihn nicht wertlos |

**Grundregel für jeden Leser:** Keine Datei, Striche statt Zahlen oder ein zu alter Zeitstempel
bedeuten **„kein Wert vorhanden"** — dann wird normal weitergearbeitet und der fehlende Wert
offen benannt. Ein alter Wert wird **nie** als aktueller ausgegeben. Lieber nichts wissen als
falsch wissen.

---

## Wer schreibt, wer liest

**Schreiben** darf jede Instanz, die einen frischen Wert wirklich gemessen hat:

| Quelle | Kennung in `quelle:` | Voraussetzung |
|---|---|---|
| Lokaler Melder (geplante Aufgabe am Rechner) | `melder` | noch zu bauen — Delegation ging am 23.08. an eine Claude-Desktop-Sitzung |
| Claude in Chrome liest `claude.ai/settings/usage` | `browser` | Chrome offen **und** Erweiterung verbunden (am 23.08. nicht der Fall) |
| William von Hand | `hand` | ausdrücklich der Notfallweg, nicht der Regelfall |

**Lesen** tun:

- **`werkzeuge/schicht-auftraege.md` / der Schichtdienst** — Punkt 8 seines Aufgaben-Prompts:
  frischer Wochenwert über 85 % → höchstens ein kleiner Auftrag, sonst normal leer arbeiten.
- **Jede interaktive Session**, die eine größere Arbeit plant (`werkzeuge/arbeitsteilung.md`,
  Abschnitt 4, Punkt 3: „Vor großen Sitzungen Fenster prüfen").

---

## Zwei Kopien, eine Aussage

Der lokale Melder schreibt in den **Spiegel** (`Desktop\Claude\mikrogruen\werkzeuge\kontingent.md`),
weil er die Projektablage nicht erreicht. Die Cloud-Läufe erreichen umgekehrt nur die
**Projektablage**. Beide Kopien tragen denselben Namen und denselben Zeitstempel-Block — die
Aussage wohnt also weiter an einem Ort, sie steht nur an zwei Stellen abrufbar.

Bis die Git-Brücke (I-25) beide Seiten verbindet, schiebt eine interaktive Cowork-Session den
Wert vom Spiegel in die Ablage. **Das ist der bewusst unschöne Teil der Lösung** und der Grund,
warum I-25 mehr ist als Bequemlichkeit: Ohne sie bekommt der Schichtdienst nie einen frischen
5-Stunden-Wert zu sehen, sondern bestenfalls einen brauchbaren Wochenwert.

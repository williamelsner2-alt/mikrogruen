# Eigentum an der Idee — Schutz und Verhandlung mit der Firma

*Stand: 19.08.2026*
*Betrifft: `technik/zeitplan-prototyp.md` (AP 1, Firmengespräch), `wirtschaft/fahrplan.md`
(Phase 6), `projekt/02-rahmen-und-netzwerk.md` (Personen)*

> **Kein Rechtsrat.** Dieses Dokument ordnet die Lage und benennt Optionen. Für die konkreten
> Vereinbarungen mit der Firma gehört eine anwaltliche Erstberatung dazu — Kostenrahmen am Ende.

---

## 1. Ausgangslage

Der Stiefvater möchte einen **fertigen Plan** sehen und stellt danach eventuell Konstrukteure und
Werkstattzugang zur Verfügung. Das Vorhaben soll aber in eigener Hand bleiben; aus früheren
Erfahrungen besteht die Sorge, um den Plan gebracht zu werden.

Diese Sorge ist nicht unbegründet und auch nicht paranoid — sie ist der normale Grund, warum es
Geheimhaltungsvereinbarungen gibt. Sie lässt sich aber präziser fassen, und präzise gefasst wird
sie handhabbar.

---

## 2. Das Risiko genauer benennen

Nicht alles am Vorhaben ist gleich gefährdet. Die nüchterne Bewertung:

| Bestandteil | Wie leicht kopierbar | Bewertung |
|---|---|---|
| Rack, Modulschalen, Zuschnitte, DXF | **trivial** — jede Schlosserei kann das nachbauen | kein Schutzgut |
| Elektronik (ESP32, Relais, Sensoren) | **trivial** — Standardteile, tausendfach dokumentiert | kein Schutzgut |
| Sortenliste, Kulturdauern | **trivial** — öffentliches Fachwissen | kein Schutzgut |
| Modulschnittstelle, Drei-Zonen-Prinzip, Materialentscheidungen | leicht, sobald man es einmal gesehen hat | schwaches Schutzgut |
| **Rezepturdatenbank** (Einstellung → Geschmack) | **schwer** — kostet Chargen und Kalenderzeit | **Kernwert** |
| **Gastro-Beziehungen** (Domenico, Chizzo) | **sehr schwer** — persönlich, nicht übertragbar | **Kernwert** |
| Die Kombination aus Küchen- und Mechatronikwissen | nicht kopierbar | **Kernwert** |

**Konsequenz:** Die Konstruktion zu zeigen kostet fast nichts. Die Rezepturdaten und die Kundennamen
zu zeigen kostet alles. Wer beides gleich behandelt, schützt das Falsche und blockiert sich
selbst beim Bauen.

**Und das realistischere Risiko ist ein anderes:** Ein Hallenbaubetrieb wird kein
Mikrogrün-Geschäft eröffnen. Was tatsächlich passieren kann, ist Verwässerung — dass aus
"ich lasse bei euch fertigen" schleichend "wir machen das zusammen" wird und daraus
"du arbeitest an unserem Projekt mit". Gegen Diebstahl hilft Geheimhaltung. Gegen Verwässerung
hilft ausschließlich eine **schriftliche Rollenklärung vor der ersten Leistung.**

---

## 3. Die Falle bei gestellten Konstrukteuren

Wenn angestellte Konstrukteure der Firma an der Konstruktion arbeiten, entstehen die Rechte an
ihren Arbeitsergebnissen zunächst im Verhältnis zu **ihrem Arbeitgeber**, nicht zu dir — bei
Erfindungen über das Arbeitnehmererfindungsgesetz (ArbnErfG), bei Zeichnungen und Modellen über
das Urheberrecht bzw. die Nutzungsrechte des Betriebs.

Ohne ausdrückliche Regelung kann also der Fall eintreten, dass die Firma Rechte an genau der
Konstruktion hält, die dein Produkt ist. Das passiert ohne bösen Willen, einfach durch die
gesetzliche Grundeinstellung.

**Deshalb gehört in jede Vereinbarung ein Satz sinngemäß:** *Sämtliche Arbeitsergebnisse, die im
Rahmen dieser Zusammenarbeit entstehen, werden ausschließlich und unwiderruflich auf
[William Elsner] übertragen bzw. ihm ein ausschließliches, übertragbares Nutzungsrecht daran
eingeräumt.* Die genaue Formulierung gehört in die Erstberatung.

---

## 4. Was jetzt kostenlos möglich ist

### 4.1 Geschäftsgeheimnis absichern

Seit dem Geschäftsgeheimnisgesetz (GeschGehG, 2019) ist eine Information nur dann geschütztes
Geschäftsgeheimnis, wenn **angemessene Geheimhaltungsmaßnahmen** getroffen wurden. Ohne solche
Maßnahmen besteht *gar kein* Schutz — auch nicht rückwirkend. Das ist die wichtigste kostenlose
Maßnahme überhaupt:

- Dokumente, die den Kernwert enthalten, sichtbar als vertraulich kennzeichnen
- Zugriff begrenzen und festhalten, wer was wann bekommen hat
- Vor Weitergabe an Dritte eine Geheimhaltungsvereinbarung unterschreiben lassen
- Nicht öffentlich posten, was später geschützt werden soll

### 4.2 Urheberschaft und Zeitpunkt belegbar machen

Urheberrecht an Texten, Zeichnungen, CAD-Modellen und Code entsteht automatisch und kostenlos —
es schützt aber nur die konkrete Ausformulierung, nicht die dahinterliegende Idee. Nützlich ist
es trotzdem, weil es die Priorität belegt.

Belegbar wird der Zeitpunkt durch nachvollziehbare, nicht nachträglich änderbare Spuren:
Versionsstände mit Datum, Versand an Dritte, Git-Historie. Die Dateien in diesem Projekt tragen
serverseitige Erstellungsdaten — schwacher, aber vorhandener Nachweis. Der oft empfohlene
"Brief an sich selbst" ist dagegen kein belastbares Beweismittel.

### 4.3 Gestufte Offenlegung

Nie mehr zeigen, als der jeweilige Schritt braucht:

| Gegenüber | Was er bekommt | Was er nicht bekommt |
|---|---|---|
| Firma / Konstrukteure | Geometrie, DXF, Zuschnittsliste, Materialbedarf | Rezepturdaten, Sensorlogik, Kundennamen, Kalkulation |
| Küchenchefs | Produkt, Sorten, Verkostung, Verfügbarkeit | Konstruktion, Bezugsquellen, Marge |
| Öffentlichkeit / Social Media | nichts Technisches, solange Schutzrechte offen sind | alles Übrige |

Das ist keine Heimlichtuerei, sondern normale Arbeitsteilung: Ein Fertiger braucht Maße, keine
Geschäftsstrategie.

---

## 5. Was Geld kostet — und ob es sich lohnt

| Instrument | Kosten (Größenordnung) | Was es kann | Einschätzung für dieses Vorhaben |
|---|---|---|---|
| **Patent** | vierstellig bis fünfstellig, mehrere Jahre | starker Schutz für technische Erfindungen | passt nicht ins Budget unter 1.000 € |
| **Gebrauchsmuster** (DPMA) | Anmeldegebühr niedrig zweistellig, ungeprüft, max. 10 Jahre | Schutz für **Vorrichtungen**, nicht für Verfahren; kennt eine sechsmonatige Neuheitsschonfrist für eigene Veröffentlichungen | denkbar für eine konkrete konstruktive Lösung, **nicht** für die Anbaurezeptur |
| **Marke** | niedrig dreistellig | Name und Auftritt | erst sinnvoll, wenn der Name feststeht |
| **Geheimhaltungsvereinbarung** | 0 € (Muster) bis niedrig dreistellig (anwaltlich) | wirkt genau gegen das befürchtete Szenario | **bester Hebel im Verhältnis zum Preis** |

**Wichtig zur Reihenfolge:** Ein Patent setzt Neuheit voraus. Wer die Konstruktion vorher zeigt
oder veröffentlicht, zerstört diese Neuheit. Falls eine Schutzrechtsanmeldung überhaupt in Frage
kommt, muss sie **vor** dem Firmengespräch geklärt sein — nicht danach.

**Beratung:** Eine anwaltliche Erstberatung ist für Verbraucher gesetzlich gedeckelt (§ 34 RVG,
höchstens 190 € netto); ob das hier greift, hängt davon ab, ob du bereits unternehmerisch
handelst — nachfragen kostet nichts. Kostenlos oder sehr günstig sind außerdem die
Gründungsberatung der IHK und die Erfinderberatung an den Patentinformationszentren.

---

## 6. Das Firmengespräch konkret

**Vorher schriftlich klären, bevor Unterlagen rausgehen:**

1. **Rolle** — du bist Auftraggeber, die Firma ist Dienstleister. Nicht Partner, nicht
   Mitgründer, solange nichts anderes vereinbart ist
2. **Gegenleistung** — Maschinenstunden und Material gegen Geld oder gegen deine Arbeitszeit.
   Ausdrücklich **nicht** gegen Anteile am Vorhaben
3. **Arbeitsergebnisse** — Rechteübertragung an dich (Abschnitt 3)
4. **Vertraulichkeit** — beidseitig, mit Aufzählung, was konkret vertraulich ist
5. **Beendigung** — was passiert mit Zeichnungen und Daten, wenn die Zusammenarbeit endet

**Wie man das sagt, ohne Misstrauen zu signalisieren:** Nicht als Absicherung gegen die Person
formulieren, sondern als Selbstverständlichkeit gegenüber späteren Dritten:

> "Ich will das sauber aufsetzen, weil später vielleicht Kunden oder ein Förderprogramm
> dazukommen — und die fragen als Erstes, wem die Konstruktion gehört. Lass uns die zwei Seiten
> einmal unterschreiben, dann ist das für alle geklärt."

Das ist keine Ausrede, sondern zutreffend: Ohne geklärte Rechteinhaberschaft scheitern
Förderanträge, Investorengespräche und Firmenverkäufe regelmäßig. Ein Betriebsinhaber kennt das
und wird es normal finden.

**Und der stärkste Hebel liegt vor dem Gespräch:** Mit einer laufenden Anlage, geernteten
Chargen und Fotos verhandelt man anders als mit einer Idee. Deshalb steht in
`technik/zeitplan-prototyp.md` die erste Charge im Provisorium **vor** dem Firmentermin.

---

## 7. Offene Punkte

- [ ] Erstberatung terminieren (Anwalt IP-Recht **oder** kostenlose Erfinderberatung am
      Patentinformationszentrum) — vor dem Firmengespräch
- [ ] Entscheiden, ob eine Gebrauchsmusteranmeldung für eine konstruktive Lösung in Frage kommt;
      wenn ja, **vor** jeder Offenlegung
- [ ] Zweiseitige Geheimhaltungs- und Rollenvereinbarung entwerfen lassen
- [ ] Festlegen, welche Projektdateien als vertraulich gekennzeichnet werden (mindestens
      Rezepturdaten und Kundenkontakte)
- [ ] Prüfen, ob die Ausbildungsfirma Regelungen zu Nebentätigkeit oder Diensterfindungen hat,
      die dich als Auszubildenden betreffen

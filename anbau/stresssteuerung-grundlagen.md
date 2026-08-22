# Stresssteuerung — Grundlagen der gezielten Geschmacks- und Wirkstoffbildung

*Inhaltsstand: 21.08.2026 · Struktur: 21.08.2026*
*Nachbardokumente: Sortenkatalog und Staffelung in `anbau/sorten-und-staffelung.md` ·
sortenspezifische Rezepturen in `anbau/sorten/` · Stellgrößen der Anlage in
`technik/prototyp-bauplan.md` (Abschnitt 7) · Schutz der Rezepturen in
`wirtschaft/ip-und-verhandlung.md`*

Dieses Dokument beschreibt **die Methode**, nicht eine Pflanze. Es beantwortet: welcher Reiz
erzeugt welchen Stoff, wie stark darf er sein, wann muss er kommen, und wie weist man den
Effekt nach. Die Anwendung je Sorte steht in `anbau/sorten/`.

> **Warum das der eigentliche Kern des Vorhabens ist.** Ein Rack mit Sensorik kann jeder
> nachbauen. Eine dokumentierte Zuordnung *Reiz → Wirkung → Dosis → Zeitfenster* für eine
> bestimmte Sorte kann das nicht jeder — sie entsteht nur aus systematischen Versuchen und ist
> als Betriebsgeheimnis schutzfähig. Die Anlage ist das Werkzeug. Die Rezeptur ist das Produkt.

---

## 1. Das Grundprinzip

Pflanzen bilden zwei Sorten von Stoffen. **Primärmetabolite** (Zucker, Aminosäuren, Fette)
dienen dem Wachstum. **Sekundärmetabolite** dienen nicht dem Wachstum, sondern der Abwehr und
dem Schutz: gegen Fraßfeinde, Pilze, UV-Strahlung, Trockenheit. Genau diese Sekundärmetabolite
sind das, was der Mensch als Schärfe, Bitterkeit, Aroma und Farbe wahrnimmt.

Daraus folgt die zentrale Aussage:

> **Eine Pflanze, die es zu bequem hat, schmeckt nach nichts.**

Unter idealen Bedingungen investiert die Pflanze alles in Biomasse. Erst wenn sie eine
Bedrohung wahrnimmt, verschiebt sie Ressourcen in die Abwehr. Kontrollierter Stress ist also
kein Nebeneffekt, sondern **das Steuerungsinstrument** — und er kostet zwangsläufig Ertrag.
Das ist keine Fehlfunktion, das ist der Preis.

Der Winzervergleich ist zulässig, aber unvollständig: Winzer nutzen Stress über eine ganze
Saison. Bei Mikrogrüns steht dafür ein Fenster von wenigen Tagen zur Verfügung. Das macht die
Dosierung schwieriger und den Zeitpunkt wichtiger.

---

## 2. Die Stressarten und was sie auslösen

Sieben Reize sind über die Anlage steuerbar. Die Spalte *Belastbarkeit* sagt, wie gut die
Wirkung wissenschaftlich belegt ist — das ist wichtig, damit Versuche nicht auf Vermutungen
aufgebaut werden.

| Reiz | Stellgröße in der Anlage | Wirkt vor allem auf | Belastbarkeit |
|---|---|---|---|
| **Wasserdefizit** | Bewässerungsintervall, Zyklusdauer | Glucosinolate, Prolin, ätherische Öle | gut belegt |
| **Lichtqualität (UV-B, Blau)** | Spektrum, Zusatz-LED | Anthocyane, Flavonoide, Phenole | gut belegt |
| **Lichtmenge (DLI)** | Photoperiode × Intensität | Phenole, Zucker, Biomasse | gut belegt |
| **Kühle vor der Ernte** | Solltemperatur letzte Tage | Anthocyane, Zuckergehalt | gut belegt |
| **Nährstoffbilanz (N, S)** | Nährlösung | siehe 2.1 — richtungsabhängig! | gut belegt |
| **Salinität / erhöhter EC** | Nährlösungskonzentration | osmotisch, wirkt wie Trockenstress | gut belegt |
| **Mechanischer Reiz** | Ventilator, Bürsten | kompakterer Wuchs, Jasmonat-Signalweg | belegt, Wirkung auf Geschmack unklar |

### 2.1 Der wichtigste Zusammenhang: Kohlenstoff-Stickstoff-Balance

Das ist die Regel, die am häufigsten übersehen wird und die erklärt, warum pauschales
„weniger düngen" falsch ist.

Sekundärmetabolite zerfallen in zwei Lager:

- **Kohlenstoffbasierte Stoffe** — Phenole, Flavonoide, Anthocyane, Terpene (ätherische Öle).
  Enthalten keinen Stickstoff. Werden **mehr**, wenn Stickstoff knapp ist, weil dann Kohlenstoff
  aus der Photosynthese übrig bleibt und in Abwehrstoffe fließt.
- **Stickstoffhaltige Stoffe** — Glucosinolate (Senföle), Alkaloide. Werden **weniger**, wenn
  Stickstoff knapp ist, weil der Baustoff fehlt.

**Praktische Konsequenz:**

| Ziel | Stickstoff | Schwefel |
|---|---|---|
| Mehr Farbe (Anthocyan), mehr Aroma (ätherische Öle) | knapp halten | egal |
| Mehr Schärfe (Glucosinolate) | **nicht** knapp halten | **reichlich** — Glucosinolate enthalten Schwefel |

Wer bei Rucola den Stickstoff drosselt, um „mehr Stress" zu erzeugen, senkt die Schärfe.
Bei Rotkohl oder Amaranth erhöht dieselbe Maßnahme die Farbe. Dieselbe Handlung, gegenteiliges
Ergebnis — deshalb steht die Zuordnung je Sorte in einer eigenen Datei.

### 2.2 Salinität als das bessere Werkzeug gegenüber Trockenheit

Wasserstress und Salzstress wirken über denselben Mechanismus (osmotischer Druck), sind aber
unterschiedlich gut beherrschbar:

- **Wasserstress** hängt vom Substratverhalten ab — Wasserhaltevermögen, Schichtdicke,
  Vorgeschichte. Zwei Trays mit gleicher Bewässerung können unterschiedlich trocken sein.
  Schlecht reproduzierbar.
- **Salzstress** wird über den EC-Wert der Nährlösung eingestellt und ist ein **messbarer,
  einstellbarer Zahlenwert**. Ein EC-Meter kostet unter 30 €.

Für eine dokumentierte, wiederholbare Rezeptur ist die messbare Größe fast immer die bessere.
Das ist ein starkes Argument dafür, die Versuchsreihen mittelfristig von Bewässerungsintervall
auf EC umzustellen — sobald die Anlage eine Nährlösung fährt und nicht reines Wasser.

**Vorsicht:** Erhöhter EC greift Pumpe, Ventile und Kontakte an. Der gleiche Einwand wie bei
Salicornia in `anbau/sorten-und-staffelung.md`, Abschnitt 3 — nur in kleinerem Maßstab.

---

## 3. Das Dosisgesetz (Hormesis)

Die Wirkung von Stress ist **nicht linear**. Sie folgt einer umgekehrten U-Kurve:

```
Wirkstoffgehalt
      │           ╭──╮
      │        ╭──╯  ╰──╮
      │     ╭──╯        ╰────╮
      │  ╭──╯                ╰─────
      └──┴──────┴──────┴──────┴────→  Stressintensität
        kein   mild  optimal  zuviel
```

- **Zu wenig Stress** → kein messbarer Effekt, die Charge schmeckt wie Supermarktware
- **Optimum** → Wirkstoffgehalt maximal, Textur noch zart, Ertrag akzeptabel
- **Zu viel Stress** → Wirkstoffgehalt fällt wieder, Blätter werden zäh und bitter, Ertrag
  bricht ein, im Extremfall Totalausfall

**Deshalb wird jeder Versuch mit mindestens drei Stufen gefahren** (Referenz, mild, deutlich).
Zwei Stufen können das Optimum nicht finden — sie zeigen nur eine Richtung. Die Stufe
„deutlich" ist bewusst dazu da, die Obergrenze zu finden und den Kipppunkt zu dokumentieren.
Eine Charge, die zu bitter geworden ist, ist kein Fehlschlag, sondern ein Messwert.

---

## 4. Das Zeitfenster — erst wachsen lassen, dann würzen

Der zweite Fehler nach der Überdosierung ist der falsche Zeitpunkt.

- **Stress früh in der Kultur** bremst den Aufbau von Biomasse. Der Verlust ist **nicht
  aufholbar** — was nicht gewachsen ist, wächst nicht nach.
- **Stress spät in der Kultur** wirkt auf bereits vorhandene Biomasse. Die Pflanze steuert um,
  ohne dass der Ertrag nennenswert leidet.

**Regel:** Stress gehört in die **letzten 2 bis 4 Tage** vor der Ernte. Davor läuft die Kultur
auf Optimalbedingungen.

Die einzige Ausnahme ist die Lichtqualität: UV-B und Blau brauchen für die Farbbildung mehrere
Tage Vorlauf, weil Anthocyane eingelagert und nicht spontan gebildet werden. Hier sind
**4 bis 7 Tage** realistischer.

Bei Kulturdauern von 7 bis 10 Tagen (Rucola, Radieschen) fällt das Stressfenster mit einem
erheblichen Teil der Gesamtkultur zusammen. Bei kurzen Kulturen ist die Dosis deshalb
grundsätzlich vorsichtiger anzusetzen als bei langen.

---

## 5. Der Ertrag-Intensität-Kompromiss

Stress kostet Ertrag. Die Frage ist nicht, ob — sondern ob es sich rechnet. Die richtige
Kennzahl ist **nicht** g/Tray, sondern **€/Tray**:

```
Erlös je Tray = Erntemenge [g] × Preis je Gramm [€/g]
```

Ein Stressprotokoll ist wirtschaftlich sinnvoll, wenn der erzielbare Mehrpreis den
Mengenverlust überkompensiert. Beispielrechnung für 25 % Ertragsverlust: der Preis muss um
mehr als 33 % steigen, damit sich das trägt.

**Beide Werte gehören ins Modell.** Die Erntemenge je Versuchsstufe wird ohnehin gewogen —
sie ist der Nachweis der Kosten. Der Mehrpreis ist zunächst eine Annahme und wird erst mit der
ersten Preiszusage eines Kunden zu einer Zahl (siehe `wirtschaft/fahrplan.md`, Übergang 2 → 3).

Bis dahin gilt: Stressprotokolle nur bei Sorten fahren, bei denen der Geschmacksunterschied
**blind erkennbar** ist. Ein Effekt, den der Küchenchef nicht schmeckt, ist keinen Ertragsverlust
wert, egal was das Laborergebnis sagt.

---

## 6. Zuordnungstabelle — welcher Hebel für welche Stoffgruppe

Erweiterte Fassung der Tabelle aus `anbau/sorten-und-staffelung.md`, Abschnitt 5.

| Stoffgruppe | Sinneseindruck | Sorten im Katalog | Hauptsächlicher Hebel | Falscher Hebel |
|---|---|---|---|---|
| **Glucosinolate** (Senföle) | Schärfe, senfartig | Rucola, Radieschen, Mizuna, Wasabi-Rauke, Brokkoli, Rotkohl | Wasser-/Salzstress letzte 3 Tage; Schwefel reichlich | N-Mangel (senkt sie!) |
| **Anthocyane** | Farbe (rot/violett) | Amaranth, Rote Bete, Rotkohl, Rot-Basilikum, Shiso, Sango-Radieschen | UV-B/Blau, hohe Lichtmenge, Kühle vor Ernte, N knapp | Wasserstress (kaum Wirkung) |
| **Ätherische Öle / Terpene** | Aroma, Duft | Bronzefenchel, Dill, Kerbel, Basilikum, Shiso | Erntezeitpunkt, moderater Wasserstress, Lichtmenge | zu hohe Temperatur (Öle verflüchtigen) |
| **Phenolsäuren / Flavonoide** | leichte Bitterkeit, „Tiefe" | breit, v. a. Basilikum, Shiso, Sonnenblume | UV-B, hohe Lichtmenge, N knapp | — |
| **Zucker** | Süße | Erbse, Sonnenblume, Rote Bete | Kühle vor Ernte, hohe Lichtmenge | Stress allgemein (senkt sie) |
| **Alkaloide** | bitter, teils toxisch | Borretsch (siehe 9.2) | — **nicht erwünscht** | jeder Stress erhöht sie potenziell |

Die letzte Zeile ist die wichtige: Stress erhöht Abwehrstoffe **unspezifisch**. Bei Sorten mit
unerwünschten Abwehrstoffen wirkt das Verfahren in die falsche Richtung.

---

## 7. Der Standardversuch

Für jede Sorte identisch, damit Ergebnisse vergleichbar bleiben.

| Stufe | Kultur Tag 1 bis Ernte − n | Stressfenster (letzte n Tage) | Zweck |
|---|---|---|---|
| **A** Referenz | Standard laut Modell | unverändert | Nullmessung |
| **B** mild | Standard | Stellgröße halbiert bzw. moderat angehoben | vermutetes Optimum |
| **C** deutlich | Standard | Stellgröße geviertelt bzw. stark angehoben | Obergrenze und Kipppunkt suchen |

**Unveränderlich zwischen den Stufen:** Sorte, Saatgutcharge, Saatdichte, Substrat,
Photoperiode, Erntetag. Wird mehr als eine Größe verändert, ist der Versuch wertlos — die
Wirkung lässt sich dann keinem Reiz zuordnen.

**Was mitläuft:** alle Sensordaten und Schaltzeitpunkte, plus Erntegewicht je Stufe.

**Was ausgewertet wird:** vergleichende Blindverkostung direkt nach dem Schnitt, bewertet in
**getrennten Merkmalen** — nicht „besser/schlechter". Mindestens: Intensität, Bitterkeit,
Textur. Sonst lässt sich später nicht rekonstruieren, warum eine Einstellung gewonnen hat.

**Mindestens zwei Wiederholungen**, bevor eine Rezeptur als gültig gilt. Ein einzelner Durchgang
kann von Saatgutcharge, Wetter oder Zufall dominiert sein. Eine Rezeptur, die sich nicht
wiederholen lässt, ist gegenüber einem Küchenchef nicht behauptbar.

---

## 8. Nachweis — was sich womit belegen lässt

Der Unterschied zwischen „schmeckt uns besser" und einer belegten Aussage entscheidet später
darüber, ob daraus ein Argument gegenüber Kunden, Juroren oder Partnern wird.

| Verfahren | Kosten | Was es zeigt | Wann einsetzen |
|---|---|---|---|
| **Blindverkostung, getrennte Merkmale** | 0 € | subjektiv, aber verkaufsrelevant | immer |
| **Erntegewicht je Stufe** | Waage vorhanden | Kosten des Stresses | immer |
| **Refraktometer (Brix)** | 15–25 € | Zuckergehalt, objektive Zahl | ab erster Reihe |
| **EC-/pH-Meter** | 20–40 € | Dosierung reproduzierbar machen | sobald Nährlösung gefahren wird |
| **Farbmessung per Foto** | 0 €, feste Bedingungen nötig | Anthocyanbildung als Zahl | bei Farbsorten |
| **Nitrat-Teststreifen** | ca. 20 € | Lebensmittelsicherheit, siehe 9.1 | vor der ersten Kundenlieferung |
| **HPLC-Analytik** | Hochschulkooperation | echter Wirkstoffgehalt | erst wenn eine Rezeptur steht |

Der **Brixwert** ist die günstigste objektive Zahl, die zur Verfügung steht. Er misst nicht die
Zielsubstanz, korreliert aber häufig mit dem Gesamteindruck und macht aus einer Verkostung eine
Messreihe. Für eine Präsentation ist „Stufe B lag konstant 1,8 Brix über der Referenz" um
Größenordnungen stärker als „schmeckte intensiver".

Die HPLC-Analytik ist der Punkt, an dem aus Betriebswissen eine wissenschaftlich behauptbare
Aussage wird — und damit die Voraussetzung für alles, was in `wirtschaft/finanzierung-und-wettbewerbe.md`
unter „Hochschulpfad" steht. Sie ist nicht der erste Schritt, sondern der letzte.

---

## 9. Grenzen und Risiken

### 9.1 Nitrat

Blattgemüse lagert Nitrat ein, wenn Stickstoff verfügbar ist, aber zu wenig Licht für dessen
Verstoffwechselung zur Verfügung steht. Das ist bei Indoor-Anbau mit knapper Beleuchtung ein
reales Thema und betrifft ausgerechnet Rucola besonders stark. Für Rucola als Frischware gelten
in der EU gesetzliche Nitrathöchstgehalte.

**Konsequenz für die Praxis:**

- Ausreichende Lichtmenge ist nicht nur eine Ertragsfrage, sondern eine Sicherheitsfrage
- Ernte am Ende der Lichtperiode, nicht am Anfang — der Nitratgehalt ist dann niedriger
- Vor der ersten Lieferung an ein Restaurant mit Teststreifen prüfen
- Ob und wie die gesetzlichen Höchstgehalte auf Mikrogrüns anzuwenden sind, ist zu klären —
  **offener Punkt**, gehört vor Phase 3 geklärt

### 9.2 Abwehrstoffe, die man nicht will

Das Verfahren erhöht Abwehrstoffe unspezifisch. Bei **Borretsch** ist das ein konkretes Problem:
die Pflanze enthält Pyrrolizidinalkaloide, für die es behördliche Bewertungen und
Aufnahmeempfehlungen gibt. Stress kann diesen Gehalt tendenziell erhöhen. Details und
Konsequenz in `anbau/sorten/borretsch.md`.

**Allgemeine Regel:** Vor jedem neuen Stressprotokoll prüfen, ob die Sorte bekannte unerwünschte
Inhaltsstoffe hat. Bei Zweifel kein Stressprotokoll fahren — der Geschmacksgewinn ist das
Risiko nicht wert, und ein Lebensmittelvorfall beendet das Vorhaben.

### 9.3 Elicitoren

In der Literatur werden chemische Auslöser eingesetzt (Methyljasmonat, Chitosan, Salicylsäure),
die die Abwehrreaktion direkt anschalten, ohne die Pflanze physisch zu stressen. Wirkung gut
belegt, Ertragsverlust geringer.

**Für dieses Vorhaben vorerst nicht.** Zulassungsrechtliche Einordnung im Lebensmittelanbau,
Rückstandsfrage und die Erzählung gegenüber Haute-Cuisine-Kunden („wir besprühen mit einem
Signalstoff") sprechen dagegen. Die physikalischen Reize sind rechtlich unbedenklich, kosten
nichts und passen zur Positionierung. Notiert als bekannte Option, nicht als Plan.

### 9.4 Was das Verfahren nicht kann

Stress verstärkt, was genetisch angelegt ist. Er erzeugt nichts Neues. Eine Sorte mit von
Natur aus schwachem Profil wird durch Stress nicht interessant, sondern nur zäh. **Die
Sortenwahl bleibt der größere Hebel** — siehe `anbau/sorten-und-staffelung.md`, Abschnitt 1.

---

## 10. Offene Punkte

- Nitrat-Rechtslage für Mikrogrüns klären, vor Phase 3
- EC-Steuerung: ab wann fährt die Anlage Nährlösung statt Wasser? Hängt an
  `technik/prototyp-bauplan.md`
- Ob die Anlage UV-B-fähig sein soll — betrifft Modulbestückung und Arbeitsschutz, gehört in
  `technik/konstruktionskriterien.md`
- Refraktometer und EC-Meter beschaffen (zusammen unter 60 €) — die günstigste Aufwertung der
  gesamten Versuchsarbeit
- Erste Sorte für einen vollständigen, zweifach wiederholten Standardversuch auswählen

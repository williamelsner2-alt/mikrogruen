# Schichtdienst — Auftragswarteschlange

*Stand: 12.09.2026 · gelesen von jedem Lauf der geplanten Aufgabe „Schichtdienst Mikrogrün"*
*Laufzeit: standardmäßig täglich ~03:00 deutscher Zeit (01:0x UTC) — **frei einstellbar**: in der
Aufgaben-Verwaltung (Seitenleiste „Geplant") oder per Zuruf an Claude („stell den Schichtdienst
auf 13 Uhr"). Zusätzlich jederzeit **auf Abruf** startbar („lass den Schichtdienst jetzt laufen"
bzw. „Jetzt ausführen" in der Verwaltung) — die Schicht ist nicht an die Nacht gebunden.*
*Nachbardokumente: Regeln in `00-Uebersicht.md` und `werkzeuge/arbeitsteilung.md` · Register in `projekt/03-probleme.md` und `projekt/04-ideen.md` · Kontingent in `werkzeuge/kontingent.md`*

Hier stehen Aufträge, die **ohne Rückfragen** und **ohne lokalen Ordner** ausführbar sind —
Recherche, Rechnung, Dokumentation. Die Schicht nimmt den obersten offenen Auftrag, arbeitet ihn
gründlich ab, schreibt die Ergebnisse nach den Pflegeregeln in die Ablage, setzt ihn hier auf
erledigt — und nimmt dann den nächsten.

**Pflege:** William (oder der Leitstand) sortiert, streicht und ergänzt frei. Ein Auftrag nennt
immer: Ziel, betroffene Register-IDs, wohin das Ergebnis gehört. Keine Aufträge mit Bestellungen,
Anmeldungen oder Außenkontakt.

**Diese Warteschlange ist nur für Mikrogrün** *(entschieden 12.09., Anfrage von
`opt/besprechungsraum` über die Werkstatt)*: Das Nachbarprojekt claude-optimierung hatte gefragt,
ob es den Schichtdienst mitbenutzen darf. **Nein** — und der Grund ist technisch, nicht
organisatorisch: Eine Cloud-Session hängt an **genau einem Projekt**. Unser Lauf kann seine
Ergebnisse nur in **unsere** Ablage schreiben; Fremdaufträge landeten in unserem Status und
unseren Registern, und zum Auftraggeber käme das Ergebnis erst über eine laufende
Mikrogrün-Session plus Postbote — also nicht nachts, was den ganzen Zweck aufhebt. Dazu zwei
praktische Gründe: Seit dem 23.08. arbeitet ein Lauf die Warteschlange **leer**, eine Fremdnacht
könnte also das Fenster vor unseren eigenen Aufträgen aufbrauchen; und das Kontingent teilen sich
beide Projekte ohnehin, ein zweiter Lauf braucht deshalb einen zeitlich **deutlich getrennten**
Slot, nicht bloß eine halbe Stunde Abstand — die Laufdauer ist seit der Aufhebung des Limits
nicht mehr vorhersagbar.

**Mengensteuerung (geändert 23.08. auf Williams ausdrücklichen Wunsch):** Es gibt **kein
Auftragslimit** mehr. Die Schicht arbeitet die Warteschlange leer — nach jedem abgeschlossenen
und vollständig gesicherten Auftrag folgt der nächste offene. Bedingung dafür ist die Sicherung
nach **jedem einzelnen** Auftrag: Bricht ein Lauf ab (Kontingent, Zeit, Fehler), ist nur der
gerade angefangene Auftrag verloren, und der nächste Lauf macht dort weiter.
*Korrigiert am 24.08.: Der Kopf dieser Datei nannte bis dahin weiter das aufgehobene Limit
„ein großer oder zwei kleine Aufträge je Lauf" — der Widerspruch war am 23.08. an den Leitstand
gemeldet, aber hier nie nachgezogen worden. Der frühere Hinweis vom 22.08., eine per Sofort-Start
mitgegebene Zusatzanweisung könne das Limit nicht aufheben, ist damit gegenstandslos: Das Limit
steht nicht mehr im gespeicherten Prompt. Der zugrunde liegende Fall bleibt gültig und lehrreich
— die Schicht folgt ihrem **gespeicherten** Auftrag, nicht dem Startzuruf
(`werkzeuge/arbeitsteilung-fehlversuche.md`).*

**Kontingent-Bremse:** Zu Beginn liest die Schicht `werkzeuge/kontingent.md`. Fehlt die Datei
oder ist ihr Zeitstempel älter als 60 Minuten, wird sie ignoriert und normal weitergearbeitet.
Meldet sie frisch eine 7-Tage-Auslastung über 85 %, wird höchstens ein kleiner Auftrag
bearbeitet. *Stand 12.09.: Die Datei führt noch keine Werte — die Rolle `melder` ist unbesetzt,
die Bremse schläft also.*

**Hinweis zur Ergebnissicherung (23.08.):** Der Lauf A-03 hat festgestellt, dass A-01 und A-02
ihre Registereinträge geschrieben hatten, den zugehörigen **Statusbefund aber nicht** — P-21,
P-12/13 und die Erledigt-Liste unten verwiesen auf „Befund 4af/4ag", die es im Status nicht gab.
Beide sind am 23.08. rekonstruiert und als solche gekennzeichnet worden. **Regel für jeden Lauf:
Registerpflege ersetzt den Statusbefund nicht** (Pflegeregel 1 in `00-Uebersicht.md`) — erst der
Befund im Status, dann die Registerzeile, die darauf verweist.

**Größenangabe und Verbrauch sind zwei verschiedene Dinge** *(aus Befund 4aj / I-32, ergänzt
12.09.)*: Die Spalte „Größe" schätzt den **Rechercheaufwand**. Der Tokenverbrauch hängt dagegen
an der **Zahl der berührten Sammeldateien**, weil jede davon ganz neu geschrieben werden muss —
A-05 war der kleinste Auftrag der Liste und trotzdem kein billiger Lauf. Wer Läufe plant, sollte
beides getrennt betrachten.

---

## Warteschlange

| Nr. | Auftrag | Bezug | Größe | Status |
|---|---|---|---|---|
| A-01 | Laufrollen-Kandidaten mit Herstellernachweis | P-21 | groß | **erledigt 22.08.** |
| A-02 | Pumpen-Kandidaten mit realer Kennlinie | P-12, P-13 | groß | **erledigt 22.08.** |
| A-03 | Bodengefälle 2° gegen 3° rechnerisch prüfen | P-06 | groß | **erledigt 23.08.** |
| A-04 | Saatgut-Bezugsquellen für die fünf Sorten | Status Schritt 5 | mittel | **erledigt 23.08.** |
| A-05 | Schaumglas: λ-Wert und Bezugsquelle | P-25 | klein | **erledigt 24.08.** |

**Die Warteschlange ist leer.** Der Lauf vom 24.08. hat den letzten offenen Auftrag abgearbeitet.
Bis hier neue Aufträge stehen, beendet sich jeder Lauf sofort mit einer Ein-Satz-Notiz — so ist es
im gespeicherten Prompt festgelegt (Punkt 2: keine Ersatzarbeit erfinden). **Nachschubvorschläge
aus den bisherigen Läufen** stehen unten unter „Kandidaten für neue Aufträge"; sie sind bewusst
*nicht* als offene Aufträge eingetragen — das Aufnehmen entscheidet William oder der Leitstand.

---

## Auftragsdetails

### A-01 · Laufrollen (P-21) — erledigt 22.08.
2–3 konkrete Rollen Ø 25 mm finden, die je ~90 N tragen und in Feuchtumgebung/Lebensmittelnähe
taugen (Kunststofflauffläche, korrosionsfeste Achse): Hersteller, Datenblattwerte (Traglast,
Material, Temperaturbereich), Bezugsquelle, Preis je Stück bei 24 Stück (Startaufbau: 6 je
Seite × 4 Etagen). Ergebnis: Vergleichstabelle als Status-Befund, P-21 nächster Schritt
aktualisiert.

### A-02 · Pumpen (P-12, P-13) — erledigt 22.08.
2–3 Kandidaten für die Nährlösungspumpe: Förderhöhe ≥ 3 m nachgewiesen, Kennlinie im Datenblatt
verfügbar, leise genug für Wohnraum, lebensmitteltaugliche Materialien im Medienkontakt; Preis.
Ergebnis: Tabelle mit Datenblattwerten als Status-Befund; P-12 nächster Schritt konkretisiert;
Kennlinienwerte ausdrücklich als „in Blatt 12 der Arbeitsmappe nachzuziehen" vermerken.

### A-03 · Bodengefälle rechnerisch (P-06) — erledigt 23.08.
Prüfen, ab welcher Neigung ein Wasserfilm auf gebürstetem V2A zuverlässig abreißt
(Oberflächenspannung, Kontaktwinkel/Hysterese, Literaturwerte für 1.4301 gebürstet; übliche
Empfehlungen für selbstentleerende Flächen). Ergebnis: nachvollziehbarer Rechen-/Literaturbefund
im Status mit klarer Empfehlung „2° halten oder auf 3° gehen" und Konsequenz (Wanne ist eigenes
Blechteil); P-06 entsprechend fortschreiben.

### A-04 · Saatgut-Bezugsquellen (Status, Schritt 5) — erledigt 23.08.
Bezugsquellen (DE/EU) für: wilder Rucola (*Diplotaxis tenuifolia*), Rot-Basilikum, Micro-Shiso,
Bronzefenchel, Borretsch — bevorzugt Bio bzw. ungebeiztes Anzucht-/Microgreen-Saatgut, mit
Gebindegrößen, Preisen, Keimfähigkeitsangaben; Gesamtkorb unter 100 € (Budgetrahmen Schritt 5).
Borretsch nur als Anbausorte ohne Stressprogramm führen (PA-Thema, siehe
`anbau/stresssteuerung-grundlagen.md`). Ergebnis: Einkaufsliste als Status-Befund.

### A-05 · Schaumglas (P-25) — erledigt 24.08.
λ-Wert-Spanne für Schaumglas aus Herstellerangaben (statt Annahme 0,04 W/(m·K)) und eine
Bezugsquelle für Kleinmengen (Platten, Stärke für Boden/Decke der Teildämmung 2b) mit Preis.
Ergebnis: kurzer Status-Befund; P-25 nächster Schritt aktualisiert; Wert als „in die
Arbeitsmappe nachzuziehen" markieren.

---

## Kandidaten für neue Aufträge

*Vorschläge aus den bisherigen Läufen — noch keine Aufträge. Wer einen aufnimmt, trägt ihn oben
in die Warteschlange ein und gibt ihm eine A-Nummer.*

- **Traglasttabelle KIPP / norelem beschaffen** (P-21, offen aus A-01) — war fernab nicht
  zugänglich, die Shopseiten sind dynamisch. Braucht eine Browser-Session oder den PDF-Katalog,
  also **keinen** reinen Cloud-Lauf. Eher ein Auftrag für Claude in Chrome.
- **Luftspalt gegen Schaumglas in Blatt `06-Klima` rechnen** (I-33, P-43, aus A-05) — reine
  Rechenarbeit, aber sie gehört **in die Arbeitsmappe**, und die erreicht ein Cloud-Lauf nicht.
  Auftrag für eine Cowork-Session am Rechner.
- **Substratquellen und Preise** (P-02) — dasselbe Muster wie A-04, gut schichttauglich, sollte
  aber erst laufen, wenn die Substratart entschieden ist; sonst wird dreimal recherchiert.
- **PA-Laboranalyse: Anbieter und Preisrahmen** (P-42) — reine Recherche, kein Außenkontakt
  (Angebote einholen wäre Außenkontakt und ist der Schicht verboten; die Preisspanne aus
  öffentlichen Preislisten zu ermitteln ist es nicht).

---

## Erledigt

*(füllt der Schichtdienst: `A-xx · erledigt TT.MM. — 3 Zeilen Ergebnis + Fundstelle im Status`)*

**Verbrauchszeile — Pflicht seit 12.09. (I-32):** Jeder Erledigt-Eintrag endet mit einer Zeile
`Aufwand: <Zählerstand zu Beginn> → <Zählerstand vor der Abschlussnotiz>, also rund X Mio. Token`.
Immer an **derselben Stelle** abgelesen, sonst sind zwei Läufe nicht vergleichbar; als
**Aufwandsmaß** benennen, nicht als Kosten — ob und wie die Größe das Konto-Kontingent belastet,
ist von innen nicht prüfbar. Ist der Zähler nicht auffindbar, gehört das ausdrücklich hin
(„Aufwand: nicht ermittelbar") statt einer Schätzung. *Bis zum 12.09. stand die einzige gemessene
Zahl nur im Register (I-32, Nachtrag 24.08.) — dort gehört die Auswertung hin, der Messwert
hierher, wo Läufe nebeneinanderliegen.*

**A-05 · erledigt 24.08.** — Befund 4aj in `projekt/01-status.md`: Der λ-Wert war die kleinere
Hälfte des Auftrags und ist unspektakulär — FOAMGLAS nennt 0,036 bis 0,050 W/(m·K) Nennwert je
Typ (Bemessungswert 0,037–0,052); beschaffbar ist **T4+ mit 0,042**, und die bisherige Annahme
0,04 lag damit am optimistischen Rand dessen, was der Markt überhaupt hergibt. Bezugsquellen für
Kleinmengen sind unkritisch: Einzelplatten 600 × 450 × 40 mm ab **12,85 €**, rund 13–26 €
Dämmstoff je Modul. **Der eigentliche Fund liegt daneben: Die im Modell und CAD geführte
Dämmstärke von 20 mm ist keine handelsübliche Plattendicke** — Schaumglas beginnt bei 40 mm, bei
beiden deutschen Herstellern und in jeder gefundenen Marktübersicht. Damit ist die 20-mm-Schicht
kein Kaufteil, sondern ein Zuschnitt, und `dämm_d` steht am Anfang der Kette Wandaufbau →
Modulaußenmaß → Etagenteilung → Rackhöhe: Auf 40 mm gesetzt, würde ein Vier-Etagen-Rack
überschlägig über die Reichweitengrenze von 2000 mm wachsen. Empfohlen ist deshalb, die 40er
Platte in der Dicke zu spalten (eine Platte ergibt genau Boden und Decke eines Moduls) statt die
Maßkette anzufassen. Zwei Gegenproben fielen dabei ab: Die Massenannahme stimmt (0,86 kg
gerechnet gegen 0,8 kg in Befund 4t), die Kostenannahme für Stufe 2b vermutlich nicht (32 € je
Modul in I-10 gegen rund 55–60 € nachgerechnet — als Prüfpunkt vermerkt, nichts geändert). Und
ein Nebenbefund, der die ganze Frage erübrigen könnte: Der im Bauplan als „schlechter" abgetane
**Luftspalt** erreicht zwischen blanken Edelstahlflächen rechnerisch dieselbe Größenordnung wie
Schaumglas — bei Wärmestrom nach unten sogar mehr —, kostet nichts und hat kein Dickenproblem.
Neu: **P-43** (Dämmstärke nicht handelsüblich), **I-33** (Luftspalt rechnen, gehört vor jede
Kaufentscheidung), **I-34** (Außenkontur auf Stufe 2b statt 2 auslegen). Fortgeschrieben: P-25,
P-09, I-10, I-29, I-32. Alle Zahlen als „in die Arbeitsmappe nachzuziehen" vermerkt. Nächster
Schritt für William: 0,042 in Blatt `06-Klima` eintragen und dort eine vierte Spalte für den
Luftspalt anlegen — danach ist entschieden, ob überhaupt Schaumglas gekauft wird.
*Aufwand: 15,0 → 14,65 Mio. Token, also rund 0,35 Mio. — nachgetragen 12.09. aus dem
I-32-Nachtrag, wo die Zahl ursprünglich stand.*

**A-04 · erledigt 23.08.** — Befund 4ai in `projekt/01-status.md`: Der Einkaufskorb steht und ist
mit 27–60 € Ware unkritisch — größer als das Saatgut ist der Versand (12–24 € über drei bis vier
Shops), deshalb in einem Rutsch mit Substrat bestellen. Inhaltlich drei Funde, die den Sortenplan
berühren: **„Rucola" sind zwei Arten** (*Eruca sativa* 400 Korn/g gegen *Diplotaxis tenuifolia*
3.200 Korn/g — achtfaches Korngewicht, zwanzigfacher Preis je Tray, deutlich unterschiedliche
Schärfe); **Hobbyportionen sind die falsche Gebindegröße** (Bronzefenchel als 50-Korn-Portion
kostet rund 80–115 € je Tray gegen 0,54–0,80 € bei Bulk-Ware, und Bronzefenchel wie Micro-Shiso
sind als Bio-Bulk praktisch nicht zu bekommen); **Micro-Shiso braucht laut Anbietern 19–27 statt
12–16 Tage** und würde damit den Chargenstart bestimmen. Dazu zwei rechtliche Klärungen: Der
PA-Sperrpunkt in `anbau/sorten/borretsch.md` ist aufgelöst (eigener Höchstgehalt für
Borretschblätter existiert, greift auf junge Blätter durch, Zahlenwert bleibt bewusst außerhalb
der Dokumente) — offen bleibt nur der Nachweis am eigenen Erzeugnis; und **Microgreens im
Substrat sind rechtlich keine Sprossen** (ESSA-Leitlinie der Kommission), also kein Sprossenrecht,
wohl aber die Pflicht zu ungebeiztem Saatgut. Neu: **P-39** (Aussaatstärke ungestützt, Quellen
streuen um Faktor 2–3), **P-40** (Beschaffbarkeit zweier Sorten, blockierend für die Bestellung),
**P-41** (Shiso-Kulturdauer), **P-42** (PA-Nachweis Borretsch), **I-30** (Eigenvermehrung der
teuren Sorten), **I-31** (Keimprobe vor jeder Aussaat). Alle Mengen- und Preisgrößen als „in die
Arbeitsmappe nachzuziehen" vermerkt. Nächster Schritt für William: drei kleine Entscheidungen —
Rucola-Art, Bronzefenchel gegen grünen Fenchel, Borretsch anbauen oder streichen.
*Aufwand: nicht ermittelbar (vor Einführung der Pflichtzeile).*

**A-03 · erledigt 23.08.** — Befund 4ah in `projekt/01-status.md`: Einen „Abrisswinkel" gibt es
nicht — Tropfen unter einer Mindestgröße haften wegen der Kontaktwinkelhysterese bei jeder
Neigung (gemessen bis 90°); die tatsächliche Fallinie des Bodens ist 2,24°, nicht 2°; und die
3°-Empfehlung ließ sich in keinem Regelwerk belegen (EHEDG Doc 8 nennt keinen Winkel, USDA
10.13 fordert 1,19° für kurze Wege). Der eigentliche Befund: **die 1° Querneigung ist die
einzige Zahl unter dem Normminimum**, und der stärkere Hebel sind Ebenheit und Nivellierung
(0,5 mm/100 mm nötig, ISO 13920 erlaubt ohne Angabe 2–5,5 mm). Empfehlung: 2° längs halten,
quer 1,0° → 1,5° (+3,9 mm Eckhöhe statt +11,5 mm bei 3°). P-06 fortgeschrieben, **P-38** neu
(Ebenheits-/Nivelliertoleranz), **I-28** (Lüfternachlauf zum Trocknen) und **I-29** (Wanne in 2B
statt gebürstet) neu; P-09, P-22, P-33 und I-23 ergänzt. Alle Neigungs- und Prüfgrößen als
„in die Arbeitsmappe nachzuziehen" vermerkt. Nächster Schritt für William: Abflussversuch am
Blechrest, 200 ml Wasser bei 2°/1,5° und 3°/1,5° — zehn Minuten, entscheidet die Frage endgültig.
*Aufwand: nicht ermittelbar (vor Einführung der Pflichtzeile).*

**A-02 · erledigt 22.08.** — Befund 4ag in `projekt/01-status.md`: Sicce Syncra Silent 3.5
(3,7 m, 65 W, sehr leise, 129,95 €), EHEIM compactON 5000 (3,6 m, Leistungsdiagramm beim
Hersteller) und SHURflo Aqua King II 3.0 (Membran, 12 V, 2,0 bar Abschaltdruck,
Zahlen-Kennlinie, Trinkwasser-Materialien, ~126 €). Kern: 3-m-Annahme erfüllbar, aber
Betriebsart (getaktet gegen Dauerlauf) entscheidet die Bauart; nur die Membranpumpe hat
Druckreserve für Düsen. P-12/P-13 fortgeschrieben; Kennlinienpunkte „in Blatt 12 nachzuziehen".
*(Statusbefund 4ag am 23.08. nachgetragen — der Lauf hatte ihn nicht geschrieben.)*
*Aufwand: nicht ermittelbar (vor Einführung der Pflichtzeile).*

**A-01 · erledigt 22.08.** — Befund 4af in `projekt/01-status.md`: Ganter GN 753.1-25 (POM,
600 N radial = 6,7-fache Anforderung, 3,45 €/St lagernd) und KIPP K2371 / norelem 95056/57
(Lager und Bolzen Edelstahl, bis 105 °C, ab 9,47 €) als Feuchtraum-Favorit; igus xiros geprüft
und verworfen (84 N < 90 N). P-21 fortgeschrieben (`projekt/03-probleme.md`); Rollenkosten
(24 St ≈ 83–297 €, skaliert je Etage) als „in die Arbeitsmappe nachzuziehen" vermerkt. Offen:
Traglasttabelle KIPP/norelem war fernab nicht zugänglich — braucht Browser-Session oder Katalog.
*(Statusbefund 4af am 23.08. nachgetragen — der Lauf hatte ihn nicht geschrieben.)*
*Aufwand: nicht ermittelbar (vor Einführung der Pflichtzeile).*

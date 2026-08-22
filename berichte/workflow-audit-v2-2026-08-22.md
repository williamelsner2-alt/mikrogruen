# Workflow-Audit V2 — Vollautomatisierte Gewächshäuser

*Stand: 22.08.2026 · ersetzt die Fassung vom 21.08. · Entscheidungsgrundlage, keine Anleitung*
*Neu in V2: Tiefenanalyse aller exportierten Chats, des Projektgedächtnisses und der Design-Sitzung (Abschnitt „Befunde", inkl. Nachtrag B9 zur vollständig gelesenen CAD-Session), Vorschläge 24–28 (Claude Design, Leitstand/CEO, Aufräumaktion, Grafana, Übergabe-Skill). Die Nummern 1–23 sind unverändert — du kannst dich weiter auf sie beziehen.*

---

## Ist-Befund

**Chats (jetzt aus dem Export vollständig, statt nur vom Screenshot).** Das Konto enthält 14 klassische Chats plus 3 Cowork-Sessions (die der Export nicht erfasst) plus 1 Design-Sitzung, verteilt auf 4 Projekte:

| Bereich | Bestand |
|---|---|
| Hauptprojekt (dieses) | 6 Chats + 3 Cowork-Sessions; Themen von Gründung über Technik bis Förderung; 2 davon waren „Dauer-Chats" — nicht lange offen (Tage bis max. 2 Wochen), aber mit sehr vielen Arbeitsstunden am Stück und entsprechend gewachsenem Kontext |
| Projekt „Ausbildung Mechatronik" | Fachfragen (z. B. Brückenschaltung/PTC) — sauber getrennt, **und mit gepflegten Projekt-Instructions** |
| Projekt „Pinterest/Vinted-App" (Fundstück) | 2. Vorhaben, eigener Claude-Code-Handoff — sauber getrennt |
| Ohne Zuordnung | 7 leere, titellose Chats (Karteileichen) + 1 nie fortgesetzter Skill-Creator-Chat |

**Bereits vorhanden und verbunden:** claude.ai-Projekt (25 Dokumente + Arbeitsmappe, **ohne Projekt-Instructions**), Cowork mit Ordnerfreigabe, FreeCAD-MCP, Blender-MCP, Claude in Chrome, Desktop-Commander-Plugin, Figma-Connector, Standard-Skills (Excel/Word/PowerPoint/PDF/Design), Claude Design (einmal genutzt), Computernutzung (einmal erfolgreich zur MCP-Reparatur eingesetzt).

**Abo Max 5x.** Alles Folgende ist enthalten, sofern nicht beziffert. Beobachtung aus dem Export: Die Design-Sitzung am 18.08. endete mitten im Arbeitsschritt mit einer Kontingent-Pause — die Aufgabenteilung in Vorschlag 3 ist also auch Kontingent-Management.

---

## Befunde aus der Tiefenanalyse

Kein Auswahlkatalog — das sind die Ergebnisse der Chat-Lektüre. Die Vorschläge, auf die sie zeigen, stehen in Klammern.

**B1 · Deine Ablage-Disziplin hält der Prüfung stand — mit zwei kleinen Lücken.** Fast alles Wichtige aus den Chats ist in der Projektablage angekommen (Materialausschlüsse, GN-Entscheidung, Zwei-Stufen-Prinzip, EIC-Ausschluss samt Wiedervorlage, Stress-Doku, Finanzierungsrangfolge). Gefunden habe ich: (a) Der offene Punkt **„Klappenscharniere"** aus der CAD-Cowork-Session steht nur in deren Statuszeile — in keinem Register, keinem „Nächste Schritte". (b) `technik/cad-modellstand.md` ist intern uneinheitlich: Die Baumstruktur zeigt noch den alten geschweißten Modulboden statt der herausnehmbaren Wanne, Abschnitt 7 behauptet „keine Verbindung zwischen Mappe und CAD" (Abschnitt 1a beschreibt das Sync-Makro), und die Rackmaße (1720 mm, 514 × 550) entsprechen dem Stand vor den Befunden 4ac/4z (1820 mm, 517 × 551,5). *(→ Vorschlag 26; das Nachziehen selbst übernehme ich gern nach deiner Freigabe)*

**B2 · Werkzeug-Doku und Projektgedächtnis widersprechen sich beim FreeCAD-MCP.** `werkzeuge/freecad-mcp-setup.md` dokumentiert den fragilen Pfad über die Claude-eigene uv-Runtime (Update-Fallstrick); das Projektgedächtnis behauptet dagegen, es laufe bereits die robuste Variante über eine eigene uv-Installation. Vermutlich hat die Troubleshooting-Session vom 20.08. umgestellt und die Doku ist nicht nachgezogen — dann ist Vorschlag 17 schon erledigt und nur die Doku offen. Das ist von hier aus nicht prüfbar (Konfigurationsordner ist für Cowork gesperrt), am Rechner aber in einer Minute. *(→ Vorschlag 17)* **Aufgelöst 22.08.:** William hat nachgesehen — der `command` zeigt weiterhin auf die mitgelieferte uv-Runtime 0.9.7. Die Doku stimmte, das Gedächtnis nicht; der Update-Fallstrick ist real, die Umstellung auf eine eigene uv-Installation bleibt als optionale Härtung beschrieben (`werkzeuge/freecad-mcp-setup.md`).

**B3 · Die unsichersten Wirtschaftszahlen stehen in keinem Register.** Der Gründungs-Chat hat die Skalierungsrechnung geliefert (2 Restaurants à 50 Gäste, Bestellquote 15/30/50 %, Traypreise 20/28/40 € aus US-Marktdaten) — und selbst dazugesagt, die Bestellquote sei „die unsicherste Zahl im ganzen Modell". P-24 bis P-27 erfassen nur technische Annahmen; die beiden wirtschaftlichen (Bestellquote, Traypreis) fehlen im Problemregister und tauchen in keiner Messliste auf, obwohl sie beim ersten Restaurantkontakt zu Messwerten würden. *(→ Vorschlag 26)*

**B4 · Das Projektgedächtnis enthält veraltete Fakten.** Es beschreibt noch die Drei-Ordner-Struktur „Technik/Pflanzliches/Wirtschaft", das Technikfach im Rack und den Einzelgehäuse-Stand. Neue Chats im Projekt erben dieses Altwissen und können ihm mehr glauben als der Ablage. *(→ Vorschlag 26)*

**B5 · Zwei deiner besten Workflow-Muster hast du bereits erfunden — sie sind nur nicht formalisiert.** Der Technik-Chat beginnt mit einer selbst formulierten Fokus-Regel („in diesem Chat ausschließlich Technik") und endet mit einem selbst beauftragten Übergabe-Log an Cowork („Cowork hat keinen Zugriff auf die Chats, erstell mir einen Log"). Genau das machen Vorschläge 1, 2 und 5 zum Standard — inklusive des Endes der Dauer-Chats: Derselbe Technik-Chat ist trotz Fokus-Regel zum Sammelbecken geworden (Zeltauswahl, Trays, Excel-Aufbau, MCP-Troubleshooting über 6 Nachrichten, Werkzeugfragen).

**B6 · Der Skill-Creator-Ansatz liegt seit dem 17.08. auf halber Strecke.** Der Chat „Skill creator tool" wurde nach der ersten Antwort nie fortgesetzt; zwei Skill-Richtungen wurden damals vorgeschlagen (Doku-Konsistenz bzw. Recherche-zu-Dokument). Vorschlag 12/13 nimmt genau diesen Faden auf.

**B7 · Claude Design wurde bereits einmal produktiv genutzt — mit Lehren.** Am 18.08. entstand aus dem 3D-Briefing ein interaktiver three.js-Viewer des Racks (drehbar, beschriftet). Drei Beobachtungen daraus: Es funktioniert für Anschauungsmodelle; die Sitzung endete in einer Kontingent-Pause; und das Modell zeigt heute veraltete Geometrie (488er-Tiefe, 1480er-Höhe), weil Design-Artefakte nicht an der Parameterkette hängen. Deine damalige Einordnung „Darstellung ja, Parametrik nein" hat sich bestätigt und Design hat dich selbst korrekt zu CAD+MCP geschickt. *(→ Vorschlag 24)*

**B8 · Kleinkram, gefunden beim Abgleich:** Im lokalen Ordner liegt noch `anbau/rucola-qualitaet.md`, das laut Übersicht durch `anbau/sorten/rucola.md` ersetzt wurde (Karteileiche im Spiegel, nicht in der Ablage); dazu die 7 leeren Chats im Konto. *(→ Vorschlag 26)*

**B9 · Nachtrag 22.08. — die CAD-Session ist jetzt vollständig gelesen (Ordner `uebergabe/`).** Ergebnis der Gegenprüfung: Die Abdeckung ist bestätigt — alle Weichenstellungen der Session stehen als Befunde 4e–4ae in der Ablage, das Übergabepaket selbst sagt zu Recht „der Verlauf ist die Beweisführung, nicht das Ergebnis". Offen bleibt nur, was B1 schon nannte (Frontklappe/Scharniere als nächster Schritt — steht jetzt im Übergabepaket, aber weiter nicht im Register). Drei neue Beobachtungen: (a) Die Session war eine **Mega-Session** — Aufräumen, CAD, Statik, Kriterien, Register und Übergabe in einem Strang über vier Tage, einmal über die Kontextgrenze hinweg fortgesetzt; das Cowork-Gegenstück zum Dauer-Chat, mit denselben Kosten (Vorschläge 2 und 6 gelten auch hier). (b) Bei langen autonomen Läufen war der **Laptop-Standby** die eigentliche Ausfallursache — das `MikrogruenWachhalten`-Makro ist die Antwort, gehört aber als Betriebsregel zu den langen Läufen dokumentiert. (c) Das Übergabepaket ist so gut, dass es als **Vorlage für einen Standard taugt** — daraus ist Vorschlag 28 geworden. Außerdem kennt die Ordnertabelle in `00-Uebersicht.md` die neuen Ordner `berichte/`, `uebergabe/` und `manifest/` noch nicht. *(→ Vorschläge 26 und 28)*

---

## Organisatorische Änderungen

### 1 · Chat-Namensschema mit Bereichskürzel ✓ *(umgesetzt 22.08. — `werkzeuge/chat-konvention.md`, Umbenennen der Alt-Chats von Hand offen)*

Jeder Chat bekommt beim Start einen Namen nach dem Muster `[Kürzel] Thema`, mit den Kürzeln der Ablage: `[CAD]`, `[TECH]`, `[ANBAU]`, `[WIRT]`, `[DOKU]` — die bestehenden Chats werden einmalig umbenannt. Aus „Technische Umsetzung und Realisation" wird z. B. `[TECH] Bauplan bis Rack-Pivot (abgeschlossen)`, aus dem Audit hier `[DOKU] Workflow-Audit`.
**Vorteile:** Wiederfinden ohne Öffnen; die Chatliste spiegelt die Ablagestruktur; man sieht sofort, ob es zu einem Thema schon einen Chat gibt.
**Nachteile:** Erfordert Disziplin beim Start jedes Chats; automatische Titel müssen von Hand überschrieben werden. Kostenlos.

### 2 · Ein Chat je Arbeitspaket, mit festem Abschluss ✓ *(umgesetzt 22.08. — Substanz bereits mit Vorschlag 1 und 28 gesetzt, heute ergänzt um die explizite Warnung „Statuszeile ersetzt kein Register" in `werkzeuge/chat-konvention.md` Abschnitt 3, nach Befund B1a)*

Dauer-Chats werden beendet: Ein Chat gehört zu genau einem Arbeitspaket, und am Ende steht immer derselbe Schlussschritt — Ergebnisse in `projekt/01-status.md` bzw. die Register schreiben (deine Pflegeregel 7), danach wird der Chat nicht mehr fortgesetzt. Du hast dieses Abschlussritual am 19.08. selbst erfunden (Übergabe-Log an Cowork) — es fehlt nur die Regel, es jedes Mal zu tun, auch für Cowork-Sessions (deren Statuszeile ersetzt kein Register, siehe Befund B1a).
**Vorteile:** Kein wachsender Kontextballast; alte Chats bleiben als abgeschlossene Kapitel nachschlagbar; nichts lebt nur im Chat.
**Nachteile:** Mehr Chat-Starts; der Einstieg fällt jedes Mal an — das übernimmt Vorschlag 5. Kostenlos.

### 3 · Werkzeug-Matrix als `werkzeuge/arbeitsteilung.md` ✓ *(umgesetzt 22.08., erweitert um Modell-/Aufwands-Spannen und Token-Sparregeln)*

Der Keim existiert schon: `projekt/02-rahmen-und-netzwerk.md` Abschnitt 3a hat vier Zeilen Arbeitsteilung. Der Vorschlag ist, daraus eine vollständige, eigene Datei zu machen — Aufgabentyp → Werkzeug, nach demselben Prinzip wie deine „Arbeitsteilung der Dokumente": CAD → Claude Desktop mit FreeCAD-MCP · Doku/Excel/Dateiarbeit → Cowork mit Ordner · Recherche und Denkarbeit → normaler Chat im Projekt (schont das Kontingent) · unterwegs → iOS-App im Projekt · Browserarbeit auf konkreten Seiten → Claude in Chrome · Rechner-Wartung → Desktop Commander bzw. Computernutzung · Firmware (später) → Claude Code.
**Vorteile:** Die Entscheidung „womit mache ich das?" fällt einmal statt jedes Mal; verhindert teure Fehlgriffe; neue Chats starten im richtigen Werkzeug.
**Nachteile:** Eine Datei mehr zu pflegen; muss nachziehen, wenn Anthropic Funktionen verschiebt. Kostenlos.

### 4 · Ordnerpflege-Regel für `cad/` und `_alt_` (löst P-32) ✓ *(erledigt 22.08. — FreeCAD-Sicherungskopien standen bereits auf 1 (William bestätigt), `.FCBak` und `_alt_` in der `.gitignore` ausgenommen, `_alt_`-Verfallsdatum = erster Git-Commit; P-32 als gelöst markiert)*

P-32 wird an der Quelle gelöst statt durch Aufräumen: FreeCAD wird so eingestellt, dass es nur noch eine Sicherungskopie je Datei behält, `.FCBak` wird von Backup und Versionierung ausgenommen, und der Ordner `_alt_2026-08-19` bekommt ein Verfallsdatum. Zusammen mit Vorschlag 20 werden die FCBak-Dateien sogar überflüssig, weil Git jeden Speicherstand hält.
**Vorteile:** Das Problem kommt nicht wieder; der CAD-Ordner zeigt nur gültige Dateien.
**Nachteile:** Keine nennenswerten. Kostenlos, einmalig wenige Minuten.

---

## Claude-native Werkzeuge

### 5 · Projekt-Instructions im claude.ai-Projekt hinterlegen ✓ *(eingefügt 22.08. durch William — aktiv; Referenzkopie und Pflegeregel in `werkzeuge/projekt-instructions.md`)*

Das Instructions-Feld deines Hauptprojekts ist leer — dabei nutzt du die Funktion im Ausbildungs-Projekt bereits erfolgreich. Hierher gehört, was du heute in jedem Chat neu erklärst: „Lies zuerst `projekt/01-status.md` und `projekt/02-rahmen-und-netzwerk.md`; Zahlen nur aus der Arbeitsmappe; Probleme und Ideen sofort mit ID ins Register; Pflegeregeln aus `00-Uebersicht.md` einhalten; Zeitwert 15 €/h; am Chat-Ende Ergebnisse sichern (Vorschlag 2)."
**Vorteile:** Jeder Chat startet richtig, auch am Handy; die Einstiegshürde aus Vorschlag 2 verschwindet; einmal formulieren statt hundertmal prompten.
**Nachteile:** Muss bei Regeländerungen nachgezogen werden. Kostenlos.

### 6 · Cowork-Projekt für das Vorhaben (Gedächtnis + Ordner fest verdrahtet) *(nur von Hand — Anlegen in der Desktop-App: Sessions gruppieren, Ordner und Instructions einmal setzen)*

Cowork kann Sessions in eigene Projekte gruppieren, mit eigenem Gedächtnis, eigenen Instructions und fest hinterlegtem Kontext (dein Ordner, dein claude.ai-Projekt). Deine Cowork-Sessions laufen bisher einzeln — gebündelt erinnern sich neue Sessions an Ergebnisse der alten, und die Ordnerfreigabe muss nicht jedes Mal neu gewählt werden.
**Vorteile:** Sessiongedächtnis über Aufgaben hinweg; weniger Wiederholung; Instructions und Ordner einmal gesetzt.
**Nachteile:** Cowork-Projekte liegen lokal auf dem Desktop, ohne Cloud-Sync — am zweiten Rechner oder Handy existiert das Projektgedächtnis nicht. Kostenlos.

### 7 · Geplante Aufgabe: monatliche Fristen-Wiedervorlage ✓ *(eingerichtet 22.08. — parallel in eigener Cowork-Session, geplante Aufgabe „Fristen-Wiedervorlage", 1. jedes Monats)*

Eine wiederkehrende Cowork-Aufgabe (z. B. am Monatsersten) gleicht die Tabelle „Termine, die von außen kommen" und `wirtschaft/finanzierung-und-wettbewerbe.md` gegen das aktuelle Datum ab und meldet, was in den nächsten 8 Wochen fällig wird — als Erstes die BayStartUP-Registrierung im Oktober. Geplante Aufgaben laufen in der Cloud, auch wenn dein Rechner aus ist.
**Vorteile:** Fristen hängen nicht mehr daran, dass du die Datei aufschlägst; im Abo enthalten; die drei „sofort"-Punkte lassen sich mit überwachen.
**Nachteile:** Kein Zugriff auf den lokalen Ordner — die Fristenquelle muss die Projektablage sein (ist sie); jeder Lauf verbraucht etwas Kontingent.

### 8 · Claude für Excel (Microsoft-365-Add-in)

Claude arbeitet direkt in der geöffneten Excel-Mappe: Annahmen ändern, ohne Formeln zu brechen, Blätter erklären lassen, Szenarien durchspielen — für eine Arbeitsmappe mit 16 Blättern und Szenarioumschaltern das passendere Werkzeug als der Umweg über Datei-Upload und Neuerstellung.
**Vorteile:** Iterieren am lebenden Modell statt am Datei-Snapshot; in allen Bezahl-Abos enthalten; Kontext teilt sich mit PowerPoint/Word.
**Nachteile:** Setzt Microsoft-365-Excel voraus — mit LibreOffice nicht nutzbar; falls kein M365 vorhanden ist, kostet das ~7–10 €/Monat extra, und dann bleibt der bisherige Weg (Cowork bearbeitet die xlsx als Datei) die funktionierende kostenlose Alternative.

### 9 · Claude in Chrome gezielt für Portal- und Einkaufsarbeit ✓ *(umgesetzt durch Vorschlag 3 — Matrix-Zeile „Arbeit auf konkreten Webseiten" in `werkzeuge/arbeitsteilung.md`)*

Die Erweiterung ist installiert; ihr Platz in der Matrix ist alles, was auf konkreten Webseiten stattfindet: Blechpreise und GN-Behälter in Shops vergleichen, Pumpen-Datenblätter suchen (P-12, P-21), BayStartUP-Registrierung, IHK-Kontakt.
**Vorteile:** Schon vorhanden; spart Copy-Paste; Ergebnisse landen direkt im Chat und von dort ins Register.
**Nachteile:** Auf fremden Seiten mit Bedacht einsetzen; Browser-Sessions verbrauchen spürbar Kontingent.

### 10 · Claude-iOS-App als Unterwegs-Eingang ins Projekt ✓ *(umgesetzt durch Vorschlag 3 — Matrix-Zeile „Unterwegs erfassen"; volle Wirkung, sobald die Instructions aus 5 eingefügt sind)*

Die App arbeitet im selben Projekt wie Browser und Desktop — damit wird das Handy zum Erfassungsgerät für deine Register: Idee in der Bahn → kurzer Chat im Projekt → „nimm das als I-xx auf" (mit Vorschlag 5 weiß die App, wie). Auch Cowork-Aufgaben lassen sich mobil anstoßen und überwachen.
**Vorteile:** Pflegeregel 7 gilt auch unterwegs, wo Ideen entstehen; kostenlos im Abo.
**Nachteile:** Kein Zugriff auf lokalen Ordner und CAD von unterwegs; Diktat-Erfassung braucht abends einen Kontrollblick.

### 11 · Claude Code für die Firmware (später, nach P-01)

Für Schritt 7 des Status („Firmware V1 am Steckbrett") ist Claude Code das passende Werkzeug: agentisches Coden im Terminal, testet und versioniert mit Git — im Max-Abo enthalten. Der Technik-Chat hat denselben Weg schon empfohlen (PlatformIO/VS Code + Claude Code), und über das Fundstück-Vorhaben kennst du das Übergabeformat bereits. Jetzt nichts einrichten; erst nach der Elektronik-Bestandsaufnahme (P-01).
**Vorteile:** Ohne Zusatzkosten; deutlich stärker für Firmware-Iteration als Chat-Copy-Paste; Versionierung von Anfang an.
**Nachteile:** Terminal-Lernkurve neben der Ausbildung; bis zur Steuerungsphase noch nicht dran.

---

## Skills

### 12 · Eigener Skill „Ablage-Pflege" ✓ *(gebaut und getestet 22.08.; von William gespeichert, aktiv)*

Ein selbst erstellter Skill mit deinen Pflegeregeln 1–8, den Registerformaten (P-xx/I-xx), der Kopfzeilenpflicht und der Arbeitsteilung der Dokumente — Claude wendet ihn automatisch an, sobald Projektdokumente geändert werden, in jeder Oberfläche. Das ist exakt die „Doku-Konsistenz"-Richtung, die dein liegengebliebener Skill-Creator-Chat vom 17.08. vorgeschlagen hatte (Befund B6).
**Vorteile:** Konsistente Doku-Änderungen ohne Nachprompten; wirkt auch dort, wo die Projekt-Instructions (5) nicht greifen.
**Nachteile:** Einmalig ~1–2 h Erstellung (15–30 € Zeitwert; alternativ richte ich ihn ein); muss bei Regeländerungen mitgepflegt werden.

### 13 · Eigener Skill „CAD-Sitzung" ✓ *(gebaut 22.08.; von William gespeichert, aktiv — bewusst im Verweis-Stil auf `technik/cad-modellstand.md` statt Kopien, ungetestet bis zur ersten echten CAD-Sitzung)*

Ein Skill mit den FreeCAD-Arbeitsregeln aus `technik/cad-modellstand.md` und `werkzeuge/freecad-mcp-setup.md`: nie feste Zahlen in Skizzen; nach Wertänderungen Sync-Makro, nach Topologieänderungen Rastermakro, Radien übers Radien-Makro; Ansichten nach Namensschema exportieren; danach Gegenprobe CAD ↔ Mappe. Jeder neue CAD-Chat arbeitet sofort nach diesen Regeln.
**Vorteile:** Die teuer gelernten Fallstricke (vier Maßketten-Fehler, Timeout-Falle, Einheiten in Expressions) sind dauerhaft kodiert statt nur dokumentiert.
**Nachteile:** Einmalig ~1–2 h; der Skill sollte auf die Dateien verweisen statt sie zu kopieren, sonst zwei Wahrheiten.

### 14 · Eigener Skill „Sorten-Steckbrief" ✓ *(umgesetzt 22.08. — parallel in eigener Cowork-Session, als .skill-Datei geliefert)*

Ein kleiner Skill, der bei „neue Sorte anlegen" automatisch `anbau/sorten/_vorlage.md` kopiert, nach festem Aufbau ausfüllt und die Sorte im Katalog verlinkt (Pflegeregel 4).
**Vorteile:** Neue Sorte in Minuten, formatgleich, Verlinkung wird nie vergessen.
**Nachteile:** Geringster Mehrwert der drei Skills — Vorlage plus Vorschlag 5 leistet fast dasselbe; lohnt erst bei regelmäßigen Neuzugängen. Erstellung ~0,5–1 h.

---

## Connectors / MCP

### 15 · Google-Kalender-Connector

Offizieller Connector im Claude-Verzeichnis (derzeit nicht verbunden), mit dem Claude Termine anlegen, suchen und prüfen kann. Für dich der Weg, die festen Fristen aus Abschnitt 5a zusätzlich als echte Kalendertermine mit Erinnerung zu führen — gepflegt von der Wiedervorlage-Aufgabe aus Vorschlag 7.
**Vorteile:** Erinnerungen erreichen dich auch ohne Claude (Handy-Push); kostenlos; kombiniert sich mit 7.
**Nachteile:** Google-Konto nötig; Termine sind Kopien der führenden Datei — Doppelpflege-Risiko, das deine Ablageregeln sonst vermeiden.

### 16 · Blender-MCP für Präsentations-Renderings ◐ *(eingeordnet 22.08. — Matrix-Zeile in `werkzeuge/arbeitsteilung.md`; erste echte Renderings, wenn Material fürs Firmengespräch gebraucht wird)*

Bereits als Desktop-Extension verbunden, fürs Projekt ungenutzt: Aus den vorhandenen Exporten (`3d-export/*.step/obj/glb`) kann Claude in Blender fotorealistische Ansichten bauen — gebürsteter Edelstahl, Licht, Umgebung Küche/Labor. Material fürs Firmengespräch und BayStartUP, ohne die Schnittstelle offenzulegen (Außenansicht statt Konstruktionsdetail — passt zur gestuften Offenlegung).
**Vorteile:** Schon eingerichtet, kostenlos; nutzt die vorhandene Exportkette; hochwertiger als FreeCAD-Screenshots.
**Nachteile:** Licht/Material brauchen Iterationsrunden; reine Darstellung, kein CAD-Ersatz — und anders als das CAD hängen Renderings nicht an der Parameterkette (siehe Befund B7: veraltete Stände entstehen von selbst).

### 17 · FreeCAD-MCP-Zustand prüfen und Doku nachziehen ✓ *(geprüft 22.08. durch William: mitgelieferte uv-Runtime 0.9.7 ist aktiv — Doku stimmte, Projektgedächtnis lag falsch (B2 aufgelöst, fließt in die Gedächtnis-Korrektur aus 26 ein). Doku nachgezogen; die Umstellung auf eine eigene uv-Installation steht dort als optionale ~5-Minuten-Härtung)*

Setup-Doku und Projektgedächtnis widersprechen sich: fragiler Pfad über die Claude-eigene uv-Runtime (Doku) gegen robuste eigene uv-Installation (Gedächtnis). Der Vorschlag: einmal am Rechner nachsehen, welcher Stand gilt — ist die robuste Variante schon aktiv, wird nur `werkzeuge/freecad-mcp-setup.md` aktualisiert; wenn nicht, wird umgestellt (die Doku beschreibt den Weg selbst).
**Vorteile:** Die wichtigste Werkzeugkette übersteht Claude-Updates; beseitigt den dokumentierten Fallstrick und den Doku-Widerspruch in einem; ~15 Minuten.
**Nachteile:** Keine nennenswerten. Kostenlos.

---

## Plugins

### 18 · Desktop Commander bewusst in die Matrix aufnehmen ✓ *(umgesetzt durch Vorschlag 3 — Matrix-Zeile „Rechner-Wartung", beaufsichtigt)*

Das Plugin ist installiert: Terminal, Prozesse und Dateiarbeit auf deinem Rechner aus Claude heraus — genau die Lücke aus deinem Setup-Dokument („Terminals sind für die Fernsteuerung gesperrt"). Sein Platz: Diagnose- und Wartungsarbeiten (MCP-Logs, Konfiguration prüfen — z. B. die Prüfung aus Vorschlag 17, das FCBak-Aufräumen aus 4), in beaufsichtigten Desktop-Chats. Für Bildschirm-Arbeit in Anwendungen gibt es ergänzend die Computernutzung, die dir am 19.08. schon einmal die MCP-Einrichtung gerettet hat.
**Vorteile:** Bereits vorhanden, kostenlos; macht Werkzeug-Reparaturen zur 10-Minuten-Sache.
**Nachteile:** Mächtig — nur zusehen lassen, nichts unbeaufsichtigt laufen lassen; für Dateiarbeit im Projektordner bleibt Cowork das richtige Werkzeug.

---

## Externe Programme

### 19 · Obsidian als Lese- und Suchoberfläche über dem Ordner *(nur von Hand — Installation und Vault-Anlage am Rechner; keine Vorbereitung nötig)*

Freier Markdown-Editor direkt auf `Desktop\Claude\mikrogruen\`: Volltextsuche über alle Dokumente, klickbare Dateiverweise, Gliederungsansicht für die langen Dokumente (der Status hat ~56 kB). Wichtig wegen „die Projektablage führt": als Lese-, Such- und Navigationswerkzeug einsetzen; geändert wird weiter über das Claude-Projekt.
**Vorteile:** Kostenlos (auch kommerziell); keine Formatänderung, keine Migration; Überblick ohne Claude-Kontingent.
**Nachteile:** Verführt zum lokalen Editieren (Disziplinfrage); Handy-Sync kostet ~4–5 €/Monat oder unterbleibt.

### 20 · Git + GitHub (privates Repository) für den Arbeitsordner ◐ *(vorbereitet 22.08. — `.gitignore` liegt im Ordner, drei Schritte am Rechner in `werkzeuge/git-einrichtung.md`; Grundlage für I-25)*

Versionskontrolle über den gesamten Ordner inklusive CAD, Makros und Arbeitsmappe: Jeder Arbeitsstand ein benannter Schnappschuss, jeder frühere Stand wiederherstellbar, privates GitHub-Repository als kostenloses Off-Site-Backup. Ersetzt strukturell, was `_alt_`-Ordner und FCBak-Dateien improvisieren.
**Vorteile:** Kostenlos; löst P-32 an der Wurzel mit; Schutz gegen Rechnerdefekt und Fehlbearbeitung; Kernkompetenz, die spätestens mit der Firmware (11) gebraucht wird.
**Nachteile:** Lernkurve (~2–3 h bis zur Routine); FCStd/xlsx sind Binärdateien — Historie ja, inhaltlicher Vergleich nein.

### 21 · FreeFileSync + externe Platte als einfache Backup-Alternative *(entfällt, sobald 20 eingerichtet ist — das Audit nennt beide als Alternativen, beides zusammen ist unnötig)*

Falls Git (20) zu viel auf einmal ist: FreeFileSync spiegelt den Ordner per Doppelklick auf USB-Stick oder externe Platte, mit Versionierung gelöschter Dateien. Deckt Backup ab, nicht Versionsgeschichte.
**Vorteile:** Kostenlos; in 30 Minuten eingerichtet; keine Cloud.
**Nachteile:** Manuell — wird vergessen ohne festen Anker; Datenträger nötig (~30–60 € einmalig, falls keiner da); gegenüber Git die schwächere Lösung, beides zusammen unnötig.

### 22 · Zotero für den Lernpfad und die Antragsquellen

Freie Literaturverwaltung: sammelt Paper, Bücher und Webquellen per Browser-Klick, mit Notizen und sauberen Zitaten. Passt zu `anbau/lernpfad-agrarwissenschaft.md` (Cornell-CEA-Kurse) und später zu Wettbewerbsunterlagen.
**Vorteile:** Kostenlos (Cloud-Speicher über 300 MB kostet, für Texte reicht die Freistufe lange); Claude kann mit exportierten Literaturlisten arbeiten.
**Nachteile:** Eigenes Werkzeug mit eigener Pflege — lohnt erst, wenn der Lernpfad wirklich läuft.

### 23 · KiCad für die Controller-Elektronik (später)

Freie Leiterplatten-CAD in Industriequalität — relevant, sobald aus Befund 4o/P-14 eine Entscheidung wird (dezentraler Modul-Controller oder Bus-Extender-Platine). Der Technik-Chat hat KiCad für genau diesen Moment schon vorgemerkt. Wie 11 eine Vormerkung, keine Einrichtung jetzt.
**Vorteile:** Kostenlos, Industriestandard, große Community; ergänzt die Mechatronik-Ausbildung; FreeCAD und KiCad arbeiten gut zusammen.
**Nachteile:** Ernsthafte Lernkurve; vor P-01 und Architekturentscheidung wäre jede Stunde verfrüht.

---

## Neu in V2

### 24 · Claude Design — für Außen-Material, nicht für Konstruktion ✓ *(eingeordnet 22.08. — Matrix-Zeile „Außen-Material" in `werkzeuge/arbeitsteilung.md`; Nutzung punktuell, wenn Material ansteht)*

Design erzeugt aus Beschreibung oder Vorlagen visuelle Entwürfe auf einer Canvas (Einseiter, Pitch-Folien, Mockups; Export u. a. als PDF/PPTX) — in deinem Abo enthalten, am Desktop und im Browser. Dein sinnvoller Einsatz ist punktuell: der Einseiter fürs Firmengespräch („fertiger Plan" für den Stiefvater, aus Renderings von 16 plus Zahlen der Mappe), später BayStartUP-Folien und Produkt-/Lieferkarten für die Restaurants. Nicht sein Platz: alles Parametrische (hat dich am 18.08. selbst zu CAD+MCP geschickt) und gepflegte Dauer-Decks.
**Vorteile:** Erste Entwürfe in Designqualität ohne Designkenntnisse; im Abo enthalten; nimmt Bilder aus 16 und Zahlen aus der Mappe auf.
**Nachteile:** Beta: Änderungen laufen über Neu-Prompten statt echtes Editieren, PPTX-Export braucht Nacharbeit; zieht am selben Kontingent (deine Sitzung am 18.08. endete in einer Kontingent-Pause); Artefakte hängen nicht an der Parameterkette und veralten still (Befund B7).

### 25 · Leitstand-Chat („CEO") als einziger Eingang für Neues ✓ *(umgesetzt 22.08. — `werkzeuge/leitstand.md` + Skill `leitstand` (gespeichert), mit zwei Testläufen geprüft und nachgebessert; **Session `[LEIT] Leitstand` läuft seit 22.08.**)*

Deine Idee, präzisiert um das, was technisch geht: Ein ständiger Chat `[LEIT] Leitstand` im Projekt (plus Kurzbeschreibung in den Instructions aus 5) übernimmt drei Rollen — **Aufnahme** (jede Idee/Vision landet zuerst hier und wird sofort als I-xx/P-xx ins Register geschrieben), **Einordnung** (Vorschlag, in welche Dateien und welche Phase des Fahrplans es gehört, was es verdrängt), **Delegation** (fertiger Arbeitsauftrag als Text zum Einfügen in einen neuen Chat des richtigen Werkzeugs, nach der Matrix aus 3 — wie dein „gib mir einen Prompt für die Cowork-Sitzung" vom 19.08., nur als Standard). Ehrliche Grenze: Ein Chat kann keine anderen Chats öffnen oder steuern — die Übergabe bleibt ein Copy-Paste durch dich. Optional dazu eine wöchentliche geplante Aufgabe „CEO-Runde" (Status lesen, Fristen prüfen, 3 Prioritäten vorschlagen) als Cloud-Lauf.
**Ergänzt 22.08. (dein Einfall):** Der Leitstand empfiehlt zu jedem Arbeitsauftrag auch **Modell und Aufwand als Spanne** (`Stufe: min Sonnet hoch – max Opus mittel`) nach `werkzeuge/arbeitsteilung.md` — Untergrenze Qualitätsminimum, Obergrenze Kostendeckel. Das Übergabe-Ritual (28) macht das im Kickoff-Prompt bereits. Zweiter Nachtrag 22.08.: I-27 im Ideenregister skizziert, wie der Leitstand mehrere
anstehende Aufgaben zusammen bewerten, nach Stufe bündeln und kontingentintensive Teile
an den Schichtdienst weiterreichen könnte — noch offen, ob der Mehraufwand sich lohnt.
**Vorteile:** Ein einziger Eingang statt sieben Orten, an denen Neues verloren gehen kann; erzwingt Pflegeregel 7 nebenbei; passt exakt zu deinem Registersystem; die Delegations-Aufträge machen neue Chats sofort produktiv — jetzt inklusive Kostenrahmen.
**Nachteile:** Der Leitstand-Chat selbst wächst und muss gelegentlich neu aufgesetzt werden (mit 5 unproblematisch); Delegation bleibt halbautomatisch; die wöchentliche Runde kostet Kontingent. Kostenlos.

### 26 · Einmalige Aufräum- und Abgleichaktion „Konto, Gedächtnis, Register" ◐ *(Doku-Teile umgesetzt 22.08.: P-36/P-37 registriert, Klappenscharniere im Status verankert, `technik/cad-modellstand.md` widerspruchsfrei, Ordnertabelle ergänzt, `rucola-qualitaet.md` auf Stub reduziert. **Nur von Hand bleiben:** 7 leere Chats + FreeCAD-Troubleshooting-Chat löschen, Projektgedächtnis korrigieren/zurücksetzen, `manifest/`-Ordner und die Stub-Dateien löschen)*

Ein gebündelter Durchgang, der die Befunde B1, B3, B4 und B8 abarbeitet: die 7 leeren Chats löschen; den erledigten FreeCAD-Troubleshooting-Chat nach Doku-Check schließen/löschen (sein Gehalt steckt in `werkzeuge/freecad-mcp-setup.md`); die lokale Karteileiche `anbau/rucola-qualitaet.md` entfernen; das Projektgedächtnis auf den 21.08.-Stand korrigieren (oder zurücksetzen und neu aufbauen lassen); „Klappenscharniere" als offenen Punkt und Bestellquote/Traypreis als Annahmen P-36/P-37 ins Problemregister; die internen Widersprüche in `technik/cad-modellstand.md` (Wanne, Maße, Abschnitt 7) nachziehen; die Ordnertabelle in `00-Uebersicht.md` um `berichte/`, `uebergabe/` und `manifest/` ergänzen (der `manifest/`-Ordner mit dem Konto-Export kann nach dieser Analyse auch ganz weg — er enthält private Chats aller Projekte und gehört nicht dauerhaft in den Projektordner). Die Doku-Teile übernehme ich direkt, sobald du freigibst.
**Vorteile:** Konto und Ablage stimmen danach wieder mit der Wirklichkeit überein; verhindert, dass neue Chats Altwissen erben; kleine Lücken werden geschlossen, bevor sie teuer werden.
**Nachteile:** Einmalig ~30–45 Minuten gemeinsamer Aufwand (Chat-Löschen und Gedächtnis-Ansicht gehen nur bei dir). Kostenlos.

### 27 · Grafana + InfluxDB für Sensordaten (später, mit V2-Steuerung)

Freies, selbst gehostetes Dashboard-Paar für Zeitreihen: Sobald die Firmware loggt (Schritt 7: „Logging alle 15 min"), werden daraus Kurven für Temperatur, Feuchte, Bewässerungszyklen je Modul — die Datengrundlage für deine Stressrezepturen und das Schaubild, das du Küchenchefs und Juroren zeigst. Der Technik-Chat hatte das bereits für diesen Moment vorgemerkt.
**Vorteile:** Kostenlos (läuft auf einem Raspberry Pi aus P-01); macht aus Logzahlen Beweismaterial — „reproduzierbare Qualität" wird sichtbar; Standardwerkzeug, viel Dokumentation.
**Nachteile:** Einrichtung und Betrieb sind echte Bastelstunden (~3–5 h); vor funktionierender Firmware sinnlos — klarer „später"-Punkt hinter 11.

### 28 · Eigener Skill „Chat-Übergabe" ✓ *(gebaut und getestet 22.08.; von William gespeichert, aktiv)*

Ein kleiner Skill, der dein Übergabepaket vom 22.08. zum Standard macht: Auf Zuruf am Ende eines Chats oder einer Session („Übergabe") erzeugt Claude immer dasselbe Format — zuerst die Ergebnis-Sicherung in die Ablage (Pflegeregel 7: Befunde in den Status, Offenes mit ID ins Register), dann ein kurzes Übergabedokument nach dem Muster deiner `uebergabe/00-LIESMICH.md` (Kurzfassung für den Einstieg, Entscheidungen mit Befund-Nummern, offene Punkte, Werkzeug-/Makro-Hinweise, empfohlene Lesereihenfolge) und einen fertigen Kickoff-Prompt für die Nachfolge-Session. Ehrliche Grenze: Den *vollständigen* Rohverlauf mit ausgeklappten Werkzeugpanels kann nur eine Cowork-Session über ihre eigene Sitzung erzeugen — im normalen Chat liefert der Skill die Zusammenfassungs-Übergabe, nicht das HTML-Archiv.
**Vorteile:** Macht Vorschlag 2 (Abschlussritual) und 25 (Delegation) zum Ein-Wort-Befehl; das Format ist bereits erprobt — der Skill konserviert es nur; wirkt in Chat und Cowork gleichermaßen; verhindert genau die Lücken aus Befund B1 (offene Punkte, die nur in Statuszeilen leben).
**Nachteile:** Einmalig ~1 h Erstellung (ich baue ihn dir auf Zuruf); überschneidet sich mit Skill 12 — wer beide will, sollte sie zusammen entwerfen (Übergabe als Teil der Ablage-Pflege), sonst zwei Skills mit ähnlichem Auftrag. Kostenlos.

---

### 29 · Schichtdienst-Warteschlange ✓ *(eingerichtet 22.08. — dein Auftrag; noch am selben Tag zeitneutral umbenannt: Zeit einstellbar, auf Abruf startbar, Datei jetzt `werkzeuge/schicht-auftraege.md`)*

Eine tägliche geplante Aufgabe (~03:00, Cloud, Push-Meldung morgens) arbeitet die Warteschlange `werkzeuge/nachtschicht-auftraege.md` ab: rückfragefreie, token-intensive Aufträge — Recherche, Rechnung, Dokumentation — nach den Pflegeregeln direkt in die Projektablage, maximal ein großer oder zwei kleine je Nacht, mit harten Grenzen (keine Bestellungen, Anmeldungen, Kontakte). Startbestückung: A-01 Laufrollen (P-21), A-02 Pumpen (P-12/13), A-03 Bodengefälle-Rechnung (P-06), A-04 Saatgut-Bezugsquellen, A-05 Schaumglas (P-25).
**Vorteile:** Kontingent wird verbraucht, während niemand wartet, und ist morgens wieder frei; die Warteschlange macht Nachtarbeit steuerbar (du sortierst per Datei); Ergebnisse kommen registerkonform an.
**Nachteile:** Kein Zugriff auf den lokalen Ordner (Spiegel muss nachgezogen werden); eine leere Warteschlange macht die Aufgabe zum Leerlauf-Tick — nachfüllen gehört zur Leitstand-Routine (25).

## Wenn du wenig Zeit hast

Was jetzt noch offen ist: **26-Rest** (Chats löschen/umbenennen, Gedächtnis korrigieren — inkl. des bestätigt falschen uv-Eintrags —, `manifest/` und Stubs weg), **20** (git init nach `werkzeuge/git-einrichtung.md`, 10 min), **6** (Cowork-Projekt anlegen). Bewusst später: 8 (nur mit M365), 11, 15, 19, 22, 23, 27. *(Erledigt: 1, 2, 3, 4, 5, 7, 9, 10, 12, 13, 14, 17, 18, 24, 25, 28, 29 — vorbereitet: 16, 20, 26.)*

*Rückmeldung weiter einfach per Nummer — für die gewählten Punkte gibt es je nach Wunsch eine Anleitung, oder ich richte sie direkt ein, soweit das aus Cowork heraus geht. Die CAD-Session ist über den Ordner `uebergabe/` inzwischen vollständig gegengelesen (Befund B9).*

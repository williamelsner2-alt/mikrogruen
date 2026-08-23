# Git-Einrichtung für den Arbeitsordner

*Stand: 23.08.2026 · **eingerichtet und erst-gepusht am 22./23.08.2026 ✓** (Audit-Vorschlag 20; FCBak-Teil von Vorschlag 4 ebenfalls erledigt) · Ausbaustufe: I-25 (Git-Brücke für Cloud-Sessions) · das Sichern nach jedem Arbeitsstand übernimmt seit 23.08. die Automatik aus `werkzeuge/auto-sicherung.md` — von Hand nur noch für benannte Meilensteine*
*Nachbardokumente: `projekt/03-probleme.md` P-32 · `projekt/04-ideen.md` I-25 · `berichte/workflow-audit-v2-2026-08-22.md` (Vorschläge 4, 20, 21)*

**Was schon erledigt ist (22.08., aus Cowork):** Eine `.gitignore` liegt im Ordner
`Desktop\Claude\mikrogruen\` bereit — sie schließt `.FCBak`-Sicherungskopien, den
`_alt_2026-08-19`-Ordner und den `manifest/`-Export aus, bevor je ein Commit passiert.

**Was nur am Rechner geht** (Cowork hat keine Shell auf dem Gerät): die drei Schritte unten.
Einmalig, zusammen unter zehn Minuten.

---

## 1. Git installieren (falls nicht vorhanden)

`winget install --id Git.Git` in der PowerShell — oder der Installer von git-scm.com mit
Standardeinstellungen. Danach **einmalig Name und E-Mail setzen** — ohne sie verweigert Git
jeden Commit („Please tell me who you are"):

```
git config --global user.name "William Elsner"
git config --global user.email "williamelsner2@gmail.com"
```

*(Die E-Mail steht danach in den Commit-Metadaten — im privaten Repository unkritisch; wer sie
nicht dort will, trägt stattdessen die GitHub-„noreply"-Adresse ein: Settings → Emails.)*

## 2. Repository anlegen

```
cd $env:USERPROFILE\Desktop\Claude\mikrogruen
git init
git branch -M main
git add .
git commit -m "Erster Stand: Projektablage-Spiegel vom 22.08.2026"
```

*(Das `git branch -M main` fehlte in der ersten Fassung dieser Anleitung — ohne dieses Kommando
heißt der Branch je nach Git-Konfiguration `master`, und der Push von `main` scheitert mit
„failed to push some refs". Genau so am 22.08. passiert und behoben.)*

Damit ist jeder künftige Arbeitsstand als benannter Schnappschuss sicherbar
(`git add . && git commit -m "…"`) und jeder frühere Stand wiederherstellbar. Die
FCStd- und xlsx-Dateien sind Binärdateien: Historie ja, inhaltlicher Vergleich nein —
das war im Audit als Grenze benannt und ist in Ordnung.

## 3. Privates GitHub-Repository als Off-Site-Sicherung (empfohlen, optional)

Auf github.com ein **privates** Repository `mikrogruen` anlegen (**ohne** README — sonst hat
das Repository schon einen Commit und der erste Push wird abgelehnt).

> **Achtung, häufigster Stolperstein:** GitHub zeigt nach dem Anlegen die fertige URL des
> Repositories an (`https://github.com/…/mikrogruen.git`). **Diese anzeigte URL kopieren** und
> im Befehl unten einsetzen — nie einen Platzhalter aus einer Anleitung wörtlich übernehmen.
> Genau das ist am 22.08. passiert: `<benutzername>` landete unverändert in der Remote-URL,
> der Push scheiterte mit „error: 400".

```
git remote add origin <hier die von GitHub angezeigte URL einsetzen>
git remote -v
git push -u origin main
```

Das `git remote -v` dazwischen ist die Kontrolle: Dort muss die echte URL stehen, ohne spitze
Klammern. Beim ersten erfolgreichen Push öffnet sich in der Regel ein Anmeldefenster
(Git Credential Manager → „Sign in with your browser"); nach einmaliger GitHub-Anmeldung merkt
Windows die Zugangsdaten.

**Wenn der Push scheitert:** „src refspec main does not match any" heißt: **es gibt noch
keinen Commit** — meist, weil `git commit` mangels gesetzter Identität scheiterte (Abhilfe:
`git config` wie in Schritt 1, dann `git add .` und `git commit` wiederholen; `git status` mit
„No commits yet" bestätigt den Fall — am 22.08. genau so passiert). `git branch` zeigt, ob der
Branch wirklich `main` heißt (sonst: `git branch -M main`); `git remote -v` zeigt, ob die URL
stimmt (sonst: `git remote set-url origin <richtige URL>`) — **„The requested URL returned error: 400"
bedeutet fast immer eine unsinnige URL, typischerweise ein wörtlich übernommener Platzhalter**;
steht in der Meldung „Updates were rejected", wurde das Repository doch mit README angelegt —
dann `git pull origin main --allow-unrelated-histories` und erneut pushen.

**„remote: Repository not found" bei einem privaten Repository** heißt fast nie „gelöscht",
sondern **nicht angemeldet oder falsches Konto**: GitHub verbirgt private Repositories vor
Unbefugten und meldet sie als nicht vorhanden statt „kein Zugriff". Prüfung in dieser
Reihenfolge: (1) die URL im Browser öffnen — lädt die Seite, während man bei GitHub angemeldet
ist, stimmt sie und es ist ein Anmeldeproblem; (2) Windows-Anmeldeinformationsverwaltung öffnen
(`control /name Microsoft.CredentialManager` → Windows-Anmeldeinformationen), Eintrag
`git:https://github.com` entfernen, erneut pushen — dann erscheint das Anmeldefenster neu
(existiert der Eintrag gar nicht, gab es schlicht noch nie eine erfolgreiche Anmeldung: einfach
erneut pushen, das Anmeldefenster öffnet sich von selbst — genau so am 23.08. gelöst);
(3) lädt die Seite nicht, stimmt Benutzername oder Repository-Name nicht — echte URL von der
GitHub-Seite kopieren und `git remote set-url origin …` setzen.

**Reihenfolge der Fehler ist selbst eine Information:** Kommt die Meldung vom Netzwerk (URL,
Anmeldung), ist der lokale Teil — Commit und Branch — bereits in Ordnung.

Ab dann genügt nach jedem Commit ein `git push` — und seit dem 23.08. übernimmt das die
automatische Sicherung (`werkzeuge/auto-sicherung.md`), sodass Commit und Push von selbst
passieren. Das ist zugleich das Fundament für I-25: Sobald das
Repository online liegt, kann später auch eine Cloud-Session (Schichtdienst) den Stand ziehen —
die sichere Ablage der Zugangsdaten für unbeaufsichtigte Läufe ist dort der noch offene Punkt
und wird **nicht** jetzt eingerichtet.

---

## Dazu gehört (Vorschlag 4, Rest)

- **FreeCAD auf eine Sicherungskopie begrenzen:** ✓ erledigt — steht bereits auf 1 (von
  William am 22.08. bestätigt; P-32 damit gelöst).
- **`_alt_2026-08-19/` bekommt mit dem ersten Commit sein Verfallsdatum:** Sobald der erste
  Git-Stand steht, übernimmt die Historie die Aufgabe des Ordners — er kann danach gelöscht
  werden (liegt ohnehin in der `.gitignore`).
- **Vorschlag 21 (FreeFileSync) entfällt damit als Doppelung** — das Audit hat beide als
  Alternativen beschrieben; wer Git einrichtet, braucht die zweite Lösung nicht.

## Führungsregel bleibt unverändert

Die **Projektablage führt** (`00-Uebersicht.md`). Git versioniert den Spiegel und alles, was
nur lokal existiert (CAD, Makros, Exporte) — es ersetzt nicht die Ablage als Quelle der
Wahrheit. Läuft der Ordner auseinander, wird er aus dem Projekt neu befüllt; Git macht diesen
Moment nachvollziehbar, mehr nicht.

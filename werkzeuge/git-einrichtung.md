# Git-Einrichtung für den Arbeitsordner

*Stand: 22.08.2026 · bereitet Audit-Vorschlag 20 vor (und den FCBak-Teil von Vorschlag 4); Ausbaustufe: I-25 (Git-Brücke für Cloud-Sessions)*
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
das Repository schon einen Commit und der erste Push wird abgelehnt), dann — `DEIN-GITHUB-NAME`
durch den echten GitHub-Benutzernamen ersetzen, nicht wörtlich übernehmen:

```
git remote add origin https://github.com/DEIN-GITHUB-NAME/mikrogruen.git
git push -u origin main
```

**Wenn der Push scheitert:** „src refspec main does not match any" heißt: **es gibt noch
keinen Commit** — meist, weil `git commit` mangels gesetzter Identität scheiterte (Abhilfe:
`git config` wie in Schritt 1, dann `git add .` und `git commit` wiederholen; `git status` mit
„No commits yet" bestätigt den Fall — am 22.08. genau so passiert). `git branch` zeigt, ob der
Branch wirklich `main` heißt (sonst: `git branch -M main`); `git remote -v` zeigt, ob die URL
stimmt (sonst: `git remote set-url origin <richtige URL>`); steht in der Meldung „Updates were
rejected", wurde das Repository doch mit README angelegt — dann
`git pull origin main --allow-unrelated-histories` und erneut pushen.

Ab dann genügt nach jedem Commit ein `git push`. Das ist das Fundament für I-25: Sobald das
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

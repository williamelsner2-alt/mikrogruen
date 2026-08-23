@echo off
REM Startet die Auto-Sicherung. Wird von der geplanten Aufgabe aufgerufen -
REM und kann jederzeit per Doppelklick fuer eine Sofort-Sicherung benutzt werden.
powershell.exe -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "C:\Users\Arbeit\Desktop\Claude\mikrogruen\werkzeuge\git-autosicherung.ps1" -Ordner "C:\Users\Arbeit\Desktop\Claude\mikrogruen"

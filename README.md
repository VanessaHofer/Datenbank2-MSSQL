MSSQL Docker Image
==================

Das Image basiert auf einem etwas erweiterten MSSQL Image.
Da das Standard-Image von Microsoft, den Ordner /docker-entrypoing-initdb beim ersten Starten nicht automatisch ausführt, habe ich mich für diese Version entschieden.

https://github.com/horizoncrafts/docker-mssql-with-initdb


## Besonderheiten gegenüber Oracle
Ein grosser Teil der Skripts musste nur minimal angepasst werden. 
Ein grosser Unterschied ist mir vorallem beim Umgang mit den Datums und Zeitformaten aufgefallen, sowie beim erstellen und Berechtigen der Benutzer.

## Image auf einem anderen Rechner ausführen
Damit das von mir veröffentlichte Image verwendet werden kann, muss folgender Befehl ausgeführt werden:
docker run -d -p 1433:1433 --name my-sql-container ghcr.io/VanessaHofer/Datenbank2-MSSQL:DB2


## Image Build

1. Die Daten vom Github-Repo auf den gewünschten Speicherpfad herunterladen und entpacken
2. Mit dem Terminal/CMD in den Entpackten Ordner navigieren (z.B. cd C:\Users\Vanessa\Documents\Datenbank_SQL_Image>)
3. Danach wird das Image gebildet: docker build -t mssql-image . (Hierbei kann mssql-image mit dem eigenen gewünschten Namen ersetz werden.)
4. Einen Dockercontainer mit dem erstellten Image starten:  docker run -d -p 1433:1433 --name datenbank2 mssql-image (Datenbank2 kann mit einem eigenen Namen ersetz werden.)

Somit läuft nun ein Dockercontainer mit den beiden Datenbanken Scott und Verein. 
Die im Modul vorbereiteten Daten werden ebenfalls in die Datenbank abgefüllt.

### DB-User
Ich habe mich bei diesem Projekt auf folgende Benutzer beschränkt.
Falls noch mehr erstellt werden möchten, können diese im Skript 01_setup_users.sql entsprechend angefügt werden.

| User | Passwort | Datenbank
| --- | --- | --- |
| sa | Datenbank2MSSQL$ | Alle|
| scott | tiger22$ | SCOTT|
| verein | tiger22$ | VEREIN|

## Starten und Verbinden der Datenbank
Ich habe mich zum Verbinden auf die Datenbank für das SQL Typische SQL Server Management Studio 19 entschieden.
Dabei müssen folgende Informationen angegeben werden:
Servername: localhost
Authentifizierung: SQL-Server-Authentifizierung
Anmeldename: sa (oder ein anderer gewünschter SQL-Login analog der oberen Tabelle)
Passwort: Zum Benutzer gehörendes Passwort

Falls lieber über das Terminal gearbeitet wird, können die sqlcmd-tools installiert und in die Umgebungsvariablen aufgenommen werden.
Wichtig ist auch in diesem Fall die Portweiterleitung zu beachten.
Danach kann mithilfe von folgendem Pfad auf die Datenbank per Terminal zugegriffen werden:
sqlcmd -S <ServerName> -U <Benutzername> -P <Passwort> -d <Datenbankname>

Ich persönlich empfehle hierbei aber das SQL Server Management Studio.

## Speicherung
Die Daten wurden in meinem Beispiel im Standardordner erstellt.
Wenn es gewünscht ist, dass die Daten einfach von einem Container zum nächsten migriert werden können, muss mithilfe von eigenen Partitionen gearbeitet werden.
In diesem Fall kann ein Speicherort definiert werden und die Daten können gemountet und somit auch leichter migriert werden.

## Zusammenfassung

Die Grundlage für meine Arbeit haben in diesem Fall die zur Verfügung gestellten Daten vom Datenbank1 und Datenbank 2 Modul gebildet.
Diese Skripts waren auf eine Oracle Datenbank ausgelegt, daher musste ich diese zu beginn umschreiben, damit sie vom SQL interpretiert werden konnten.

Nach diesem Schritt habe ich ein Docker SQL Image gesucht.
Dieses war im Prinzip schnell gefunden, hat aber in diesem Fall die Dateien im Ordner /docker-entrypoing-initdb nicht automatisch beim ersten Start ausgeführt.
Diverse Ansätze waren vorhanden, diesen mechanismus selbst umzusetzen, was leier nicht ganz wie gewollt geklappt hat.
Nach einer weiteren gründlichen Suche, bin ich schliesslich auf das nun gewählte Image gestossen, womit es nun auch funktioniert.

Das Image / die Datenbank ist nun so aufgesetzt, dass unsere Übungsabfragen mit dieser Instanz durchgeführt werden können
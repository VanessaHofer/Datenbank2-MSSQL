/*================================================*/
/* Datenbanken II                                 */
/* Vereinsdatenbank                               */
/* Beispieldaten                                  */
/*================================================*/
USE vereinuser; -- Wechsel zur Datenbank 'vereinuser'

--
-- --------------
-- table FUNKTION
-- --------------
--

INSERT INTO Funktion 
(FunkID, Bezeichner) 
VALUES (1, 'Praesidium');

INSERT INTO Funktion 
(FunkID, Bezeichner) 
VALUES (2, 'Vizepraesidium');

INSERT INTO Funktion 
(FunkID, Bezeichner) 
VALUES (3, 'Kasse');

INSERT INTO Funktion 
(FunkID, Bezeichner) 
VALUES (4, 'Beisitz');

INSERT INTO Funktion 
(FunkID, Bezeichner) 
VALUES (5, 'PR');

--
--
-- -------------
-- table SPONSOR
-- -------------
--
INSERT INTO sponsor 
       (sponid, name, strasse_nr, plz, ort, spendentotal)
VALUES (1, 'Hasler AG', 'Zelgweg 9', '2540',
        'Grenchen', 1270);
--
INSERT INTO sponsor 
       (sponid, name, strasse_nr, plz, ort, spendentotal)
VALUES (2, 'Pauker Druck', 'Solothurnstr. 19', '2544',
        'Bettlach',2750);
--
INSERT INTO sponsor 
       (sponid, name, strasse_nr, plz, ort, spendentotal)
VALUES (3, 'Meyer Toni', 'Rothstr. 22', '4500',
        'Solothurn',750);
--
--
-- ------------
-- table STATUS
-- ------------
--
INSERT INTO status 
       (statid, bezeichner, beitrag)
VALUES (1, 'Junior', 0);
--
INSERT INTO status
       (statid, bezeichner, beitrag)
VALUES (2, 'Aktiv', 50);
--
INSERT INTO status
       (statid, bezeichner, beitrag)
VALUES (3, 'Ehemalig', null);
--       
INSERT INTO status
       (statid, bezeichner, beitrag)
VALUES (4, 'Passiv', 30);
--
INSERT INTO status
       (statid, bezeichner, beitrag)
VALUES (5, 'Helfer', null);
--
INSERT INTO status
       (statid, bezeichner, beitrag)
VALUES (6, 'Extern', null);
--
--
-- ------------
-- table PERSON
-- ------------
--
INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (1, 3, 'Niiranen', 'Ulla', 'Nordstr. 113', '2500', 'Biel', '1', NULL, '2007-11-11', '2011-03-31', NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (2, 3, 'Wendel', 'Otto', 'Sigriststr. 9', '4500', 'Solothurn', '1', NULL, '2011-01-01', '2014-11-30', NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (3, 2, 'Meyer', 'Dominik', 'Rainstr. 13', '4528', 'Zuchwil', '1', NULL, '2011-01-01', NULL, NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (4, 2, 'Meyer', 'Petra', 'Rainstr. 13', '4528', 'Zuchwil', '1', NULL, '2009-02-15', NULL, NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (5, 2, 'Tamburino', 'Mario', 'Solothurnstr. 96', '2540', 'Grenchen', '0', NULL, '2014-09-30', NULL, 4);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (6, 2, 'Bregger', 'Beni', 'Sportstr. 2', '2540', 'Grenchen', '1', NULL, '2012-05-21', NULL, 4);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (7, 5, 'Luder', 'Kevin', 'Forstweg 14', '2545', 'Zuchwil', '1', 'Klaushock', NULL, NULL, NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (8, 6, 'Frei', 'Barbara', 'Gartenstr.1', '2540', 'Grenchen', '1', NULL, NULL, NULL, NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (9, 6, 'Huber', 'Felix', 'Eichmatt 7', '2545', 'Selzach', '1', NULL, NULL, NULL, NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (10, 1, 'Cadola', 'Leo', 'Sportstr. 2', '4500', 'Solothurn', '1', NULL, '2013-10-01', NULL, NULL);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (11, 1, 'Bart', 'Sabine', 'Bernstr. 15', '2540', 'Grenchen', '1', NULL, '2014-07-12', NULL, 10);

INSERT INTO Person 
(PersID, StatID, Name, Vorname, Strasse_Nr, PLZ, Ort, Bezahlt, Bemerkungen, Eintritt, Austritt, MentorID)
VALUES (12, 2, 'Gruber', 'Romy', 'Gladbaechli 3', '2545', 'Selzach', '0', NULL, '2009-11-29', NULL, NULL);

--
--
-- ------------
-- table Anlass
-- ------------
--
INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (1, 'GV', 'Solothurn', '2013-03-31', 200, 2);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (2, 'Vorstandssitzung', 'Grenchen', '2014-01-17', NULL, 12);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (3, 'GV', 'Bettlach', '2013-03-30', 200, 6);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (4, 'Klaushock', 'Bettlach', '2014-12-06', 150, 7);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (5, 'Vorstandssitzung', 'Grenchen', '2015-01-21', NULL, 12);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (6, 'Turnier', 'Biel', '2014-02-28', 1020, 10);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (7, 'GV', 'Grenchenberg', '2015-03-29', 250, 4);

INSERT INTO Anlass
       (AnlaID, Bezeichner, Ort, Datum, Kosten, OrgID)
VALUES (8, 'Vorstandssitzung', 'Grenchen', '2015-01-19', NULL, 6);


--
--
-- ------------
-- table SPENDE
-- ------------
--
INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (1, 5, 6, 'Apéro', '2015-02-02', 720);

INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (1, 6, NULL, 'Defizittilgung', '2015-04-13', 550);

INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (2, 3, 7, 'Getränke', '2015-03-05', 600);

INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (2, 4, 6, 'Plakate', '2015-03-11', 300);

INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (2, 5, NULL, 'Defizittilgung', '2015-04-13', 750);

INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (3, 1, 4, 'Glühwein', '2014-11-29', 200);

INSERT INTO Spende 
(SponID, SpenID, AnlaID, Bezeichner, Datum, Betrag)
VALUES (3, 2, 7, 'Unterhaltungsmusik', '2015-02-23', 550);
--
--
-- ----------------
-- table TEILNEHMER
-- ----------------
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (3, 1);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (4, 1);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (6, 1);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (12, 1);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (2, 2);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (3, 2);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (4, 2);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (2, 3);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (4, 3);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (6, 3);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (12, 3);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (3, 5);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (12, 5);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (2, 7);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (3, 7);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (6, 7);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (4, 8);
--
INSERT INTO teilnehmer
       (persid, anlaid)
VALUES (12, 8);
--
--
-- --------------------
-- table SPONSORENKONTAKT
-- --------------------
--
INSERT INTO sponsorenkontakt
       (persid, sponid)
VALUES (8, 1);
--
INSERT INTO sponsorenkontakt
       (persid, sponid)
VALUES (4, 2);
--
INSERT INTO sponsorenkontakt
       (persid, sponid)
VALUES (9, 2);
--
INSERT INTO sponsorenkontakt
       (persid, sponid)
VALUES (3, 3);
--
INSERT INTO sponsorenkontakt
       (persid, sponid)
VALUES (4, 3);
--
--
-- ------------------------
-- table FUNKTIONSBESETZUNG
-- ------------------------
--
INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (1, 1, '2007-11-11', '2010-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (4, 2, '2009-04-01', '2011-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (12, 1, '2010-04-01', '2011-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (4, 1, '2011-04-01', '2013-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (12, 2, '2011-04-01', '2012-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (2, 3, '2011-04-01', '2013-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (3, 2, '2012-04-01', '2013-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (12, 1, '2012-04-01', NULL);

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (6, 3, '2013-04-01', '2014-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (3, 4, '2013-04-01', '2015-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (4, 5, '2013-04-01', '2014-03-31');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (6, 2, '2014-04-01', '2029-04-30');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (4, 4, '2014-04-01', NULL);

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (2, 5, '2014-04-01', '2028-11-30');

INSERT INTO Funktionsbesetzung 
       (PersID, FunkID, Antritt, Ruecktritt)
VALUES (3, 3, '2014-08-01', NULL);
--
--
--
-- ==================================
-- Eintraege definitiv in DB speichern
-- ==================================
--
COMMIT;
--
--
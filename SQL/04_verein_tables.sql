/*================================================*/
/* Datenbanken II                                 */
/* Vereinsdatenbank                               */
/* Schemen  erzeugen                              */
/*================================================*/

USE vereinuser; -- Wechsel zur Datenbank 'vereinuser'

-- Erstellung der Tabelle 'Anlass'
CREATE TABLE Anlass
(
    AnlaID     INT NOT NULL PRIMARY KEY,
    Bezeichner NVARCHAR(20) NOT NULL,
    Ort        NVARCHAR(20),
    Datum      DATE NOT NULL,
    Kosten     DECIMAL(8,2),
    OrgID      INT NOT NULL,
    CONSTRAINT chk_kosten CHECK (Kosten IS NULL OR Kosten >= 0)
);

CREATE TABLE Funktion
(
    FunkID     INT NOT NULL PRIMARY KEY,
    Bezeichner NVARCHAR(20) NOT NULL
);

CREATE TABLE Funktionsbesetzung
(
    Antritt    DATE NOT NULL,
    Ruecktritt DATE,
    FunkID     INT NOT NULL,
    PersID     INT NOT NULL,
    CONSTRAINT chk_ruecktritt CHECK (Antritt <= Ruecktritt OR Ruecktritt IS NULL),
    CONSTRAINT Funktionsbesetzung_PK PRIMARY KEY (FunkID, PersID, Antritt)
);


CREATE TABLE Person
(
    PersID      INT NOT NULL PRIMARY KEY,
    Name        NVARCHAR(20) NOT NULL,
    Vorname     NVARCHAR(15) NOT NULL,
    Strasse_Nr  NVARCHAR(20) NOT NULL,
    PLZ         CHAR(4) NOT NULL,
    Ort         NVARCHAR(20) NOT NULL,
    bezahlt     CHAR(1) NOT NULL,
    Bemerkungen NVARCHAR(25),
    Eintritt    DATE,
    Austritt    DATE,
    StatID      INT NOT NULL,
    MentorID    INT,
    CONSTRAINT chk_austritt CHECK ((Eintritt <= Austritt OR Austritt IS NULL) OR (Eintritt IS NULL AND Austritt IS NULL)),
);


CREATE TABLE Spende
(
    SpenID     INT NOT NULL,
    Bezeichner NVARCHAR(20),
    Datum      DATE DEFAULT GETDATE() NOT NULL,
    Betrag     DECIMAL(8,2) NOT NULL,
    SponID     INT NOT NULL,
    AnlaID     INT,
    CONSTRAINT Spende_PK PRIMARY KEY (SpenID, SponID)
);


CREATE TABLE Sponsor
(
    SponID       INT NOT NULL PRIMARY KEY,
    Name         NVARCHAR(20) NOT NULL,
    Strasse_Nr   NVARCHAR(20) NOT NULL,
    PLZ          CHAR(4) NOT NULL,
    Ort          NVARCHAR(20) NOT NULL,
    Spendentotal DECIMAL(8,2) NOT NULL
);


CREATE TABLE Sponsorenkontakt
(
    PersID INT NOT NULL,
    SponID INT NOT NULL,
    CONSTRAINT Sponsorenkontakt_PK PRIMARY KEY (PersID, SponID)
);


CREATE TABLE Status
(
    StatID     INT NOT NULL PRIMARY KEY,
    Bezeichner NVARCHAR(20) NOT NULL,
    Beitrag    DECIMAL(5,2),
    CONSTRAINT chk_beitrag_status CHECK (Beitrag IS NULL OR Beitrag >= 0)
);


CREATE TABLE Teilnehmer
(
    PersID INT NOT NULL,
    AnlaID INT NOT NULL,
    CONSTRAINT Teilnehmer_PK PRIMARY KEY (PersID, AnlaID)
);

-- Fremdschlüssel für Tabelle 'Anlass'
ALTER TABLE Anlass
ADD CONSTRAINT Anlass_Person_FK FOREIGN KEY (OrgID)
REFERENCES Person(PersID);

-- Fremdschlüssel für Tabelle 'Sponsorenkontakt'
ALTER TABLE Sponsorenkontakt
ADD CONSTRAINT FK_SPONK_PERSON FOREIGN KEY (PersID)
REFERENCES Person(PersID);

ALTER TABLE Sponsorenkontakt
ADD CONSTRAINT FK_SPONK_SPONSOR FOREIGN KEY (SponID)
REFERENCES Sponsor(SponID);

-- Fremdschlüssel für Tabelle 'Teilnehmer'
ALTER TABLE Teilnehmer
ADD CONSTRAINT FK_TEILN_ANLASS FOREIGN KEY (AnlaID)
REFERENCES Anlass(AnlaID);

ALTER TABLE Teilnehmer
ADD CONSTRAINT FK_TEILN_PERSON FOREIGN KEY (PersID)
REFERENCES Person(PersID);

-- Fremdschlüssel für Tabelle 'Funktionsbesetzung'
ALTER TABLE Funktionsbesetzung
ADD CONSTRAINT Funktionsbesetzung_Funktion_FK FOREIGN KEY (FunkID)
REFERENCES Funktion(FunkID);

ALTER TABLE Funktionsbesetzung
ADD CONSTRAINT Funktionsbesetzung_Person_FK FOREIGN KEY (PersID)
REFERENCES Person(PersID);

-- Fremdschlüssel für Tabelle 'Person'
ALTER TABLE Person
ADD CONSTRAINT Person_Person_FK FOREIGN KEY (MentorID)
REFERENCES Person(PersID);

ALTER TABLE Person
ADD CONSTRAINT Person_Status_FK FOREIGN KEY (StatID)
REFERENCES Status(StatID);

-- Fremdschlüssel für Tabelle 'Spende'
ALTER TABLE Spende
ADD CONSTRAINT Spende_Anlass_FK FOREIGN KEY (AnlaID)
REFERENCES Anlass(AnlaID);

ALTER TABLE Spende
ADD CONSTRAINT Spende_Sponsor_FK FOREIGN KEY (SponID)
REFERENCES Sponsor(SponID);

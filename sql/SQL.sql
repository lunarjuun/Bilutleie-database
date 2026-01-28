CREATE TABLE `Kunde` (
  `Kunde_ID` INT PRIMARY KEY,
  `Navn` VARCHAR(50),
  `Passord` VARCHAR(50),
  `Epost` VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE `Bil` (
  `Bil_ID` INT PRIMARY KEY,
  `Bil_Merke` VARCHAR(50),
  `Bil_Modell` VARCHAR(50),
  `Årsmodell` INT,
  `Dagspris` DECIMAL NOT NULL,
  `Registreringsnummer` VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE `Utleieavtale` (
  `Avtale_ID` INT PRIMARY KEY,
  `Kunde_ID` INT NOT NULL,
  `Bil_ID` INT NOT NULL,
  FOREIGN KEY (Kunde_ID) REFERENCES Kunde(Kunde_ID),
  FOREIGN KEY (Bil_ID) REFERENCES Bil(Bil_ID),
  `StartDato` DATE,
  `SluttDato` DATE,
  `Totalpris` DECIMAL NOT NULL,
);


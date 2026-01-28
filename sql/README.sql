CREATE TABLE `Kunde` (
  `Kunde_ID` PK INT,
  `Navn` VARCHAR,
  `Passord` VARCHAR,
  `Epost` VARCHAR UNIQUE NOT NULL
);

CREATE TABLE `Bil` (
  `Bil_ID` PK INT,
  `Bil_Merke` VARCHAR,
  `Bil_Modell` VARCHAR,
  `Årsmodell` INT,
  `Dagspris` DECIMAL NOT NULL,
  `Registreringsnummer` VARCHAR UNIQUE NOT NULL
);

CREATE TABLE `Utleieavtale` (
  `Avtale_ID` PK INT,
  `Kunde_ID` FK INT NOT NULL,
  `Bil_ID` FK INT NOT NULL,
  `StartDato` DATE,
  `SluttDato` DATE,
  `Totalpris` DECIMAL NOT NULL,
  FOREIGN KEY (`Kunde_ID`)
      REFERENCES `Kunde`(`Kunde_ID`),
  FOREIGN KEY (`Bil_ID`)
      REFERENCES `Bil`(`Bil_ID`)
);


use Biblioteka
--create database Biblioteka
--drop database Biblioteka
CREATE TABLE Adres (
	Adres_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Kraj VARCHAR(64),
	Miasto VARCHAR(64),
	Kod_pocztowy CHAR(6) CHECK (Kod_pocztowy like '[0-9][0-9]-[0-9][0-9][0-9]'),
	Ulica VARCHAR(64),
	Numer_budynku INT CHECK (Numer_budynku <= 1000),
	Numer_mieszkania CHAR(6)
);

CREATE TABLE Wydawca (
	Wydawca_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Adres_ID INT REFERENCES Adres ON DELETE CASCADE,
	Nazwa VARCHAR(128)
);

CREATE TABLE Ksiazka (
	Ksiazka_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Tytul VARCHAR(200)
);

CREATE TABLE Gatunek (
	Nazwa VARCHAR(30) NOT NULL PRIMARY KEY
);

CREATE TABLE Ksiazka_gatunek (
	Ksiazka_ID INT NOT NULL REFERENCES Ksiazka ON DELETE CASCADE,
	Gatunek_nazwa VARCHAR(30) NOT NULL REFERENCES Gatunek ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (Ksiazka_ID, Gatunek_nazwa)
);

CREATE TABLE Autor (
	Autor_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Imie VARCHAR(16),
	Nazwisko VARCHAR(32),
	Rok_urodzenia INT CHECK (Rok_urodzenia <= 9999),
	Narodowosc VARCHAR(32)
);

CREATE TABLE Wydanie (
	Wydanie_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Ksiazka_ID INT NOT NULL REFERENCES Ksiazka ON DELETE CASCADE,
	Wydawca_ID INT NOT NULL REFERENCES Wydawca ON DELETE CASCADE,
	ISBN CHAR(20),
	Rok INT CHECK (Rok < 10000 ),
	Liczba_stron INT CHECK (Liczba_stron < 1000000),
	Opis_ksiazki VARCHAR(2000)
);

CREATE TABLE Egzemplarz (
	Egzemplarz_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Wydanie_ID INT NOT NULL REFERENCES Wydanie ON DELETE CASCADE,
	Kwota_za_przekr_dzien FLOAT,
	Stan INT CHECK (Stan >0 AND Stan <=10),
	W_posiadaniu BIT,
	Data_dodania DATE
);

CREATE TABLE Czytelnik (
	Czytelnik_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Adres_ID INT NOT NULL REFERENCES Adres ON DELETE CASCADE,
	Imie  VARCHAR(16) NOT NULL,
	Nazwisko VARCHAR(32) NOT NULL,
	Data_urodzenia DATE,
	Numer_telefonu CHAR(11) NOT NULL CHECK (Numer_telefonu like '[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9]'),
	Email VARCHAR(100) CHECK (Email like '%@%')
);

CREATE TABLE Wypozyczenie (
	Wypozyczenie_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Czytelnik_ID INT NOT NULL REFERENCES Czytelnik,
	Egzemplarz_ID INT NOT NULL REFERENCES Egzemplarz,
	Data_wypozyczenia DATE,
	Do_kiedy DATE,
	Data_oddania DATE,
);

CREATE TABLE Kara (
	Kara_ID INT NOT NULL PRIMARY KEY IDENTITY,
	Wypozyczenie_ID INT NOT NULL REFERENCES Wypozyczenie ON DELETE CASCADE,
	Czy_zaplacona BIT,
);

CREATE TABLE Autor_ksiazka (
	Autor_ID INT NOT NULL REFERENCES Autor ON DELETE CASCADE,
	Ksiazka_ID INT NOT NULL REFERENCES Ksiazka ON DELETE CASCADE,
	PRIMARY KEY (Ksiazka_ID, Autor_ID),
);


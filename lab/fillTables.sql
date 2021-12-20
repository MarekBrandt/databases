use Biblioteka

INSERT INTO Adres VALUES ('Polska', 'Ko�cierzyna', '83-400', 'Wodna', 18,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ), 'Fabryka s��w');


INSERT INTO Adres VALUES ('Polska', 'Lublin', '20-834', 'Irysowa', 25,'a');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Fabryka s��w');
INSERT INTO Adres VALUES ('Polska', 'Pozna�', '61-311', '�uga�ska', 1,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Zysk i s-ka');
INSERT INTO Adres VALUES ('Polska', 'Warszawa', '02-972', 'Hlonda', 2,'a25');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Albatros');
INSERT INTO Adres VALUES ('Polska', 'P�ock', '11-281', 'Alfreda', 11,'c');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Jaguar');
INSERT INTO Adres VALUES ('Polska', 'Warszawa', '02-965', 'Towarowa', 1,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Altenberg');
INSERT INTO Adres VALUES ('Polska', 'Gda�sk', '38-400', 'Grunwaldzka', 120,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Helion');
INSERT INTO Adres VALUES ('Polska', 'Gda�sk', '39-400', 'Jesionowa', 18,'d20');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Greg');
INSERT INTO Adres VALUES ('Polska', 'Gda�sk', '39-400', 'Jesionowa', 18,'d21');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Gregus');
INSERT INTO Adres VALUES ('Polska', 'Wroc�aw', '12-400', 'Warszawska', 28,'1');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Papilon');
INSERT INTO Adres VALUES ('Polska', 'Grudzi�dz', '88-480', 'Jeziorna', 30,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Galaktyka');

INSERT INTO Adres (Kraj, Miasto, Kod_pocztowy, Ulica, Numer_budynku, Numer_mieszkania) VALUES	
		('Polska', 'Ko�cierzyna', '83-400', 'Wodna', 18,''), 
		('Polska', 'Gniewino', '15-240', 'Gniewna', 20, 'b'),
		('Polska', 'Sejny', '65-420', 'Litewska', 2, ''),
		('Polska', 'Lublin', '20-834', 'Irysowa', 25,'a'), 
		('Polska', 'Pozna�', '61-311', '�uga�ska', 1,''),
		('Polska', 'Warszawa', '02-972', 'Hlonda', 2,'a25'),
		('Polska', 'P�ock', '11-281', 'Alfreda', 11,'c'),
		('Polska', 'Warszawa', '02-965', 'Towarowa', 1,''),
		('Polska', 'Gda�sk', '38-400', 'Grunwaldzka', 120,''),
		('Polska', 'Gda�sk', '39-400', 'Jesionowa', 18,'d20'),
		('Polska', 'Wroc�aw', '12-400', 'Warszawska', 28,'1'),
		('Polska', 'Grudzi�dz', '88-480', 'Jeziorna', 30,'');



INSERT INTO Wydawca (Adres_ID, Nazwa) VALUES	
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '20-834' and Ulica = 'Irysowa' and Numer_budynku = 25 and Numer_mieszkania = 'a')), 'Fabryka s��w'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '61-311' and Ulica = '�uga�ska' and Numer_budynku = 1 and Numer_mieszkania = '')), 'Zysk i s-ka'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '02-972' and Ulica = 'Hlonda' and Numer_budynku = 2 and Numer_mieszkania = 'a25')), 'Albatros'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '11-281' and Ulica = 'Alfreda' and Numer_budynku = 11 and Numer_mieszkania = 'c')), 'Jaguar'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '02-965' and Ulica = 'Towarowa' and Numer_budynku = 1 and Numer_mieszkania = '')), 'Altenberg'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '38-400' and Ulica = 'Grunwaldzka' and Numer_budynku = 120 and Numer_mieszkania = '')), 'Helion'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '39-400' and Ulica = 'Jesionowa' and Numer_budynku = 18 and Numer_mieszkania = 'd20')), 'Greg'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '39-400' and Ulica = 'Jesionowa' and Numer_budynku = 18 and Numer_mieszkania = 'd21')), 'Gregus'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '12-400' and Ulica = 'Warszawska' and Numer_budynku = 28 and Numer_mieszkania = '1')), 'Papilon'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '88-480' and Ulica = 'Jeziorna' and Numer_budynku = 30 and Numer_mieszkania = '')), 'Galaktyka');

INSERT INTO Ksiazka (Tytul) VALUES 
			('Pan Lodowego Ogrodu 1'),
			('Jeszcze Kr�trsza Historia Czasu'),
			('Wielki Projekt'),
			('Dru�yna 6: Nieznany L�d'),
			('Pan Lodowego Ogrodu 2'),
			('Grama to nie drama'),
			('Achaja'),
			('Mroczna wie�a'),
			('Gra o tron'),
			('Uczta dla wron'),
			('Hobbit, podr� tam i z powrotem'),
			('Zwiadowcy 1'),
			('Kmieciowisko'),
			('Smolaris');

INSERT INTO Gatunek (Nazwa) VALUES	
			('Fantasy'),
			('Science fiction'),
			('Horror'),
			('Literatura popularnonaukowa'),
			('Belterystyka'),
			('Literatura m�odzie�owa'),
			('Powie�� przygodowa'),
			('Astronomia'),
			('Astrofizyka'),
			('J�zykoznastwo'),
			('J�zyk angielski');

INSERT INTO Ksiazka_gatunek (Ksiazka_ID, Gatunek_nazwa) VALUES	
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 1'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 1'),'Science fiction'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 1'),'Belterystyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Jeszcze Kr�trsza Historia Czasu'),'Literatura popularnonaukowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Jeszcze Kr�trsza Historia Czasu'),'Astronomia'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Jeszcze Kr�trsza Historia Czasu'),'Astrofizyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Wielki Projekt'),'Literatura popularnonaukowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Wielki Projekt'),'Astronomia'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Wielki Projekt'),'Astrofizyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Dru�yna 6: Nieznany L�d'),'Literatura m�odzie�owa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Dru�yna 6: Nieznany L�d'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 2'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 2'),'Science fiction'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 2'),'Belterystyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Grama to nie drama'),'Literatura popularnonaukowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Grama to nie drama'),'J�zykoznastwo'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Grama to nie drama'),'J�zyk angielski'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Achaja'),'Belterystyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Achaja'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Achaja'),'Powie�� przygodowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Mroczna wie�a'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Mroczna wie�a'),'Horror'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Gra o tron'),'Belterystyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Gra o tron'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Gra o tron'),'Powie�� przygodowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Uczta dla wron'),'Belterystyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Uczta dla wron'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Uczta dla wron'),'Powie�� przygodowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Hobbit, podr� tam i z powrotem'),'Belterystyka'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Hobbit, podr� tam i z powrotem'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Hobbit, podr� tam i z powrotem'),'Powie�� przygodowa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Zwiadowcy 1'),'Literatura m�odzie�owa'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Zwiadowcy 1'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Kmieciowisko'),'Fantasy'),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Smolaris'),'Fantasy');


			
INSERT INTO Autor (Imie, Nazwisko, Rok_urodzenia, Narodowosc) VALUES
	('Stephen', 'Hawking', 1942, 'Wielka Brytania'),
	('Jaros�aw', 'Grz�dowicz', NULL, 'Polska'),
	('John', 'Flanagan', 1944, 'Australia'),
	('George R.R.', 'Martin', 1948, NULL),
	('Stephen', 'King', NULL, NULL),
	('Arlena', 'Witt', NULL, 'Polska'),
	('Andrzej', 'Ziemia�ski', NULL, 'Polska'),
	('J. R. R.', 'Tolkien', NULL, 'Afryka'),
	('Andrzej', 'Kmie�', 1956, 'Polska'),
	('John', 'Smith', 1983, 'Stany Zjednoczone');
	
INSERT INTO Wydanie (Ksiazka_ID, Wydawca_ID, ISBN, Rok, Liczba_stron, Opis_ksiazki) VALUES
	(




			




			

SELECT * FROM Adres
SELECT * FROM Wydawca
SELECT * FROM Ksiazka
SELECT * FROM Gatunek
SELECT * FROM Ksiazka_gatunek
SELECT * FROM Autor



DELETE FROM Wydawca
dbcc checkident ('Wydawca', reseed, 0)
DELETE FROM Adres
dbcc checkident ('Adres', reseed, 0)
DELETE FROM Ksiazka
dbcc checkident ('Ksiazka', reseed, 0)
DELETE FROM Gatunek
dbcc checkident ('Gatunek', reseed, 0)
INSERT INTO Adres 
	VALUES	('Polska', 'Koœcierzyna', '83-400', 'Wodna', 18,''), 
			('Polska', 'Gniewino', '15-240', 'Gniewna', 20, 'b'),
			('Polska', 'Sejny', '65-420', 'Litewska', 2, ''),
			('Polska', 'Lublin', '20-834', 'Irysowa', 25,'a'), 
			('Polska', 'Poznañ', '61-311', '£ugañska', 1,''),
			('Polska', 'Warszawa', '02-972', 'Hlonda', 2,'a25'),
			('Polska', 'P³ock', '11-281', 'Alfreda', 11,'c'),
			('Polska', 'Warszawa', '02-965', 'Towarowa', 1,''),
			('Polska', 'Gdañsk', '38-400', 'Grunwaldzka', 120,''),
			('Polska', 'Gdañsk', '39-400', 'Jesionowa', 18,'d20'),
			('Polska', 'Wroc³aw', '12-400', 'Warszawska', 28,'1'),
			('Polska', 'Grudzi¹dz', '88-480', 'Jeziorna', 30,'');



INSERT INTO Wydawca
	VALUES	((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '20-834' and Ulica = 'Irysowa' and Numer_budynku = 25)), 'Fabryka s³ów'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '61-311' and Ulica = '£ugañska' and Numer_budynku = 1)), 'Zysk i s-ka'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '02-972' and Ulica = 'Hlonda' and Numer_budynku = 2)), 'Albatros'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '11-281' and Ulica = 'Alfreda' and Numer_budynku = 11)), 'Jaguar'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '02-965' and Ulica = 'Towarowa' and Numer_budynku = 1)), 'Altenberg'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '38-400' and Ulica = 'Grunwaldzka' and Numer_budynku = 120)), 'Helion'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '39-400' and Ulica = 'Jesionowa' and Numer_budynku = 18)), 'Greg'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '39-400' and Ulica = 'Jesionowa' and Numer_budynku = 18)), 'Greg'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '12-400' and Ulica = 'Warszawska' and Numer_budynku = 28)), 'Papilon'),
			((SELECT Adres_ID FROM Adres WHERE (Kod_pocztowy = '88-480' and Ulica = 'Jeziorna' and Numer_budynku = 30)), 'Galaktyka');

INSERT INTO Ksiazka
	VALUES ('Pan Lodowego Ogrodu 1'),
			('Jeszcze Krótrsza Historia Czasu'),
			('Wielki Projekt'),
			('Dru¿yna 6: Nieznany L¹d'),
			('Pan Lodowego Ogrodu 2'),
			('Grama to nie drama'),
			('Achaja'),
			('Mroczna wie¿a'),
			('Gra o tron'),
			('Uczta dla wron'),
			('Hobbit, podró¿ tam i z powrotem'),
			('Zwiadowcy 1');

INSERT INTO Gatunek
	VALUES	('Fantasy'),
			('Science fiction'),
			('Horror'),
			('Literatura popularnonaukowa'),
			('Belterystyka'),
			('Literatura m³odzie¿owa'),
			('Powieœæ przygodowa'),
			('Astronomia'),
			('Astrofizyka'),
			('Jêzykoznastwo'),
			('Jêzyk angielski');

INSERT INTO Ksiazka_gatunek
	VALUES	((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 1'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 1'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Science fiction')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 1'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Belterystyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Jeszcze Krótrsza Historia Czasu'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Literatura popularnonaukowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Jeszcze Krótrsza Historia Czasu'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Astronomia')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Jeszcze Krótrsza Historia Czasu'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Astrofizyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Wielki Projekt'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Literatura popularnonaukowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Wielki Projekt'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Astronomia')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Wielki Projekt'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Astrofizyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Dru¿yna 6: Nieznany L¹d'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Literatura m³odzie¿owa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Dru¿yna 6: Nieznany L¹d'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 2'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 2'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Science fiction')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Pan Lodowego Ogrodu 2'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Belterystyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Grama to nie drama'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Literatura popularnonaukowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Grama to nie drama'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Jêzykoznastwo')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Grama to nie drama'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Jêzyk angielski')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Achaja'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Belterystyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Achaja'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Achaja'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Powieœæ przygodowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Mroczna wie¿a'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Mroczna wie¿a'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Horror')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Gra o tron'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Belterystyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Gra o tron'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Gra o tron'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Powieœæ przygodowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Uczta dla wron'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Belterystyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Uczta dla wron'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Uczta dla wron'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Powieœæ przygodowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Hobbit, podró¿ tam i z powrotem'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Belterystyka')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Hobbit, podró¿ tam i z powrotem'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Hobbit, podró¿ tam i z powrotem'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Powieœæ przygodowa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Zwiadowcy 1'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Literatura m³odzie¿owa')),
			((SELECT Ksiazka_ID FROM Ksiazka WHERE Tytul = 'Zwiadowcy 1'),(SELECT Nazwa FROM Gatunek WHERE Nazwa = 'Fantasy'));
			






			




			

SELECT * FROM Adres
SELECT * FROM Wydawca
SELECT * FROM Ksiazka
SELECT * FROM Gatunek
SELECT * FROM Ksiazka_gatunek


DELETE FROM Wydawca
dbcc checkident ('Wydawca', reseed, 0)
DELETE FROM Adres
dbcc checkident ('Adres', reseed, 0)
DELETE FROM Ksiazka
dbcc checkident ('Ksiazka', reseed, 0)
DELETE FROM Gatunek
dbcc checkident ('Gatunek', reseed, 0)
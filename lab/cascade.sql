--jedyny mo?liwy update jest dla nazwy gatunku, poniewa? reszta id jest identity
UPDATE Gatunek SET Nazwa = 'Astrologia' where Nazwa = 'Astronomia';

DELETE from Gatunek where Nazwa = 'Astrologia';

DELETE from Ksiazka where Tytul = 'Pan Lodowego Ogrodu 1';

DELETE from Wypozyczenie where Czytelnik_ID = 8;

Delete from Egzemplarz where Egzemplarz_ID = 34;

Delete from wydanie where Wydanie_ID = 1

delete from Adres where Adres_ID = 2


SELECT * FROM Adres
SELECT * FROM Wydawca
SELECT * FROM Ksiazka
SELECT * FROM Gatunek
SELECT * FROM Ksiazka_gatunek
--SELECT * FROM Autor
SELECT * FROM Autor_ksiazka
SELECT * FROM Wydanie
SELECT * FROM Egzemplarz
SELECT * FROM Czytelnik
SELECT * FROM Wypozyczenie
SELECT * FROM Kara

SELECT * FROM Ksiazka
SELECT * FROM Wydanie
SELECT * FROM Egzemplarz
SELECT * FROM Wypozyczenie

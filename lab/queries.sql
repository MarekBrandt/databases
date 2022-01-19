use Biblioteka

--Top 3 najczêœciej wypo¿yczane ksi¹¿ki
SELECT TOP 3 Ksiazka.Ksiazka_ID, Tytul, COUNT(Wypozyczenie.Wypozyczenie_ID) AS "Liczba wypozyczen"
	FROM Ksiazka, Wydanie, Egzemplarz, Wypozyczenie 
	WHERE Ksiazka.Ksiazka_ID = Wydanie.Ksiazka_ID
	AND Wydanie.Wydanie_ID = Egzemplarz.Wydanie_ID
	AND Wypozyczenie.Egzemplarz_ID = Egzemplarz.Egzemplarz_ID
	GROUP BY Ksiazka.Ksiazka_ID, Ksiazka.Tytul
	ORDER BY "Liczba wypozyczen" DESC

GO

CREATE VIEW Naleznosc_za_wypozyczenie
	(Wypozyczenie_ID, Data_wypozyczenia, Do_kiedy_wypozyczona, Data_oddania, Kwota)
	AS
SELECT Wypozyczenie.Wypozyczenie_ID, Wypozyczenie.Data_wypozyczenia, Wypozyczenie.Do_kiedy, Wypozyczenie.Data_oddania, 
	(DATEDIFF(day, Wypozyczenie.Do_kiedy, ISNULL(Wypozyczenie.Data_oddania, GETDATE()))) * Egzemplarz.Kwota_za_przekr_dzien
	FROM Wydanie, Egzemplarz, Wypozyczenie
	WHERE Wypozyczenie.Egzemplarz_ID = Egzemplarz.Egzemplarz_ID
	AND Wydanie.Wydanie_ID = Egzemplarz.Wydanie_ID

GO

--Lista id czytelników maj¹cych do zap³acenia karê, w kolejnoœci malej¹cej
SELECT Czytelnik.Czytelnik_ID, SUM( Naleznosc_za_wypozyczenie.Kwota) AS Suma_kar
	FROM Naleznosc_za_wypozyczenie, Kara, Czytelnik, Wypozyczenie
	WHERE Naleznosc_za_wypozyczenie.Wypozyczenie_ID = Kara.Wypozyczenie_ID
	AND Naleznosc_za_wypozyczenie.Wypozyczenie_ID = Wypozyczenie.Wypozyczenie_ID
	AND Wypozyczenie.Czytelnik_ID = Czytelnik.Czytelnik_ID
	GROUP BY Czytelnik.Czytelnik_ID
	ORDER BY Suma_kar DESC

DROP VIEW Naleznosc_za_wypozyczenie

--SprawdŸ historiê wszystkich wypo¿yczeñ czytelnika X od najnowszego do najstarszego
SELECT Ksiazka.Ksiazka_ID, Ksiazka.Tytul, Egzemplarz.Egzemplarz_ID, Wypozyczenie.Data_wypozyczenia AS Data
	FROM Ksiazka
	JOIN Wydanie ON Ksiazka.Ksiazka_ID = Wydanie.Ksiazka_ID
	JOIN Egzemplarz ON Wydanie.Wydanie_ID = Egzemplarz.Wydanie_ID
	JOIN Wypozyczenie ON Egzemplarz.Egzemplarz_ID = Wypozyczenie.Egzemplarz_ID
	JOIN Czytelnik ON Wypozyczenie.Czytelnik_ID = Czytelnik.Czytelnik_ID
	WHERE Czytelnik.Czytelnik_ID = 2
	ORDER BY Data DESC

--SprawdŸ czy egzemplarz X jest aktualnie wypo¿yczony
SELECT Egzemplarz.Egzemplarz_ID
	FROM Egzemplarz
	WHERE Egzemplarz.Egzemplarz_ID NOT IN
		(SELECT Wypozyczenie.Wypozyczenie_ID
			FROM Wypozyczenie
			WHERE Wypozyczenie.Egzemplarz_ID = Egzemplarz.Egzemplarz_ID
			AND Wypozyczenie.Data_oddania IS NULL);

SELECT Egzemplarz.Egzemplarz_ID
	FROM Egzemplarz
	JOIN Wypozyczenie ON Egzemplarz.Egzemplarz_ID = Wypozyczenie.Egzemplarz_ID
	WHERE Wypozyczenie.Data_oddania is NOT NULL


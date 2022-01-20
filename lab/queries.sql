use Biblioteka

--1. Top 3 najczêœciej wypo¿yczane ksi¹¿ki
SELECT TOP 3 Ksiazka.Ksiazka_ID, Tytul, COUNT(Wypozyczenie.Wypozyczenie_ID) AS Liczba_wypozyczen
	FROM Ksiazka, Wydanie, Egzemplarz, Wypozyczenie 
	WHERE Ksiazka.Ksiazka_ID = Wydanie.Ksiazka_ID
	AND Wydanie.Wydanie_ID = Egzemplarz.Wydanie_ID
	AND Wypozyczenie.Egzemplarz_ID = Egzemplarz.Egzemplarz_ID
	GROUP BY Ksiazka.Ksiazka_ID, Ksiazka.Tytul
	ORDER BY Liczba_wypozyczen DESC

--2. Lista id czytelników maj¹cych do zap³acenia karê, w kolejnoœci malej¹cej i poka¿e maila tych osob
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

SELECT Czytelnik.Czytelnik_ID, Czytelnik.Email, SUM( Naleznosc_za_wypozyczenie.Kwota) AS Suma_kar
	FROM Naleznosc_za_wypozyczenie, Kara, Czytelnik, Wypozyczenie
	WHERE Naleznosc_za_wypozyczenie.Wypozyczenie_ID = Kara.Wypozyczenie_ID
	AND Naleznosc_za_wypozyczenie.Wypozyczenie_ID = Wypozyczenie.Wypozyczenie_ID
	AND Wypozyczenie.Czytelnik_ID = Czytelnik.Czytelnik_ID
	GROUP BY Czytelnik.Czytelnik_ID, Czytelnik.Email
	ORDER BY Suma_kar DESC

DROP VIEW Naleznosc_za_wypozyczenie

--3. SprawdŸ historiê wszystkich wypo¿yczeñ czytelnika X od najnowszego do najstarszego
SELECT Ksiazka.Ksiazka_ID, Ksiazka.Tytul, Egzemplarz.Egzemplarz_ID, Wypozyczenie.Data_wypozyczenia AS Data
	FROM Ksiazka
	JOIN Wydanie ON Ksiazka.Ksiazka_ID = Wydanie.Ksiazka_ID
	JOIN Egzemplarz ON Wydanie.Wydanie_ID = Egzemplarz.Wydanie_ID
	JOIN Wypozyczenie ON Egzemplarz.Egzemplarz_ID = Wypozyczenie.Egzemplarz_ID
	JOIN Czytelnik ON Wypozyczenie.Czytelnik_ID = Czytelnik.Czytelnik_ID
	WHERE Czytelnik.Czytelnik_ID = 2
	ORDER BY Data DESC

--4. SprawdŸ czy egzemplarz X jest aktualnie wypo¿yczony
GO

CREATE VIEW wypozyczone_egzemplarze
	AS SELECT Egzemplarz.Egzemplarz_ID, 'wypozyczona' AS Czy_wypozyczona
		FROM Egzemplarz
		WHERE Egzemplarz.Egzemplarz_ID in
			(SELECT Wypozyczenie.Egzemplarz_ID
				FROM Wypozyczenie
				WHERE Wypozyczenie.Data_oddania is NULL);
GO
SELECT * From wypozyczone_egzemplarze
	WHERE Egzemplarz_ID = 46

--5. Sporz¹dŸ listê 10 najstarszych ksi¹¿ek w bibliotece
SELECT TOP 10 Ksiazka.Ksiazka_ID, Ksiazka.Tytul, MIN(Egzemplarz.Data_dodania) AS Daty
	FROM Egzemplarz, Wydanie, Ksiazka
	WHERE Egzemplarz.Wydanie_ID = Wydanie.Wydanie_ID
	ANd Wydanie.Ksiazka_ID = Ksiazka.Ksiazka_ID
	GROUP BY Ksiazka.Ksiazka_ID, Ksiazka.Tytul
	ORDER BY Daty
	
--6. ZnajdŸ wszystkie ksi¹¿ki wydane przez autora x w latach y - z
SELECT Ksiazka.Ksiazka_ID, Ksiazka.Tytul, Autor.Imie, Autor.Nazwisko
	FROM Wydanie, Ksiazka
	JOIN Autor_ksiazka ON Ksiazka.Ksiazka_ID = Autor_ksiazka.Ksiazka_ID
	JOIN Autor ON Autor.Autor_ID = Autor_ksiazka.Autor_ID
	WHERE Wydanie.Ksiazka_ID = Ksiazka.Ksiazka_ID
	AND Wydanie.Rok > 1990
	AND Wydanie.Rok < 2010
	AND Autor.Autor_ID in
		(SELECT Autor.Autor_ID
			WHERE Autor.Imie = 'Jaros³aw'
			AND Autor.Nazwisko = 'Grzêdowicz');

--7. Dla kazdego gatunku podaj, ile ksiazek w tym gatunku napisal autor x
SELECT Gatunek.Nazwa, Autor.Imie, Autor.Nazwisko, COUNT(Ksiazka.Ksiazka_ID) AS Ksiazek_w_gatunku
	FROM Gatunek, Ksiazka_gatunek, Ksiazka, Autor_ksiazka, Autor
	WHERE Gatunek.Nazwa = Ksiazka_gatunek.Gatunek_nazwa
	AND Ksiazka.Ksiazka_ID = Ksiazka_gatunek.Ksiazka_ID
	AND Autor_ksiazka.Ksiazka_ID = Ksiazka.Ksiazka_ID
	AND Autor.Autor_ID = Autor_ksiazka.Autor_ID
	AND Autor.Autor_ID in
		(SELECT Autor.Autor_ID
			WHERE Autor.Imie = 'Arlena'
			AND Autor.Nazwisko = 'Witt')
	GROUP BY Gatunek.Nazwa, Autor.Imie, Autor.Nazwisko

--8. Podaj ID 10 najbardziej zniszczonych egzemplarzy, by poddaæ je renowacji
SELECT TOP 10 Egzemplarz.Egzemplarz_ID, Egzemplarz.Stan
	FROM Egzemplarz
	ORDER BY Egzemplarz.Stan

--9. SprawdŸ dostêpne egzemplarze ksi¹¿ki x
SELECT Egzemplarz.Egzemplarz_ID, Egzemplarz.Stan
	FROM Egzemplarz, Wydanie, Ksiazka
	WHERE Egzemplarz.Wydanie_ID = Wydanie.Wydanie_ID
	AND Wydanie.Ksiazka_ID = Ksiazka.Ksiazka_ID
	AND Ksiazka.Tytul = 'Achaja'
	AND Egzemplarz.W_posiadaniu = 1
	AND Egzemplarz.Egzemplarz_ID not in
		(SELECT wypozyczone_egzemplarze.Egzemplarz_ID FROM wypozyczone_egzemplarze);

DROP VIEW wypozyczone_egzemplarze










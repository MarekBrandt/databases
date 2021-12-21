use Biblioteka

INSERT INTO Gatunek (Nazwa) VALUES	
	('Fantasy'),
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

INSERT INTO Adres VALUES ('Polska', 'Lublin', '20-834', 'Polna', 32,'c12');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Barek', 'Mrandt', '2001-03-17', '193-029-992', 'barek18@gmail.com');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Jarek', 'Mrandt', '2001-03-17', '313-634-721', 'jarek18@gmail.com');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Darek', 'Mrandt', '2001-03-17', '734-734-683', 'darek18@gmail.com');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Arek', 'Mrandt', '2001-03-17', '842-842-432', 'arek18@gmail.com');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Halina', 'Mrandt', '1968-07-21', '123-456-789', 'halynka@gmail.com');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Andrzej', 'Mrandt', '1970-11-11', '097-654-321', 'andrzejek@gmail.com');

INSERT INTO Adres VALUES ('Polska', 'Sejny', '32-812', 'Wiejska', 11,'');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Bartosz', '¯ylwacz', '2001-01-17', '019-381-748', 'zylwaczek3000@gmail.com');

INSERT INTO Adres VALUES ('Polska', 'Gniewinko', '93-123', 'Gniewnych',1,'');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Pjoter', 'Ogórkowski', '2001-05-21', '504-239-187', 'ogorasek@gmail.com');

INSERT INTO Adres VALUES ('Polska', 'Lidzbark', '28-301', 'Wa¿na', 2,'');
INSERT INTO Czytelnik VALUES (IDENT_CURRENT('Adres'), 'Wiktor', 'Czkawka', '2001-09-22', '581-153-541', 'czkawka121@gmail.com');

INSERT INTO Adres VALUES ('Polska', 'Lublin', '20-834', 'Irysowa', 25,'a');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Fabryka s³ów');

INSERT INTO Autor VALUES ('Jaros³aw', 'Grzêdowicz', NULL, 'Polska');

INSERT INTO Ksiazka VALUES ('Pan Lodowego Ogrodu 1');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Science fiction');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Belterystyka');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '978-3-16-148410-0', 1997, 304, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2017-08-13');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.10, 6, 1, '2018-05-03');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2017-08-13');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.20, 8, 1, '2018-05-03');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.30, 10, 1, '2018-05-03');


INSERT INTO Ksiazka VALUES ('Pan Lodowego Ogrodu 2');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Science fiction');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Belterystyka');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka'));

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '978-3-16-148880-0', 2003, 400, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.10, 6, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.30, 8, 1,'2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.40, 10, 0, '2007-03-15');

INSERT INTO Autor VALUES ('Stephen', 'Hawking', 1942, 'Wielka Brytania');

INSERT INTO Adres VALUES ('Polska', 'Poznañ', '61-311', '£ugañska', 1,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Zysk i s-ka');

INSERT INTO Ksiazka VALUES ('Jeszcze Krótrsza Historia Czasu');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Literatura popularnonaukowa');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Astronomia');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Astrofizyka');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '921-3-06-148880-0', 2015, 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1,'2007-03-15');

INSERT INTO Adres VALUES ('Polska', 'Warszawa', '02-972', 'Hlonda', 2,'a25');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Albatros');

INSERT INTO Ksiazka VALUES ('Wielki Projekt');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Literatura popularnonaukowa');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Astronomia');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Astrofizyka');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '854-3-06-109880-0', 2013, 154, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 4.0, 8, 1, '2020-04-01');

INSERT INTO Autor VALUES ('John', 'Flanagan', 1944, 'Australia');

INSERT INTO Adres VALUES ('Polska', 'P³ock', '11-281', 'Alfreda', 11,'c');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Jaguar');

INSERT INTO Ksiazka VALUES ('Dru¿yna 6: Nieznany L¹d');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Literatura m³odzie¿owa');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '855-3-12-104530-0', 2005, 300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 3.0, 4, 0, '2003-05-29');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 3.0, 5, 0, '2003-05-29');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 3.0, 8, 1, '2003-05-29');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 3.0, 3, 0, '2003-05-29');

INSERT INTO Ksiazka VALUES ('Zwiadowcy 1');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Literatura m³odzie¿owa');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '374-3-06-104970-0', 1996, 253, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Autor VALUES ('Arlena', 'Witt', NULL, 'Polska');

INSERT INTO Adres VALUES ('Polska', 'Warszawa', '02-965', 'Towarowa', 1,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Altenberg');

INSERT INTO Ksiazka VALUES ('Grama to nie drama');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Literatura popularnonaukowa');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Jêzykoznastwo');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Jêzyk angielski');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '891-3-06-224970-0', 2019, 194, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Autor VALUES ('Andrzej', 'Ziemiañski', NULL, 'Polska');

INSERT INTO Adres VALUES ('Polska', 'Gdañsk', '38-400', 'Grunwaldzka', 120,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Helion');

INSERT INTO Ksiazka VALUES ('Achaja');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Belterystyka');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Powieœæ przygodowa');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka')); 

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '926-3-06-534112-0', 2008, 304, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Wypozyczenie (Czytelnik_ID, Egzemplarz_ID, Data_wypozyczenia, Do_kiedy, Data_oddania) VALUES((SELECT Czytelnik_ID from Czytelnik where Imie = 'Halina' and Nazwisko = 'Mrandt' and Numer_telefonu = '123-456-789'), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', '2020-08-30'); 
INSERT INTO Kara VALUES(IDENT_CURRENT('Wypozyczenie'), 0);
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Autor VALUES ('George R.R.', 'Martin', 1948, NULL);

INSERT INTO Adres VALUES ('Polska', 'Gdañsk', '39-400', 'Jesionowa', 18,'d20');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Greg');

INSERT INTO Ksiazka VALUES ('Uczta dla wron');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Belterystyka');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Powieœæ przygodowa');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka'));

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '138-3-06-593632-1', 1999, 548, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Halina' and Nazwisko = 'Mrandt' and Numer_telefonu = '123-456-789')), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', '2020-06-30'); 
	INSERT INTO Kara VALUES(IDENT_CURRENT('Wypozyczenie'), 1);
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Autor VALUES ('J. R. R.', 'Tolkien', NULL, 'Afryka');

INSERT INTO Adres VALUES ('Polska', 'Gdañsk', '39-400', 'Jesionowa', 18,'d21');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Gregus');

INSERT INTO Ksiazka VALUES ('Hobbit, podró¿ tam i z powrotem');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Belterystyka');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Powieœæ przygodowa');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka'));

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '956-3-06-193632-1', 1997, 492, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Pjoter' and Nazwisko = 'Ogórkowski' and Numer_telefonu = '504-239-187')), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', '2020-07-30'); 
	INSERT INTO Kara VALUES(IDENT_CURRENT('Wypozyczenie'), 0);
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Pjoter' and Nazwisko = 'Ogórkowski' and Numer_telefonu = '504-239-187')), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', '2020-05-30'); 
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Adres VALUES ('Polska', 'Wroc³aw', '12-400', 'Warszawska', 28,'1');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Papilon');

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '192-3-06-112232-1', 2001, 493, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Barek' and Nazwisko = 'Mrandt' and Numer_telefonu = '193-029-992')), IDENT_CURRENT('Egzemplarz'), '2020-05-30', '2020-06-30', '2020-06-29'); 
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Bartosz' and Nazwisko = '¯ylwacz' and Numer_telefonu = '019-381-748')), IDENT_CURRENT('Egzemplarz'), '2020-07-01', '2020-08-15', NULL); 
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Jarek' and Nazwisko = 'Mrandt' and Numer_telefonu = '313-634-721')), IDENT_CURRENT('Egzemplarz'), '2021-05-01', '2021-06-01', '2021-05-30'); 
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Autor VALUES ('Andrzej', 'Kmieæ', 1956, 'Polska');

INSERT INTO Ksiazka VALUES ('Kmieciowisko');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka'));

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '731-3-06-028332-7', 1942, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Jarek' and Nazwisko = 'Mrandt' and Numer_telefonu = '313-634-721')), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', NULL); 
	INSERT INTO Kara VALUES(IDENT_CURRENT('Wypozyczenie'), 0);
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Barek' and Nazwisko = 'Mrandt' and Numer_telefonu = '193-029-992')), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', '2020-06-30'); 
	INSERT INTO Kara VALUES(IDENT_CURRENT('Wypozyczenie'), 0);
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');

INSERT INTO Adres VALUES ('Polska', 'Grudzi¹dz', '88-480', 'Jeziorna', 30,'');
INSERT INTO Wydawca VALUES (IDENT_CURRENT( 'Adres' ),'Galaktyka');

INSERT INTO Ksiazka VALUES ('Smolaris');
INSERT INTO Ksiazka_gatunek VALUES	(IDENT_CURRENT('Ksiazka'), 'Fantasy');
INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka'));

INSERT INTO Autor VALUES ('John', 'Smith', 1983, 'Stany Zjednoczone');

INSERT INTO Autor_ksiazka VALUES (IDENT_CURRENT('Autor'), IDENT_CURRENT('Ksiazka'));

INSERT INTO Wydanie VALUES(IDENT_CURRENT('Ksiazka'), IDENT_CURRENT('Wydawca'), '731-3-06-028332-7', 1942, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non lacus nisi. Nulla viverra, lectus ut lacinia mollis, nisi eros consectetur lacus, sit amet molestie ipsum neque eget sem. Donec commodo mauris ut erat aliquam venenatis. Phasellus non massa non erat eleifend posuere quis eu mi. Quisque quis pharetra elit. Quisque quam arcu, volutpat nec vestibulum ut, gravida nec erat. Fusce euismod faucibus vehicula. Vivamus a sagittis libero. Donec ligula purus, auctor ut pharetra eget, aliquam id sem. Vestibulum lorem dolor, elementum non magna non, mollis suscipit lorem. Curabitur pharetra varius diam id mattis. Integer sit amet nisi et est volutpat faucibus sit amet non erat. Aliquam scelerisque convallis eros, faucibus vehicula odio.');
	INSERT INTO Wypozyczenie VALUES((SELECT Czytelnik_ID from Czytelnik where (Imie = 'Barek' and Nazwisko = 'Mrandt' and Numer_telefonu = '193-029-992')), IDENT_CURRENT('Egzemplarz'), '2020-05-01', '2020-06-01', '2020-05-30'); 

INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.04, 4, 0, '2007-03-15');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.05, 5, 1, '2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.50, 8, 1,'2009-09-12');
INSERT INTO Egzemplarz VALUES(IDENT_CURRENT('Wydanie'), 0.01, 3, 1, '2007-03-15');






			

			

--SELECT * FROM Adres
--SELECT * FROM Wydawca
--SELECT * FROM Ksiazka
--SELECT * FROM Gatunek
--SELECT * FROM Ksiazka_gatunek
--SELECT * FROM Autor
--SELECT * FROM Autor_ksiazka
--SELECT * FROM Wydanie
--SELECT * FROM Egzemplarz
--SELECT * FROM Czytelnik
--SELECT * FROM Wypozyczenie








--DELETE FROM Wydawca
--dbcc checkident ('Wydawca', reseed, 0)
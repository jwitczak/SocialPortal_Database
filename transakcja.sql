USE Social_Portal;
GO

--transakcja poprawia zle wpisane przez uzytkownika dane

BEGIN TRANSACTION

UPDATE Users 
SET FirstName = 'Angelica',
	LastName = 'Cruise'
where UserID = 3
COMMIT
USE Social_Portal;
GO

-- Indeksy na kluczach obcych

-- POSTS
CREATE NONCLUSTERED INDEX [UsersPosts] ON dbo.Posts ([UserID])

-- COMMENTS
CREATE NONCLUSTERED INDEX [CommentsPosts] ON dbo.Comments ([PostID])
CREATE NONCLUSTERED INDEX [CommentsUsers] ON dbo.Comments ([UserID])

-- FUNDRAISINGS
CREATE NONCLUSTERED INDEX [FundraisingsPosts] ON dbo.Fundraisings ([PostID])
CREATE NONCLUSTERED INDEX [FundraisingsUsers] ON dbo.Fundraisings ([UserID])

-- PAYMENTS
CREATE NONCLUSTERED INDEX [PaymentsFundraisings] ON dbo.Payments ([FundID])
CREATE NONCLUSTERED INDEX [PaymentsUsers] ON dbo.Payments ([UserID])

-- Przydatne indeksy

-- USERS
-- Wspolny indeks na imie i nazwisko
CREATE NONCLUSTERED INDEX [NameSurname] ON dbo.Users ([FirstName], [LastName])
-- Oddzielne indeksy na imie i nazwisko
CREATE NONCLUSTERED INDEX [Name] ON dbo.Users ([FirstName])
CREATE NONCLUSTERED INDEX [Surname] ON dbo.Users ([LastName])



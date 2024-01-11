USE Social_Portal;
GO

-- WSTAWIANIE DO USERS
-- dbcc checkident (Users, reseed, 0); - jakby bylo numerowanie od 2
INSERT INTO Users 
VALUES
('Joanna', 'Kaczmarek',	'2000-06-09',	'asia@gmail.com',	'Weqrt5',	'2015-08-13 11:11:11.0000000 +02:00',	'Poland',	'+48234567890',	1)

INSERT INTO Users (FirstName, LastName, BirthDate, Email, [Password], MemberSince, Country, UserActive) 
VALUES
('Jan',	'Kowalski',	'1999-09-08', 'jan.kowalski@gmail.com', 'jankowal5', '2017-09-04 12:34:54.0000000 +02:00', 'Poland',	1),
('Angela', 'Cruz', '1970-04-03', 'angela123@gmail.com', 'Kjhsa23', '1997-04-02 00:00:00.0000000 +02:00', 'Spain', 0),
('John', 'Smith', '1995-04-05',	'johns23@gmail.com', 'Johnisgreat12', '2019-02-03 13:45:32.0000000 +01:00', 'USA', 1),
('Hans', 'Schmidt',	'1980-08-06', 'hansschmidt@gmail.com',	'Hans123', '2005-05-03 12:34:56.0000000 +02:00', 'Germany', 1);

INSERT INTO Users
VALUES
('Krystyna', 'Wilk', '1970-09-08', 'krystynawilk@gmail.com', 'Qwerty123', '2000-08-07 15:44:33.0000000 +02:00',	'Poland', '+48345678912', 1),
('Jacek', 'Kot', '1966-04-06', 'jacekk@gmail.com', 'Jacek345', '2010-04-05 20:32:25.0000000 +02:00', 'Poland',	'+48765397512', 1);

-- WSTAWIANIE DO POSTS

INSERT INTO Posts
VALUES
(3, '1998-04-05 21:23:45.0000000 +02:00',	'Today was a great day. Goodnight.', 0),
(1, '2017-12-20 18:18:18.0000000 +01:00',	'Wracaj¹c do domu znalaz³am kotka przy drodze :( czy ktoœ chce go przygarn¹æ?', 1),
(2,	'2018-01-03 12:34:23.0000000 +01:00',	'Sprzedam samochód.', 0),
(6,	'2018-11-15 14:43:25.0000000 +01:00', 'Czy macie pomys³ na tanie prezenty na œwiêta dla dzieci w wieku 5 i 9 lat? Jesteœmy biedn¹ rodzin¹ i muszê siê opiekowaæ chor¹ matk¹, ale chcia³abym, ¿eby moje dzieci mia³y udane œwiêta.', 1),
(4,	'2020-04-03 12:23:54.0000000 +02:00', 'Hi everyone! Recently I have read all Harry Potter Books and I loved them! Highly recommend!', 1),
(1,	'2021-01-05 09:12:23.0000000 +01:00', 'Do schronisk w tym czasie trafia wiele niechcianych zwierz¹t - nietrafionych prezentów. Dlatego zachêcam przede wszystkim do bardziej przemyœlanych prezentów, ale równie¿ do adopcji lub innego rodzaju pomocy.', 1);

-- WSTAWIANIE DO COMMENTS

INSERT INTO Comments
VALUES
(2,	6,	'2017-12-20 18:24:34.0000000 +01:00', 'Biedny kotek. Ludzie nie maj¹ serca', 1),
(2,	7,	'2017-12-20 19:01:23.0000000 +01:00', 'Trzeba pomóc temu kotkowi!',	1),
(3,	4,	'2018-01-03 14:34:23.0000000 +01:00', 'I want to buy your car. Lets discuss details.', 1),
(3,	2,	'2018-01-03 17:37:23.0000000 +01:00', 'Samochód sprzedany.', 1),
(4,	7,	'2018-11-15 15:11:23.0000000 +01:00', 'Niech siê Pani nie martwi. Pomo¿emy Pani!', 1),
(6,	2,	'2021-01-05 10:23:34.0000000 +01:00', 'Zgadzam siê! Ludzie w ogóle nie myœl¹...', 1);

-- WSTAWIANIE DO FUNDRAISINGS

INSERT INTO Fundraisings
VALUES
(2,	7,	'Pomyœla³em, ¿e trzeba pomóc kotkowi znalezionemu przez Joannê Kaczmarek. Dlatego zak³adam t¹ zbiórkê, aby zebraæ pieni¹dze na weterynarza i inne potrzebne rzeczy. Wp³at dokonujcie na podany numer bankowy fundacji, która zgodzi³a siê pomóc.',	'2017-12-21 10:00:00.0000000 +01:00', '2017-12-31 23:59:59.0000000 +01:00',	'PL49 1020 2892 2276 3005 0000 0000'),
(4,	7,	'Sprawmy prezent gwiazdkowy tej rodzinie i pomó¿my im mieæ udane œwiêta! Wp³at dokonujcie na podany numer bankowy fundacji, która zgodzi³a siê pomóc sprawie.',	'2018-11-16 10:00:00.0000000 +01:00', '2018-12-16 23:59:59.0000000 +01:00',	'PL26 2010 2347 2256 3005 0000 0000'),
(6,	1,	'Z powodu nadmiaru zwierz¹t schronisko potrzebuje wsparcia finansowego. Jeœli mo¿ecie, to proszê wp³aæcie chocia¿ kilka z³otych na ten szczytny cel. Wp³at dokonujcie na numer bankowy fundacji prowadzonej przez schronisko.',	'2021-01-06 09:00:00.0000000 +01:00', '2021-01-16 09:00:00.0000000 +01:00',	'PL 35 1030 1016 0000 0000 2598 2002'),
(6,	2,	'Moja kole¿anka niedawno robi³a zbiórkê na zwierzêta w schronisku "Paluch", jednak nadal brakuje im pieniêdzy, wiêc wielka proœba o wp³acanie.', '2021-02-05 10:00:00.0000000 +01:00',	'2021-02-25 23:59:59.0000000 +01:00', 'PL 35 1030 1016 0000 0000 2598 2002'),
(5, 5, 'John inspired me to start a fundraising for foundation "Czytamy dzieciom" to buy some books for them. Any payment will be appreciated.', '2022-01-07 13:12:00.0000000 +01:00', '2022-03-21 23:59:59.0000000 +01:00', 'PL 22 2356 1019 0000 0000 2597 2002');

-- WSTAWIANIE DO PAYMENTS

INSERT INTO Payments
VALUES
(1,	7,	100, '2017-12-21 10:01:04.0000000 +01:00'),
(1,	2,	500.55, '2017-12-27 13:44:56.0000000 +01:00'),
(2,	5,	200, '2018-11-29 11:35:23.0000000 +01:00'),
(2,	1,	100, '2018-12-10 12:34:43.0000000 +01:00'),
(3,	2,	400, '2021-01-10 15:34:23.0000000 +01:00'),
(4,	2,	300.25, '2021-02-05 10:10:24.0000000 +01:00'),
(5, 4, 100, '2022-01-09 13:12:00.0000000 +01:00');
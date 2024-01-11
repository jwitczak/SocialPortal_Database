CREATE DATABASE Social_Portal;
GO

USE Social_Portal;
GO

--------- TWORZENIE TABEL ---------

-- TABELA USERS

CREATE TABLE Users (
	[UserID] int NOT NULL IDENTITY(1,1),
	[FirstName] nvarchar(50) NOT NULL,
	[LastName] nvarchar(50) NOT NULL,
	[BirthDate] date NULL,
	[Email] nvarchar(320) NOT NULL,
	[Password] nvarchar(32) NOT NULL,
	[MemberSince] datetimeoffset(7) NOT NULL,
	[Country] nvarchar(32) NOT NULL,
	[PhoneNumber] nvarchar(20) NULL,
	[UserActive] bit NOT NULL
	CONSTRAINT [PKC_Users] PRIMARY KEY
	(
		[UserID]
	)
);

-- TABELA POSTS

CREATE TABLE Posts(
	[PostID] int NOT NULL IDENTITY(1,1),
	[UserID] int NOT NULL,
	[PostDate] datetimeoffset(7) NOT NULL,
	[PostText] text NOT NULL,
	[PostActive] bit NOT NULL,
	CONSTRAINT [PKC_Posts] PRIMARY KEY
	(
		[PostID]
	),
	CONSTRAINT [FKC_Posts_Users]
	FOREIGN KEY([UserID])
	REFERENCES Users([UserID])
);

-- TABELA COMMENTS

CREATE TABLE Comments(
	[CommentID] int NOT NULL IDENTITY(1,1),
	[PostID] int NOT NULL,
	[UserID] int NOT NULL,
	[CommentDate] datetimeoffset(7) NOT NULL,
	[CommentText] text NOT NULL,
	[CommentActive] bit NOT NULL,
	CONSTRAINT [PKC_Comments] PRIMARY KEY
	(
		[CommentID]
	),
	CONSTRAINT [FKC_Comments_Posts]
	FOREIGN KEY([PostID]) 
	REFERENCES Posts(PostID),
	CONSTRAINT [FKC_Comments_Users]
	FOREIGN KEY([UserID])
	REFERENCES Users([UserID])
 );

-- TABELA FUNDRAISINGS

CREATE TABLE Fundraisings(
	[FundID] int NOT NULL IDENTITY(1,1),
	[PostID] int NOT NULL,
	[UserID] int NOT NULL,
	[FundPurpose] text NOT NULL,
	[StartDate] datetimeoffset(7) NOT NULL,
	[EndDate] datetimeoffset(7) NULL,
	[BankAccountNumber] nvarchar(40) NOT NULL,
	CONSTRAINT [PKC_Fundraisings] PRIMARY KEY
	(
		[FundID]
	),
	CONSTRAINT [FKC_Fundraisings_Posts]
	FOREIGN KEY([PostID]) 
	REFERENCES Posts(PostID),
	CONSTRAINT [FKC_Fundraisings_Users]
	FOREIGN KEY([UserID])
	REFERENCES Users([UserID])
);

-- TABELA PAYMENTS

CREATE TABLE Payments(
	[PaymentID] int NOT NULL IDENTITY(1,1),
	[FundID] int NOT NULL,
	[UserID] int NOT NULL,
	[PaymentValue] DECIMAL(19, 2) NOT NULL,
	[PaymentDate] datetimeoffset(7) NOT NULL,
	CONSTRAINT [PKC_Payments] PRIMARY KEY
	(
		[PaymentID]
	),
	CONSTRAINT [FKC_Payments_Fundraisings]
	FOREIGN KEY([FundID]) 
	REFERENCES Fundraisings(FundID),
	CONSTRAINT [FKC_Payments_Users]
	FOREIGN KEY([UserID])
	REFERENCES Users([UserID])
);
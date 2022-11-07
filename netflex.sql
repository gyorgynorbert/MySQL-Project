CREATE DATABASE NETFLEX;

USE NETFLEX;

CREATE TABLE Users(UserID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Username VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL, Password VARCHAR(20) NOT NULL);

CREATE TABLE PaymentPlans(PaymentPlanID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, IsBasic BOOLEAN NOT NULL DEFAULT 0, 
IsAdvanced BOOLEAN NOT NULL DEFAULT 0, IsVIP BOOLEAN NOT NULL DEFAULT 0);

CREATE TABLE Payments(PaymentID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, PaymentPlanID INT NOT NULL, UserID INT
NOT NULL, IsActive BOOLEAN NOT NULL, ExpiryDate DATE NOT NULL DEFAULT "2022-11-05" CHECK(ExpiryDate >= "2022-11-05"));

CREATE TABLE Movies(MovieID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, Title VARCHAR(50) NOT NULL, Category VARCHAR(30) 
NOT NULL, ReleaseDate INT NOT NULL DEFAULT 2000 CHECK(ReleaseDate <= 2022));

CREATE TABLE Watching(WatcherID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, MovieID INT NOT NULL, UserID INT NOT NULL); 

INSERT INTO PaymentPlans(IsBasic, IsAdvanced, IsVIP) VALUES (1, 0, 0);
INSERT INTO PaymentPlans(IsBasic, IsAdvanced, IsVIP) VALUES (0, 1, 0);
INSERT INTO PaymentPlans(IsBasic, IsAdvanced, IsVIP) VALUES (0, 0, 1);

INSERT INTO Users(Username, Email, Password) VALUES ("gangstermanftw", "norbert200476@gmail.com", "123456789");
INSERT INTO Users(Username, Email, Password) VALUES ("beetlejuice", "twoplustwotwentytwo@gmail.com", "gimmejuice");
INSERT INTO Users(Username, Email, Password) VALUES ("izraelmargit", "inglishtudas@gmail.com", "favouritesubject");
INSERT INTO Users(Username, Email, Password) VALUES ("pinkguy", "filtyhyfranktv@gmail.com", "66642069");
INSERT INTO Users(Username, Email, Password) VALUES ("jatrahaltvojumat", "russijabest@yandex.ru", "russijaoverucraine");
INSERT INTO Users(Username, Email, Password) VALUES ("steveharvey", "potatomanfromtoystory@gmail.com", "gibmemoneyforfame");
INSERT INTO Users(Username, Email, Password) VALUES ("windowsfounderkewl", "billgatesman@gmail.com", "windows11unstablekekw");
INSERT INTO Users(Username, Email, Password) VALUES ("appleratiowindowsxd", "stevedeadjobs@yahoo.com", "youaredumbifyoupayus");
INSERT INTO Users(Username, Email, Password) VALUES ("metaversestealdata", "markzuckerberg@yahoo.com", "istealyourdate247");
INSERT INTO Users(Username, Email, Password) VALUES ("whitesupremacy", "donaldtrump@hotmail.com", "kkkisthebest");

INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (3, 1, 1, "2023-11-05");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (1, 2, 1, "2022-12-25");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (1, 3, 1, "2022-12-06");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (1, 4, 1, "2022-11-19");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (2, 5, 1, "2022-12-07");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (1, 6, 1, "2023-01-01");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (1, 7, 1, "2023-01-30");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (1, 8, 1, "2023-02-27");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (2, 9, 1, "2025-03-11");
INSERT INTO Payments(PaymentPlanID, UserID, IsActive, ExpiryDate) VALUES (3, 10, 1, "2098-12-31");

INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Squid Game", "Drama", 2020);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Enola Holmes 2", "Mystery", 2022);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("The Mitchells vs. the Machines", "Animation", 2021);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Da 5 Bloods", "War", 2020);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("tick, tick...BOOM!", "Music", 2021);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Passing", "Drama", 2021);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("The Witcher: Nightmare of the Wolf", "Fantasy", 2021);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Gerald's Game ", "Horror", 2017);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Over the Moon", "Adventure", 2020);
INSERT INTO Movies(Title, Category, ReleaseDate) VALUES ("Mr. Harrigan's Phone", "Horror", 2022);

INSERT INTO Watching(MovieID, UserID) VALUES (1,10);
INSERT INTO Watching(MovieID, UserID) VALUES (2,9);
INSERT INTO Watching(MovieID, UserID) VALUES (3,8);
INSERT INTO Watching(MovieID, UserID) VALUES (4,7);
INSERT INTO Watching(MovieID, UserID) VALUES (5,6);
INSERT INTO Watching(MovieID, UserID) VALUES (6,5);
INSERT INTO Watching(MovieID, UserID) VALUES (7,4);
INSERT INTO Watching(MovieID, UserID) VALUES (8,3);
INSERT INTO Watching(MovieID, UserID) VALUES (9,2);
INSERT INTO Watching(MovieID, UserID) VALUES (10,1);

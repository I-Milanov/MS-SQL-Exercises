CREATE DATABASE Movies

ALTER DATABASE Movies
CREATE TABLE Directors
(
Id INT PRIMARY KEY NOT NULL,
DirectorName Varchar(30) NOT NULL,
Notes Varchar(MAX),
)
CREATE TABLE Genres
(
Id INT PRIMARY KEY NOT NULL,
GenreName Varchar(30) NOT NULL,
Notes Varchar(MAX),
)
CREATE TABLE Categories
(
Id INT PRIMARY KEY NOT NULL,
CategoryName Varchar(30) NOT NULL,
Notes Varchar(MAX),
)
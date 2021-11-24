CREATE DATABASE Hotel
Use Hotel

CREATE TABLE Employees
(
Id INT PRIMARY KEY,
FirstName VARCHAR(90) NOT NULL,
LastName VARCHAR(90) NOT NULL,
Title VARCHAR(50)NOT NULL,
Notes VARCHAR(MAX)
)
INSERT INTO Employees (Id, FirstName, LastName, Title, Notes) VALUES
(1,'Gosho','Goshev','CEO',NULL),
(2,'Ivan','Goshev','GyzGolqm',NULL),
(3,'Pesho','Goshev','Gyz',NULL)


CREATE TABLE Customers
(
AccountNumber INT PRIMARY KEY ,
FirstName VARCHAR(90) NOT NULL,
LastName VARCHAR(90) NOT NULL,
PhoneNumber CHAR(10)NOT NULL,
EmergencyName VARCHAR(90) NOT NULL,
EmergencyNumber CHAR(10) NOT NULL,
Notes VARCHAR(MAX)
)
INSERT INTO Customers VALUES
(120,'Stab','Goshev','1234567890','T','1234567890',NULL),
(121,'Ivan','Goshev','1234567890','T','1234567890',NULL),
(122,'Pesho','Goshev','1234567890','T','1234567890',NULL)


CREATE TABLE RoomStatus
( 
RoomStatus VARCHAR(30) NOT NULL,
Notes VARCHAR(MAX)
)
INSERT INTO RoomStatus VALUES
('Clean',NULL),
('Empty',NULL),
('Reserved',NULL)


CREATE TABLE RoomTypes
( 
RoomType VARCHAR(90) NOT NULL,
Notes VARCHAR(MAX)
)
INSERT INTO RoomTypes VALUES
('Apartment',NULL),
('DASDA',NULL),
('dasdasd',NULL)

CREATE TABLE BedTypes
( 
BedType VARCHAR(90) NOT NULL,
Notes VARCHAR(MAX)
)
INSERT INTO BedTypes VALUES
('One',NULL),
('Two',NULL),
('Three',NULL)


CREATE TABLE Rooms
( 
RoomNumber INT PRIMARY KEY,
RoomType VARCHAR(90) NOT NULL,
BedType VARCHAR(90) NOT NULL,
Rate TINYINT NOT NULL,
RoomStatus VARCHAR(30) NOT NULL,
Notes VARCHAR(MAX)
)

INSERT INTO Rooms Values
(120,'Apartment','One',10,'Empty',NULL),
(121,'Apartment','One',10,'Empty',NULL),
(122,'Apartment','One',10,'Empty',NULL)


CREATE TABLE Payments
(
Id INT PRIMARY KEY,
EmployeeId INT NOT NULL,
PaymentDate DATETIME NOT NULL,
AccountNumber INT NOT NULL,
FirstDateOccupied DATETIME NOT NULL,
LastDateOccupied DATETIME NOT NULL,
TotalDays INT NOT NULL,
AmountCharged DECIMAL(15,2) NOT NULL,
TaxRate INT ,
TaxAmount DECIMAL(15,2) ,
PaymentTotal DECIMAL(15,2) NOT NULL,
Notes VARCHAR(MAX)
)
INSERT INTO Payments Values
(1,1,GETDATE(),120,'5/5/2012','5/8/2012',3,450.23,Null,NuLL,450.23,NULL),
(2,1,GETDATE(),120,'5/5/2012','5/8/2012',3,450.23,Null,NuLL,450.23,NULL),
(3,1,GETDATE(),120,'5/5/2012','5/8/2012',3,450.23,Null,NuLL,450.23,NULL)

CREATE TABLE Occupancies 
(
Id INT PRIMARY KEY,
EmployeeId INT NOT NULL,
DateOccupied DATETIME NOT NULL,
AccountNumber INT NOT NULL,
RoomNumber INT NOT NULL,
RateApplied INT,
PhoneCharge DECIMAL(15,2),
Notes VARCHAR(MAX)
)

INSERT INTO Occupancies VALUES
(1,120,GETDATE(),120,120,0,0,NULL),
(2,120,GETDATE(),120,120,0,0,NULL),
(3,120,GETDATE(),120,120,0,0,NULL)

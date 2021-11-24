USE TableRelations

CREATE TABLE Manufacturers
(ManufacturerID INT IDENTITY,
[Name] VARCHAR(50) NOT NULL,
EstablishedOn DATE NOT NULL,

CONSTRAINT PK_ManufacturerID PRIMARY KEY (ManufacturerID)
)

CREATE TABLE Models
(ModelID INT IDENTITY(100,1),
[Name] VARCHAR(50) NOT NULL,
ManufacturerID INT,

CONSTRAINT PK_ModelID PRIMARY KEY (ModelID),
CONSTRAINT FK_ModelsManufacturers FOREIGN KEY (ManufacturerID)
REFERENCES Manufacturers (ManufacturerID)
)

INSERT INTO Manufacturers VALUES
('BMW','1916-03-07'),
('Tesla','2003-01-01'),
('Lada','1966-05-01')

INSERT INTO Models VALUES
('X1',1),
('i6',1),
('Model S',2),
('Model X',2),
('Model 3',2),
('Nova',3)


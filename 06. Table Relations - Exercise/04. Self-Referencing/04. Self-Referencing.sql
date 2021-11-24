USE TableRelations

CREATE TABLE Teachers
(TeacherID INT IDENTITY(100,1),
[Name] VARCHAR(50) NOT NULL,
ManagerID INT

CONSTRAINT PK_Teachers PRIMARY KEY (TeacherID),
CONSTRAINT FK_TeacherManager FOREIGN KEY (ManagerID)
REFERENCES Teachers(TeacherID)
)
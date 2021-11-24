USE TableRelations

CREATE TABLE Students
( StudentID INT IDENTITY,
[Name] VARCHAR(50)

CONSTRAINT PK_Students PRIMARY KEY (StudentID)
)

INSERT INTO Students VALUES
('Mila'),                                      
('Toni'),
('Ron')

CREATE TABLE Exams
( ExamID INT IDENTITY(100,1),
[Name] VARCHAR(50)

CONSTRAINT PK_Exams PRIMARY KEY (ExamID)
)

INSERT INTO Exams VALUES
('SpringMVC'),                                      
('Neo4j'),
('Oracle 11g')

CREATE TABLE StudentsExams
(StudentID INT,
ExamID INT

CONSTRAINT PK_StudentsExams PRIMARY KEY (StudentID,ExamID),
CONSTRAINT FK_StudentsExamsStudents FOREIGN KEY (StudentID)
REFERENCES Students(StudentID),
CONSTRAINT FK_StudentsExamsExam FOREIGN KEY (ExamID)
REFERENCES Exams(ExamID)
)

INSERT INTO StudentsExams VALUES
(1,	101),
(1,	102),
(2,	101),
(3,	103),
(2,	102),
(2,	103)

CREATE DATABASE UniversityDatabase
USE UniversityDatabase

CREATE TABLE Subjects
(
SubjectID INT,
SubjectName VARCHAR(50) NOT NULL

CONSTRAINT PK_SubjectID PRIMARY KEY (SubjectID)
)

CREATE TABLE Majors
(
MajorID INT,
[Name] VARCHAR(50) NOT NULL

CONSTRAINT PK_MajorID PRIMARY KEY (MajorID)
)

CREATE TABLE Students
(
StudentID INT,
StudentNumber INT NOT NULL,
StudentName VARCHAR(50) NOT NULL,
MajorID INT NOT NULL,

CONSTRAINT PK_StudentID PRIMARY KEY (StudentID),
CONSTRAINT FK_StudentsMajor FOREIGN KEY (MajorID)
REFERENCES Majors(MajorID)
)

CREATE TABLE Agenda
(
StudentID INT,
SubjectID INT

CONSTRAINT PK_StudentSubject PRIMARY KEY (StudentID,SubjectID)
CONSTRAINT FK_AgendaStudents FOREIGN KEY (StudentID)
REFERENCES Students(StudentID),
CONSTRAINT FK_AgendaSubjects FOREIGN KEY (SubjectID)
REFERENCES Subjects(SubjectID)
)

CREATE TABLE Payments
(
PaymentID INT,
PaymentDate DATE NOT NULL,
StudentName VARCHAR(50) NOT NULL,
StudentID INT NOT NULL,

CONSTRAINT PK_PaymentID PRIMARY KEY (PaymentID),
CONSTRAINT FK_PaymentsStudents FOREIGN KEY (StudentID)
REFERENCES Students(StudentID)
)
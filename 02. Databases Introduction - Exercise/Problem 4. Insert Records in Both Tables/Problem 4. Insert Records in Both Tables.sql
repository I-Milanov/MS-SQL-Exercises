ALTER TABLE Minions
ADD FOREIGN KEY (TownId) REFERENCES Towns(ID)
--Minions									Towns
--Id	Name		Age		TownId			Id	Name
--1		Kevin		22		1				1	Sofia
--2		Bob			15		3				2	Plovdiv
--3		Steward		NULL	2				3	Varna
INSERT INTO Towns(ID,Name) VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna')

INSERT INTO Minions(ID,Name,Age,TownID) VALUES
(1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2)
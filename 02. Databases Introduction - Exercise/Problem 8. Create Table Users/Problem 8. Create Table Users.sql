CREATE TABLE Users
(
Id BIGINT PRIMARY KEY IDENTITY NOT NUll,
Username VARCHAR (30) NOT NULL,
[Password] VARCHAR (26) NOT NULL,
ProfilePicture  VARCHAR (MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)

INSERT INTO Users
(Username,[Password],ProfilePicture,LastLoginTime,IsDeleted)
VALUES
('Gyz', 'gyz123', 'https://softuni.bg/users/profile/showavatar/dbed4915-8f36-4489-acad-6decf9aa67e2', '1/1/2020', 0),
('gyzgyz', 'gyz123', 'https://softuni.bg/users/profile/showavatar/dbed4915-8f36-4489-acad-6decf9aa67e2', '2/1/2020', 0),
('Gyzdsa', 'gyz123', 'https://softuni.bg/users/profile/showavatar/dbed4915-8f36-4489-acad-6decf9aa67e2', '3/1/2020', 0),
('Gyzsdfgh', 'gyz123', 'https://softuni.bg/users/profile/showavatar/dbed4915-8f36-4489-acad-6decf9aa67e2', '4/1/2020', 0),
('Gyzdvszdfgsdfg', 'gyz123', 'https://softuni.bg/users/profile/showavatar/dbed4915-8f36-4489-acad-6decf9aa67e2', '5/1/2020', 0)

SELECT* FROM Users

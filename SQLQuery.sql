CREATE DATABASE Company
ON
(
	NAME = 'Company',
	FILENAME = 'D:\Company.mdf',
	SIZE = 10MB,
	MAXSIZE = 100MB,
	FILEGROWTH = 10MB
)
LOG ON
(
	NAME = 'LogCompany',
	FILENAME = 'D:\Company.ldf',
	SIZE = 5MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 5MB
)


USE Company

CREATE TABLE Projects
(
	Id int IDENTITY NOT NULL,
	ProjectName Varchar(30) NOT NULL,
	ProjectType Varchar(40) NOT NULL,
	Employee Varchar(40) NOT NULL,
	ProjectTime int NOT NULL,
	PriceForProjectTime decimal(10,2) NOT NULL
)
GO

DROP TABLE Projects

INSERT INTO Projects
VALUES
('TCPChat', 'Реализация', 'Юрашевич Виктор Сергеевич', 12, 5000),
('Snake Game', 'Тестирование', 'Васильев Василий Васильевич', 20, 2000),
('Social network', 'Работа над требованиями', 'Генадьев Генадий Генадьевич', 8, 1500);
GO

SELECT * FROM Projects
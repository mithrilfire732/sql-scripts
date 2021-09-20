CREATE TABLE Students(
	Id int not null primary key identity(1,1),
	Name varchar(50) not null,
	FavNumber int not null,
	FavColor varchar(20) null default 'Grey',
	Milk bit default 0
);
go
INSERT into Students
	(Name, FavNumber, FavColor, Milk)
	values
	('Matt', 144, 'Green', 1),
	('Parth', 84, 'Blue', 1),
	('Caroline', 25, Null, 0)
go
CREATE Table Topics (
	Id int not null primary key identity(1,1),
	Description varchar(30) not null,
	Sequence int not null unique,
	TooEasy bit not null default 1
)
go
INSERT into Topics
	(Description,Sequence,TooEasy)
	values
	('git/GitHub', 1, 1),
	('Sql Server',2,1),
	('C#', 3,0),
	('EntityFrameworkCore',4,1),
	('Java',5,1),
	('Spring',6,1),
	('HTML',7,1),
	('CSS', 8, 1),
	('JavaScript',9,0),
	('Bootstrap',10,1),
	('jQuery', 11,1),
	('Typescript', 12,1),
	('Angular',13,0)
go
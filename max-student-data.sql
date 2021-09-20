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
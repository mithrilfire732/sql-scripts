use master;
go
drop database if exists BcDb;
go
create database BcDb;
go
use BcDb;
go
CREATE table Customers(
	Id int not null primary key identity (1,1),
	Code varchar(10) not null unique,
	Name varchar(30) not null,
	Sales decimal(9,2) not null check(sales >= 0) default 0,
	Active bit not null default 1,
	Created datetime not null default getdate()
);
go
insert into customers
	(Code, Name, Sales)
	values
	('AC120','Jeremiah Quincy',350),
	('BL350','Blake Edward',298),
	('KR189','Ernest Horace',1000),
	('KJ120', 'Matthew Poe', 134.09),
	('LK257','Rachel Eric',1456.89)
;
go
/*ALTER Table Customers
	add updated DateTime;
go


Update Customers set
	note = 'Default Note'*/
CREATE TABLE Rating (
	Id int not null primary key identity(1,1),
	Stars int not null check(Stars >=1 and Stars <=5),
	Comment varchar(200) null,
	StudentId int not null foreign key references Students(Id),
	TopicId int not null foreign key references Topics(Id)
)
;
go
INSERT into RATING
	(Stars, StudentID, TopicID)
	values
	(3, 1,1),
	(4,2,1),
	(3,3,1),
	(4,1,2),
	(4,2,2),
	(3,3,2)
;
go
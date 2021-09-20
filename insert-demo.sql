/*
Insert Student
	(Firstname, Lastname, StateCode, SAT, GPA, MajorId)
	values
	('Noah','Phense', 'GA', 1235, 3.15,(select ID from major where Description = 'Math'));
*/
select * from student where Firstname = 'Noah'
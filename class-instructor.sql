select c.Code, Subject, concat('Dr. ', i.firstname, ' ', i.Lastname)'Instructor Name'
	from Class c
	left join Instructor i on c.InstructorId = i.id;
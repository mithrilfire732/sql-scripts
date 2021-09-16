select Description, c.Code, Subject, concat('Dr. ', i.firstname, ' ', i.Lastname)'Instructor Name'
	from major m
	join MajorClass mc on mc.MajorId = m.Id
	join Class c on c.id = mc.ClassId
	join Instructor i on c.InstructorId = i.id;
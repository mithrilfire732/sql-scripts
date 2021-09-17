select Description, c.Code, Subject
	from major m
	join MajorClass mc on mc.MajorId = m.Id
	join Class c on c.id = mc.ClassId
	where m.ID = 1;
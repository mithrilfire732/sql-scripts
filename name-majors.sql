select concat(s.firstname,' ', s.lastname) Name, m.Code, m.Description 
	from Student s
	left join major m 
		on s.MajorId = m.Id
select concat(s.firstname,' ', s.lastname) Name, m.Code, m.Description from major m
	join student s on s.MajorId = m.Id
select concat(s.lastname, ', ', firstname) Name, 
	isnull(m.Code, ' ')'Code', 
	isnull(m.Description, 'Undecided') 'Major'
	from Student s
	left join major m 
		on s.MajorId = m.Id
	order by lastname
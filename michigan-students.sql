select lastname 'Last Name', isnull(m.Description, 'Undeclared') 'Major' from student s
	left join Major m on s.MajorId = m.ID
	where s.StateCode = 'MI';

select ID, Code, Description, MinSAT
	from major
	order by code;
select * from Student s
	join Major m on m.ID = s.MajorId
	join MajorClass mc on mc.MajorId = m.Id
	join Class c on c.Id = mc.ClassId
	where s.Lastname
		like '%ar%'
	order by Lastname;
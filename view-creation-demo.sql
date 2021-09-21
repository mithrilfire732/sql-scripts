create view CatalogFull AS
	select m.Code MajorCode, m.Description, c.Code ClassCode, c.Subject, i.Lastname, i.IsTenured from Major m
		join MajorClass mc on mc.MajorId = m.Id
		join class c on c.Id = mc.ClassId
		join Instructor i on i.id= c.InstructorId;
go
select * from CatalogFull;
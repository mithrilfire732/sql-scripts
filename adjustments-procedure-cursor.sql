CREATE or ALTER procedure StudentGpaAdjustment
as begin
	declare @firstname varchar(30);
	declare @lastname varchar(30);
	declare @gpadelta decimal(5,2);
	DECLARE cur CURSOR For
		select Firstname, Lastname, GpaDelta
			from adjustments
				where completed = 0;
	Open cur;
	fetch next from cur into @firstname, @lastname, @gpadelta;
	while @@FETCH_STATUS = 0
		begin

			UPDATE Student set
				GPA = GPA + @gpadelta
					where Firstname = @firstname and Lastname = @lastname;
/*
			SELECT Firstname, Lastname, GPA, @gpadelta 'Delta', (gpa + @gpadelta) 'New GPA' from Student 
				where Firstname = @firstname and Lastname = @lastname;
*/
			fetch next from cur into @firstname, @lastname, @gpadelta; 
		end
	CLOSE cur;
	deallocate cur;

	UPDATE Adjustments set
		Completed = 1
		where Completed = 0
end
go
exec StudentGpaAdjustment
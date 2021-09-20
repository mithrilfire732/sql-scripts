Create or alter procedure CountToTen
as
begin
	declare @Index int = 1
	declare @stop int = 10

	WHILE @index < @stop
	BEGIN
				set @index = @Index + 1;
				PRINT '@Index is ' + cast(@Index as varchar(5));

	END
end;
GO
execute CountToTen;
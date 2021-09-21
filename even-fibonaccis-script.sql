--create table where each fibonacci number is deposited
use bootcamp;
go
create table FibNums(
Id int primary key identity(1,1),
Fibonacci int not null unique
);
go

-- create script to generate fibonacci numbers and insert them into table
create or alter procedure genFibbies
as
begin
	declare @number1 int = 0
	declare @number2 int = 1
	declare @number3 int = 0

	delete from FibNums
	while @number3 <= 1000000
		begin
			set @number3 = @number1 + @number2
			set @number1 = @number2
			set @number2 = @number3
			insert into FibNums
				(Fibonacci)
				values
				(@number3);
		end
end
go
exec genFibbies;
go
--	select statement to return even numbers only
select Fibonacci from FibNums
	where Fibonacci%2 = 0;
select sum (Fibonacci) 'Sum of Evens' from FibNums
	where Fibonacci%2 = 0
go
drop table FibNums;
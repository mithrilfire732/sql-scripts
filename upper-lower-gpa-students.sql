declare @uppergpa decimal (5,1) = 3.5
-- (5,1) means (significant digits, decimal degit) largest number it can hold is 9999.9
declare @lowergpa decimal (5,1) = 2.5
select * from student
where gpa >= @uppergpa;
select * from student
where gpa <= @lowergpa;
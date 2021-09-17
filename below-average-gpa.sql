select * from student
where GPA < (select avg(gpa) from student);
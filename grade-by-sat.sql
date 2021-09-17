select lastname, 'A' as 'ABC' from Student
	where SAT > 1200
union
select lastname, 'B' as 'ABC' from Student
	where SAT <= 1200 and SAT >= 1000
union
select lastname, 'C' as 'ABC' from Student
	where SAT < 1000
order by ABC;
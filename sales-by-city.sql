select City, count(*) 'Customers', sum(sales) 'Total Sales'
	from customers
	where sales > 20000
	group by city
	having sum(sales) > 600000
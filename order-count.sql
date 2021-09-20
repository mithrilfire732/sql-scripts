-- display number of orders for each customer
select c.Name, count(o.date) 'Orders' from Customers c
left join orders o
	on o.customerID = c.ID
group by c.ID, c.Name
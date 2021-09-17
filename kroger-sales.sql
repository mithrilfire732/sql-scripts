select * from customers c
 join orders o on c.Id = o.CustomerId
 where name = 'Kroger'
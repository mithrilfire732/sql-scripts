use PrsDb;
select PartNbr, Name, Price, Quantity, ProductId from Products as p
	join Requestlines as rl on rl.ProductId = p.Id
	join Requests as r on r.Id = rl.RequestId
	where p.VendorId = 1 and r.Status = 'Approved';
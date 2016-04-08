
select Distinct c.* from CustomerTable as c, PurchaiseTable as p
where c.CustomerId=p.CustomerId and p.ProductName='Молоко' 
and c.CustomerId NOT IN
(
	select CustomerId from PurchaiseTable 
	where ProductName='Сметана'
	and PurchaiseDatetime >= (select GETDATE() - 1 month)
)

﻿
select Distinct c.* from CustomerTable as c, PurchaiseTable as p
where c.CustomerId=p.CustomerId and p.ProductName='������' 
and c.CustomerId NOT IN
(
	select CustomerId from PurchaiseTable 
	where ProductName='�������'
	and PurchaiseDatetime >= (select GETDATE() - 1 month)
)

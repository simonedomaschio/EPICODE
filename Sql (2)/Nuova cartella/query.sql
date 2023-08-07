select *
from [dbo].[OrderDetail]
order by prezzo desc

select *
from [dbo].[OrderHeader]
order by [OrderDate] 

select IdSocio , ordini = count(1)
from orderheader
group by IdSocio


select * 
from OrderHeader 
where OrderDate > '01-05-2023'


select *
from OrderHeader
where OrderDate between '01-02-2023' and '01-04-2023'


select IdProduct, tot_Venduto = sum(quantity)
from [dbo].[OrderDetail]
group by IdProduct


select P.IdProduct, P.Descrizione, tot_Venduto = sum(quantity)
from [dbo].[OrderDetail] as O
join [dbo].[Product] as P on O.IdProduct = P.IdProduct
group by P.IdProduct, P.Descrizione


select P.IdProduct, P.Descrizione, media_venduto = avg(prezzo)
from [dbo].[OrderDetail] as O
join [dbo].[Product] as P on O.IdProduct = P.IdProduct
group by P.IdProduct, P.Descrizione


select Orderid, s.[Ragione Sociale], p.OrderDate
from [dbo].[OrderHeader] as P
join [dbo].[Supplier] as S on S.IdSupplier = P.IdSupplier
where S.[Ragione Sociale] like '%pernod%'


select P.Descrizione, P.qxc,  D.Quantity, D.Prezzo 
from OrderHeader H
join OrderDetail as D on H.OrderId = d.OrderId and IdSupplier = 2
join Product as P on P.IdProduct = d.IdProduct and QxC = 1







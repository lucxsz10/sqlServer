select * from Customers

select a.CompanyName, a.City 
from Customers a, Customers  b
where a.City = b.city

select Companyname, City, count(City) as 'Quantos Lojas Tem em Cada Cidade' from Customers 
group by CompanyName, City

select a.OrderID, a.ProductId, a.UnitPrice, a.Quantity
from [Order Details] a, [Order Details] b
where a.Quantity = b.Quantity

select * from dbo.Products

select a.ProductID, a.ProductName, a.QuantityPerUnit, a.UnitPrice, a.CategoryID, a.SupplierID 
from dbo.Products a, dbo.Products b 
where a.SupplierID = b.SupplierID

select * from dbo.[Order Details]

select distinct a.Discount, count(a.Discount) as 'Contador' from dbo.[Order Details] a, dbo.[Order Details] b
where a.Discount = b.Discount
group by a.Discount
order by a.Discount asc 

select distinct a.OrderId, a.Discount, b.OrderId, b.Discount from dbo.[Order Details] a, dbo.[Order Details] b 
where a.Discount = b.Discount

select JobTitle from HumanResources.Employee 
where JobTitllle = (select N)
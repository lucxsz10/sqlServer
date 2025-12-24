select * from Production.Product
select count(size) from Production.Product

select ProductID, ListPrice from Production.product
order by ListPrice desc

select top 10 ProductID, ListPrice from Production.Product
order by ListPrice desc

select top 4 ProductID, Name, ProductNumber from Production.product 

select * from Production.TransactionHistory
where  ReferenceOrderID  not between 41600 and 53454
order by ReferenceOrderID asc 

select * from Person.Person
select MiddleName from Person.Person 
where MiddleName in ('Lee')

select * from Person.Person 
where LastName in ('Miller')

select * from HumanResources.Employee 

select * from HumanResources.Employee 
where JobTitle in ('Design Engineer')


select * from Person.Person 
where FirstName like '%er%'

select * from Person.Person 
where FirstName not Like 'Te%'

select * from Production.product 
where ListPrice > '1500'
order by ListPrice asc

select * from Person.Person 
where LastName like 'P%'
order by LastName asc

select * from Person.CountryRegion 
select distinct * from Person.CountryRegion 
order by Name asc

select * from Production.Product
where Color = 'Red' and ListPrice Between '500' and '1000'

select * from Production.Product 
where Name like '%Road%'

select * from Production.TransactionHistory
select sum(actualCost) as 'todos os custos atuais'
from Production.TransactionHistory

select min(ActualCost) as 'O custo minimo'
from Production.TransactionHistory

select max(ActualCost) as 'O custo maximo'
from Production.TransactionHistory

select avg(ActualCost) as 'Media do Custo Atual'
from Production.TransactionHistory

select * from Sales.SalesOrderHeader
select ProductID, count(ProductID) as  'Numero de Vendas'
from Sales.SalesOrderDetail
group by ProductID

select * from Sales.SalesOrderDetail
select sum(CommissionPct) from Sales.SalesPerson

select OrderQty, count(OrderQty) from Sales.SalesOrderDetail
group by OrderQty

select FirstName, count(FirstName) from Person.Person
group by FirstName

select distinct firstName from Person.Person

select LastName, count(LastName) from Person.Person
group by LastName

select color, avg(ListPrice) as 'Média de preço de produtos por cor ' from Production.Product
group by Color
select * from Production.Product

select MiddleName, count(MiddleName) As 'Pessoas com o mesmo middleName ' from Person.Person
group by MiddleName

select * from Sales.SalesOrderDetail

select ProductID, avg(OrderQty) as 'média de produtos vendidos na loja'from Sales.SalesOrderDetail
group by ProductID 


select top 30 ProductID, sum(LineTotal) as 'Os valores dos 30 maiores produtos vendidos' from Sales.SalesOrderDetail
group by ProductID
order by sum(LineTotal) desc

select * from Production.WorkOrder
select ProductID,  count(OrderQty) as 'Quantos produtos tem na ordem de serviço', avg(OrderQty) as 'média de produtos que tem na ordem de serviço'  from Production.WorkOrder 
group by ProductID 
order by count(OrderQty), avg(OrderQty) asc

select count(firstName)as 'Nomes que começam com Mr...' from person.person
where FirstName like 'Mr%'
having count(FirstName) > 10

select FirstName, count(FirstName) as 'Quantidade de nomes com Mr... no começo' from Person.Person
where title = 'Mr.'
group by FirstName
having count(FirstName) > 10

select * from Person.CountryRegion

select Name, count(Name) as 'Numero de clientes por estado ' from Person.CountryRegion
where Name like 'Ar%'
group by Name

Select * from Sales.SalesOrderDetail
select ProductID, count(OrderQty) as 'produtos com mais vendas' from Sales.SalesOrderDetail 
group by ProductID
having count(OrderQty) > 60

select * from Person.Address
select AddressID, count(StateProvinceId) as 'Províncias com mais ocorrências' from Person.Address
group by AddressID
having count(StateProvinceID) <= 1000

select * from Sales.SalesOrderDetail
select ProductID, avg(LineTotal) as 'Produtos que não trazem o minimo de Faturamento'
from Sales.SalesOrderDetail
group by ProductId
having avg(LineTotal) < 100000

select * from Sales.SpecialOffer
select Category, count(category) as 'Quantidade' from Sales.SpecialOffer
group by Category

select * from Sales.Store
select SalesPersonID, count(Name) as 'Road Way' from Sales.Store 
where Name like 'Road%'
group by SalesPersonId

select Name, BusinessEntityID from Sales.Store 
where BusinessEntityID = '281'

select *  from Sales.Store

select BusinessEntityID, Name from Sales.Store 
group by BusinessEntityID, Name
having BusinessEntityID > 500

select top 10 BusinessEntityID, Name from Sales.Store 
group by BusinessEntityID, Name
having BusinessEntityID > 500

select * from Production.WorkOrder
select ProductId,OrderQty, StockedQty from Production.WorkOrder
where StockedQty <> OrderQty
group by ProductID, OrderQty, StockedQty

select * from Production.Product
select * from Production.ProductDescription


select * from Sales.SalesPerson
select * from Sales.SalesPersonQuotaHistory 

select a.BusinessentityID,b.SalesQuota,b.QuotaDate, Bonus, a.CommissionPct from Sales.SalesPerson a 
inner  join Sales.SalesPersonQuotaHistory b on a.BusinessEntityID = B.BusinessEntityID

select * from Person.Person
select * from Person.EmailAddress

select a.BusinessEntityID,  b.EmailAddress, a.FirstName, a.MiddleName, a.LastName from Person.Person a 
inner join Person.EmailAddress b on a.BusinessEntityID = b.BusinessEntityID 

select * from HumanResources.Employee
select * from HumanResources.EmployeeDepartmentHistory

select top 10  a.BusinessEntityID, b.DepartmentID, a.LoginId, a.Jobtitle from HumanResources.Employee a
inner join HumanResources.EmployeeDepartmentHistory b on a.BusinessEntityID = b.BusinessEntityID
where b.DepartmentID  = 7

select * from Person.PersonPhone
select * from Person.PhoneNumberType

select a.BusinessEntityID, Name, a.PhoneNumber, b.PhoneNumberTypeId from Person.PersonPhone a
inner join Person.PhoneNumberType b on a.PhoneNumberTypeID = b.PhoneNumberTypeID
where a.PhoneNumberTypeID  <> 2

select * from Person.StateProvince 
select * from Person.Address 

select a.StateProvinceId, a.Name, b.City from Person.StateProvince a
right join Person.Address b
on a.StateProvinceID = b.StateProvinceID 

select a.StateProvinceId, a.Name, b.City from Person.StateProvince a
inner join  Person.Address b
on a.StateProvinceID = b.StateProvinceID 

select a.StateProvinceId, a.Name, b.City from Person.StateProvince a
left join Person.Address b
on a.StateProvinceID = b.StateProvinceID 

select a.StateProvinceId, a.Name, b.City from Person.StateProvince a
right join Person.Address b
on a.StateProvinceID = b.StateProvinceID 

select * from Person.Person
select * from Sales.PersonCreditCard

select a.BusinessEntityID, b.CreditCardID, a.FirstName, a.LastName
from Person.Person a 
left join Sales.PersonCreditCard b
on a.BusinessEntityID = b.BusinessEntityID
where FirstName like 'Ca%'


select * from Person.Address 
select * from Person.BusinessEntityAddress


select a.AddressID, a.City, a.StateProvinceID, a.AddressLine1
from Person.Address a 
left join Person.BusinessEntityAddress b
on a.AddressID = b.AddressID
where StateProvinceID <> 79 

select * from Person.Person 
select * from Person.PersonPhone

select * from  HumanResources.Employee select * from person.Person 
 
select BusinessEntityID, NationalIdnumber, LoginID, JobTitle from HumanResources.Employee 
where JobTitle = 'Design Engineer ' and Jobtitle <> 'Mr.'
union 
select BusinessEntityID, FirstName, LastName, Title from Person.Person
where FirstName like 'Ca%'

select * from Person.Person

select BusinessEntityID, FirstName, LastName from Person.Person
Where BusinessEntityID like '1%'

select * from Person.Person 

select BusinessEntityID, FirstName, LastName from Person.Person
where BusinessEntityID like '%1%'
union 
select BusinessEntityID, FirstName, LastName from Person.Person
where BusinessEntityID like '%3%'
union 
select BusinessEntityID, FirstName, LastName from Person.Person
where BusinessEntityID like '%5%'
union 
Select BusinessEntityID, FirstName, LastName from Person.Person
where BusinessEntityID like '%7%'
union 
select BusinessEntityID, FirstName, LastName from Person.Person
where BusinessEntityID like '%9%'

select * from Person.Person

select businessEntityID, Count(EmailPromotion) from Person.Person
group by BusinessEntityID, EmailPromotion

select * from Person.Person

select BusinessEntityID, count(FirstName) as 'Nome'
from Person.Person
where Title like '%Mr&'
group by BusinessEntityID, FirstName

select * from Production.Product

select a.Name,a.color from Production.Product a, Production.Product b
where a.Color = b.color
 

                                      <-------  PROJECT: QUERYING A LARGE RELATIONAL DATABASE ------->

 -- A.) Get All The Details From The Person Table Including Email Id, Phone Number And Phone Number Type ?

 -- ANS 

SELECT * FROM [person].[person]

SELECT * FROM [person].[personPhone]

SELECT * FROM [person].[phoneNumberType]

SELECT * FROM [person].[EmailAddress]

---- IN OTHER WAY(INNER JOIN) ----

SELECT p. *,ph.PhoneNumber,pht.NAME,pe.EmailAddress FROM [person].[person] as p
INNER JOIN
[Person].[PersonPhone] as ph
ON p.BusinessEntityID=ph.BusinessEntityID
INNER JOIN 
[person].[PhoneNumberType] AS pht
ON ph.PhoneNumberTypeID= pht.PhoneNumberTypeID
INNER JOIN
[Person].[EmailAddress] AS pe
ON pe.BusinessEntityID=p.BusinessEntityID



---- IN OTHER WAY(WITHOUT INNER JOIN) ----

SELECT P.*,ph.PhoneNumber,pht.NAME,pe.EmailAddress FROM [person].[Person] AS P,
[Person].[PersonPhone] AS ph,
[Person].[PhoneNumberType] AS pht,
[Person].[EmailAddress] AS pe
WHERE p.BusinessEntityID=ph.BusinessEntityID AND ph.PhoneNumberTypeID=pht.PhoneNumberTypeID
AND pe.BusinessEntityID=p.BusinessEntityID



-- B.) Get The Details Of The Sales Header Order Made In May 2011 ?
-- ANS-

SELECT * FROM Sales.SalesOrderHeader


SELECT * FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011 AND MONTH(OrderDate) = 5;


-- C.) Get The Details Of The Sales Details Order Made In The Month Of May 2011 ?
-- ANS-

SELECT * FROM Sales.SalesOrderDetail
SELECT * FROM Sales.SalesOrderHeader


SELECT * 
FROM Sales.SalesOrderDetail AS sod
INNER JOIN Sales.SalesOrderHeader AS soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE YEAR(soh.OrderDate) = 2011 AND MONTH(soh.OrderDate) =5;


-- D.) Get The Total Sales Made In May 2011 ?
--ANS-

SELECT * FROM Sales.SalesTerritory
SELECT * FROM Sales.SalesOrderDetail

SELECT SUM(LINETOTAL) AS TotalSalesMay2011 FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (SELECT SalesOrderID FROM Sales.SalesOrderHeader
WHERE MONTH (OrderDate) = 5 AND YEAR (ORDERDATE) = 2011) 



 -- E.) Get The Total Sales Made In The Year 2011 By Month Order By Increasing Sales ?
 -- ANS- 

SELECT YEAR(OrderDate) AS SalesYear, MONTH(OrderDate) AS SalesMonth, SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY TotalSales DESC;



 -- F.) Get The Total Sales Made To The Customer With FirstName='gustavo' And LastName ='achong' ?
 -- ANS-


SELECT SUM(TotalDue) AS TotalSalesToGustavoAchong
FROM Sales.SalesOrderHeader AS soh
JOIN Person.Person AS p ON soh.SalesPersonID = p.BusinessEntityID
WHERE p.FirstName = 'Gustavo' AND p.LastName = 'Achong';

---- IN OTHER WAY(INNER JOIN) ----

SELECT * FROM Sales.SalesPerson AS SP
INNER JOIN Person.Person AS PP
ON SP.BUSINESSENTITYID =PP.BUSINESSENTITYID
WHERE FirstName='Gustavo' AND LastName = 'Achong'

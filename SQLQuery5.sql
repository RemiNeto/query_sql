SELECT * FROM Person.Address;
SELECT * FROM Sales.SalesOrderDetail;
SELECT * FROM person.Person;
SELECT * FROM HumanResources.Employee;
SELECT * FROM Person.EmailAddress;
SELECT * FROM Production.Product;
SELECT * FROM Production.WorkOrder;
SELECT * FROM Person.StateProvince;


/*DESAFIO 1*/
SELECT FirstName, LastName FROM person.Person;
/*DESAFIO 2*/
SELECT DISTINCT LastName FROM person.Person;
/*DESAFIO 3*/
SELECT Name FROM production.Product WHERE Weight > 500 and Weight < 700;
/*DESAFIO 4*/
SELECT * FROM HumanResources.Employee WHERE MaritalStatus = 'm' and SalariedFlag = 1;
/*DESAFIO 5*/
SELECT * FROM Person.Person WHERE FirstName = 'peter' and LastName = 'krebs';
SELECT * FROM Person.EmailAddress WHERE BusinessEntityID = 26;
/*DESAFIO 6*/
SELECT COUNT(DISTINCT Name) FROM Production.Product;
/*DESAFIO 7*/
SELECT COUNT(Size) FROM Production.Product;
/*DESAFIO 8*/
SELECT COUNT(DISTINCT Size) FROM Production.Product;
/*DESAFIO 9*/
SELECT TOP 10 ProductID FROM Production.Product ORDER BY ListPrice DESC;
/*DESAFIO 10*/
SELECT TOP 4 Name, ProductNumber FROM Production.Product ORDER BY ProductID ASC;
/*DESAFIO 11*/
SELECT COUNT(ListPrice) FROM Production.Product WHERE ListPrice > 1500;
/*DESAFIO 12*/
SELECT COUNT(LastName) FROM Person.Person WHERE LastName like 'p%';
/*DESAFIO 13*/
SELECT COUNT(DISTINCT City) FROM Person.Address;
/*DESAFIO 14*/
SELECT DISTINCT City FROM Person.Address;
/*DESAFIO 15*/
SELECT COUNT(*) FROM Production.Product WHERE Color = 'RED' AND ListPrice BETWEEN 500 AND 1000;
/*DESAFIO 16*/
SELECT COUNT(*) FROM Production.Product WHERE Name like '%road%';
/*DESAFIO 17*/
SELECT MiddleName, COUNT(MiddleName) AS 'QUANTIDADE' FROM Person.Person GROUP BY MiddleName;
/*DESAFIO 18*/
SELECT ProductID, AVG(OrderQty) AS 'MÉDIA' FROM Sales.SalesOrderDetail GROUP BY ProductID ORDER BY ProductID ASC;
/*DESAFIO 19*/
SELECT TOP 10 ProductID, SUM(LineTotal) FROM SALES.SalesOrderDetail GROUP BY ProductID ORDER BY SUM(LineTotal) DESC;
/*DESAFIO 20*/
SELECT ProductID, COUNT(ProductID) AS 'QUANTIDADE', AVG(OrderQty) AS 'MÉDIA' FROM Production.WorkOrder GROUP BY ProductID;
/*DESAFIO 21*/
SELECT StateProvinceID, COUNT(StateProvinceID) AS 'QUANTIDADE' FROM Person.Address GROUP BY StateProvinceID HAVING COUNT(StateProvinceID) > 1000;
/*DESAFIO 22*/
SELECT ProductID, AVG(LineTotal) AS 'VENDAS' FROM SALES.SalesOrderDetail GROUP BY ProductID HAVING AVG(LineTotal) < 1000000 ORDER BY ProductID;
/*DESAFIO 23*/
SELECT FirstName AS "PRIMEIRO NOME", LastName AS "SOBRENOME" FROM person.Person;
/*DESAFIO 24*/
SELECT ProductNumber AS "NÚMERO DO PRODUTO" FROM Production.Product;
/*DESAFIO 25*/
SELECT UnitPrice AS "PREÇO UNITÁRIO" FROM Sales.SalesOrderDetail;
/*DESAFIO 26*/
SELECT P.ListPrice, P.Name, PC.Name 
FROM Production.Product P 
INNER JOIN Production.ProductSubcategory PC ON PC.ProductCategoryID = P.ProductSubcategoryID
/*DESAFIO 27*/
SELECT PN.PhoneNumberTypeID, PN.Name, PP.BusinessEntityID, PP.PhoneNumber
FROM Person.PhoneNumberType PN 
INNER JOIN Person.PersonPhone PP ON PP.PhoneNumberTypeID = PN.PhoneNumberTypeID
ORDER BY PP.BusinessEntityID
/*DESAFIO 28*/
SELECT PS.StateProvinceID,  PA.AddressID, PS.Name, PA.City
FROM Person.StateProvince PS
INNER JOIN Person.Address PA ON PA.StateProvinceID = PS.StateProvinceID
ORDER BY PA.StateProvinceID
/*DESAFIO 29*/
SELECT *
FROM Person.Address
WHERE StateProvinceID IN 
(SELECT StateProvinceID FROM Person.StateProvince WHERE Name = 'ALBERTA')
/*DESAFIO 30*/
SELECT ProductID, DATEPART(MONTH,StartDate) AS MÊS
FROM Production.WorkOrder
/*DESAFIO 31*/
SELECT CONCAT(FirstName,' ', LastName) AS 'NOME COMPLETO',
UPPER(FirstName) AS 'MAIÚSCULA',
LOWER(LastName) AS 'MINÚSCULA',
LEN(CONCAT(FirstName,' ', LastName)) AS TAMANHO,
SUBSTRING(FirstName,1,3) AS ABREVIAÇÃO
FROM Person.Person
/*DESAFIO 32*/
SELECT ProductNumber, REPLACE(ProductNumber, '-', '_') AS MUDAR
FROM Production.Product
/*DESAFIO 33*/
SELECT MIN(LineTotal) AS MENOR, MAX(LineTotal) AS MAIOR, AVG(LineTotal) AS MÉDIA
FROM Sales.SalesOrderDetail
/*DESAFIO 34*/
/*DESAFIO 35*/
/*DESAFIO 36*/
/*DESAFIO 37*/
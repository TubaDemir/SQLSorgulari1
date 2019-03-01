
SELECT*FROM Categories WHERE CategoryID=2

INSERT INTO Employees(FirstName,LastName) VALUES('tuba', 'demir')

SELECT FirstName AS Ýsimler,LastName AS Soyisimler  FROM Employees WHERE City='London'  ORDER BY FirstName, LastName

SELECT*FROM Products WHERE (UnitPrice>=50 and UnitPrice<=80)

SELECT*FROM Products WHERE UnitPrice BETWEEN 50 AND 80

SELECT CompanyName, Address, City, Country FROM Customers WHERE CompanyName  NOT like 'A%'

SELECT CompanyName, Address, City, Country FROM Customers WHERE Fax is NULL

SELECT*FROM Customers WHERE CompanyName like 'A%' and Country='Germany'

SELECT*FROM Customers WHERE Country  NOT like '%A'

SELECT TOP 5 ProductName,UnitPrice FROM Products ORDER BY UnitPrice DESC

SELECT CompanyName FROM Customers WHERE CompanyName like '%RESTAURANT%'

SELECT OrderID, OrderDate FROM Orders WHERE OrderDate BETWEEN '1996-07-04' AND '1996-12-31'

SELECT*FROM Categories WHERE Description like 'S%' or  Description like 'D%'

SELECT DISTINCT Country FROM Customers 

SELECT ProductName, UnitPrice, (UnitPrice*18)/100 AS [KDV] FROM Products

SELECT*FROM Customers

SELECT ProductName,UnitPrice, CategoryID FROM Products WHERE CategoryID IN(5,6,7)

SELECT*FROM Customers WHERE Country IN('Germany','USA','UK')
 
SELECT*FROM Categories WHERE Description like '%[pt]%'

SELECT FirstName,LastName FROM Employees where FirstName like '__n%'

 SELECT*FROM [Order Details]  ORDER BY UnitPrice DESC , Quantity ASC

 SELECT FirstName+' '+LastName AS Çalýsan ,'Plaka Kodu'=
 CASE
 WHEN City='London' THEN 45
 WHEN City='Seatle' THEN 67
 WHEN City='Kirkland' THEN 49
 WHEN City='Redmont' THEN 98
 WHEN City='Tacoma' THEN 25
 ELSE 0
  END
   FROM Employees 

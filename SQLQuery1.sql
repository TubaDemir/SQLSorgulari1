SELECT DISTINCT Title,TitleOfCourtesy FROM Employees
INSERT INTO Employees(LastName,FirstName) VALUES('tuba','demir')
select*from Products
SELECT COUNT(EmployeeID) FROM Employees

INSERT INTO Employees (LastName,FirstName,City) VALUES('tugce','demir','erzurum')
--INSERT INTO Employees (LastName,FirstName) VALUES('serap','kaya')

SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY];  
GO  
SELECT @@IDENTITY AS [@@IDENTITY];  
GO  

INSERT INTO Employees(FirstName,LastName)
SELECT FirstName, LastName 
FROM Employees WHERE  FirstName like 'A%'
 Select*from Employees

UPDATE Employees SET LastName ='k�bra' WHERE LastName='tuba'

UPDATE Employees SET FirstName ='Erman' , LastName = 'Kunter' where FirstName ='Andrew' and LastName='Fuller'

DELETE FROM Employees WHERE FirstName= 'tuba'

 DELETE FROM Employees WHERE EmployeeID BETWEEN 11 and 34

 SELECT*FROM [Order Details] WHERE OrderID=10258
 DELETE FROM Orders WHERE OrderID=10258

 SELECT LastName, FirstName FROM Employees WHERE FirstName like '%an%'
 SELECT LastName, FirstName FROM Employees WHERE FirstName ='%ne%'   --ayn� sey degil veya  yuzde yazmasak da olur
 
 SELECT EmployeeID LastName, FirstName FROM Employees WHERE FirstName  not like '%an%'
 
 SELECT EmployeeID LastName, FirstName FROM Employees WHERE FirstName  not like '%a%n%'--alan gelir mesela ama nal gelmez s�ral� bak�yor 
 SELECT ProductID AS UrunNo, ProductName AS UrunAd�, UnitPrice*5 AS sat�sfiyat� from Products

 select*from Products WHERE 1=1 -- SELECT*FROM ILE AYNI SONUCU GET�R�R.

 SELECT CompanyName,ContactName,City,Country FROM Customers WHERE Country='UK'
INSERT INTO Employees (FirstName,LastName,Title,TitleOfCourtesy) VALUES ('tuba','demir','M�hendis','yaz�l�m')
SELECT*FROM Employees
SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY];
UPDATE Employees SET Title='jUN�OR ' Where EmployeeID=SCOPE_IDENTITY();
DELETE FROM Employees Where EmployeeID=SCOPE_IDENTITY();

SELECT ProductName AS UrunAd�,UnitsOnOrder AS SiparisMiktar�, UnitsInStock AS StokMiktar�,(UnitsOnOrder- UnitsInStock) AS UrunSay�s� 
FROM Products where (UnitsOnOrder>UnitsInStock)



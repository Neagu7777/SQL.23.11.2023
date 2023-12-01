

----------------------------------------------------------------------------
--Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil

SELECT
    COUNT(*) AS OrderCount
FROM
    Orders
JOIN
    Shippers ON Orders.ShipperID = Shippers.ShipperID
JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
    Shippers.ShipperName = 'Speedy Express'
    AND Customers.Country = 'Brazil'


--------------------------------------------------------------------------------
--Вывести среднюю стоимость напитка (Beverages) из Brazil

SELECT
    AVG(Products.Price) AS AveragePrice
FROM
    Products
JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
    Categories.CategoryName = 'Beverages'
    AND Suppliers.Country = 'Brazil'



---------------------------------------------------------------------------------

Расчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилиясотрудника)
SELECT
    SUM(Products.Price * OrderDetails.Quantity) * .05 AS Salary,
    Employees.LastName
FROM Orders
         JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
         JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
         JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE
        Employees.LastName = 'Davolio'



--------------------------------------------------------------------------------------
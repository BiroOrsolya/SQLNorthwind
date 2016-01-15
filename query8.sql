SELECT CategoryName, ProductName UnitPrice
FROM Products
NATURAL JOIN Categories
WHERE UnitPrice
IN (

SELECT MIN(Unitprice)
FROM Products
NATURAL JOIN Categories
GROUP BY CategoryName
)
GROUP BY CategoryName
ORDER BY CategoryName;
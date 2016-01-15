SELECT b.CategoryName, a.ProductName, a.QuantityPerUnit, a.UnitsInStock 
FROM Products AS a 
INNER JOIN Categories AS b 
ON a.CategoryID = b.CategoryID 
WHERE a.UnitsInStock > 0 
ORDER BY CategoryName, ProductName;
SELECT YEAR(a.OrderDate) AS Date, d.CategoryName, c.ProductName, (b.Quantity * (b.UnitPrice) * (1 - b.Discount/100)) AS Total 
FROM Orders AS a 
INNER JOIN OrderDetails AS b 
INNER JOIN Products AS c 
ON b.ProductId = c.ProductId 
INNER JOIN Pategories AS d 
ON c.CategoryId = d.CategoryId 
GROUP BY Date;
SELECT a.OrderId, a.ProductId,b.ProductName,a.UnitPrice,a.Quantity,a.Discount,(a.Quantity * ( a.UnitPrice ) * ( 1 - a.Discount)) AS Total 
FROM OrderDetails AS a 
INNER JOIN Products AS b 
ON a.ProductId = b.ProductId
ORDER BY OrderId, ProductID;
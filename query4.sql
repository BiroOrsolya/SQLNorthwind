SELECT OrderId, SUM(Quantity * (UnitPrice) * (1 - Discount/100)) AS Total 
FROM OrderDetails 
GROUP BY OrderId
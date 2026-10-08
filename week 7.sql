USE SARAAURA;

SELECT * FROM Category;
SELECT DISTINCT CategoryName FROM Category;
SELECT * FROM Category WHERE Category > 3;
SELECT * FROM Category ORDER BY CategoryName;

SELECT * FROM Product;
SELECT DISTINCT Category FROM Product;
SELECT * FROM Product WHERE Price > 700;
SELECT * FROM Product ORDER BY Price;

SELECT * FROM Seller;
SELECT DISTINCT Address FROM Seller;
SELECT * FROM Seller WHERE SellerID > 215;
SELECT * FROM Seller ORDER BY SellerName;

SELECT * FROM Inventory;
SELECT DISTINCT AvailabilityStatus FROM Inventory;
SELECT * FROM Inventory WHERE Stock > 20;
SELECT * FROM Inventory ORDER BY Stock;

SELECT * FROM Orders;
SELECT DISTINCT OrderStatus FROM Orders;
SELECT * FROM Orders WHERE OrderStatus = 'PENDING';
SELECT * FROM Orders ORDER BY TotalAmt;

SELECT * FROM Order_Details;
SELECT DISTINCT ProductID FROM Order_Details;
SELECT * FROM Order_Details WHERE Qty > 1;
SELECT * FROM Order_Details ORDER BY UnitPrice;

SELECT * FROM Payment;
SELECT DISTINCT PaymentMode FROM Payment;
SELECT * FROM Payment WHERE PaymentStatus = 'SUCCESSFUL';
SELECT * FROM Payment ORDER BY PaymentAmount;

SELECT * FROM Review;
SELECT DISTINCT CustomerName FROM Review;
SELECT * FROM Review WHERE ReviewText LIKE '%Good%';
SELECT * FROM Review ORDER BY ReviewDate;

SELECT * FROM Rating;
SELECT DISTINCT Rating FROM Rating;
SELECT * FROM Rating WHERE Rating >= 4;
SELECT * FROM Rating ORDER BY Rating;
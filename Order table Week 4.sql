USE SARAAURA;
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    Qty INT,
    TotalAmt DECIMAL(10,2),
    OrderStatus VARCHAR(20),
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO Orders VALUES
(401, 'SANJAY', 101, 2, 800, 'PENDING'),
(402, 'RAJEE', 103, 1, 750, 'PENDING'),
(403, 'DHIVYA', 111, 2, 1100, 'DELIVERED'),
(404, 'POOJA', 126, 1, 850, 'PENDING'),
(405, 'THARUN', 105, 3, 1350, 'PENDING'),
(406, 'VIJAY', 102, 1, 650, 'PENDING'),
(407, 'HEMA', 104, 2, 1798, 'DELIVERED'),
(408, 'DHARSHINI', 106, 1, 850, 'PENDING'),
(409, 'THSIYA', 107, 2, 1100, 'DELIVERED'),
(410, 'KAMALI', 109, 1, 350, 'PENDING'),
(411, 'JANANI', 110, 2, 1200, 'DELIVERED'),
(412, 'NIVEDHA', 112, 1, 500, 'PENDING'),
(413, 'ROHITH', 113, 2, 1300, 'DELIVERED'),
(414, 'VISHWA', 114, 1, 750, 'PENDING'),
(415, 'MANOJ', 115, 3, 1350, 'DELIVERED'),
(416, 'PARE', 116, 2, 900, 'PENDING'),
(417, 'RIYAS', 117, 1, 550, 'DELIVERED'),
(418, 'SIVA', 118, 2, 1300, 'PENDING'),
(419, 'GOKUL', 126, 1, 850, 'DELIVERED'),
(420, 'RENUGA', 130, 2, 1800, 'PENDING');

CREATE TABLE Order_Details
(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Qty INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID)
    REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

INSERT INTO Order_Details VALUES
(501, 401, 101, 2, 400),
(502, 402, 103, 1, 750),
(503, 403, 111, 2, 550),
(504, 404, 126, 1, 850),
(505, 405, 105, 3, 450),
(506, 406, 102, 1, 650),
(507, 407, 104, 2, 899),
(508, 408, 106, 1, 850),
(509, 409, 107, 2, 550),
(510, 410, 109, 1, 350),
(511, 411, 110, 2, 600),
(512, 412, 112, 1, 500),
(513, 413, 113, 2, 650),
(514, 414, 114, 1, 750),
(515, 415, 115, 3, 450),
(516, 416, 116, 2, 450),
(517, 417, 117, 1, 550),
(518, 418, 118, 2, 650),
(519, 419, 126, 1, 850),
(520, 420, 130, 2, 900);

SELECT * FROM Orders;
SELECT * FROM Order_Details;

UPDATE Orders
SET OrderStatus = "Shipped"
WHERE OrderID = 401;

UPDATE Orders
SET OrderStatus = "Delivered"
WHERE OrderID = 402;

SELECT * FROM Orders
ORDER BY CustomerName;

SELECT * FROM Orders
WHERE CustomerName = "RAJEE"
ORDER BY OrderID;

SELECT * FROM Orders
WHERE OrderStatus = "Pending";

SELECT * FROM Orders
WHERE OrderStatus = "Shipped";

SELECT * FROM Orders
WHERE OrderStatus = "Delivered";


SELECT CustomerName, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerName;

SELECT CustomerName, SUM(TotalAmt) AS TotalAmountSpent
FROM Orders
GROUP BY CustomerName;
SELECT * FROM Orders;
SELECT * FROM Order_Details;

DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS Orders;
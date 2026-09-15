USE SARAAURA;
CREATE TABLE Seller
(
    SellerID INT PRIMARY KEY,
    SellerName VARCHAR(100),
    ContactNo VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150)
);

INSERT INTO Seller VALUES
(201, "GLOW BEAUTY HUB", "9876100001", "glowbeautyhub@gmail.com", "Chennai"),
(202, "SKINCARE WORLD", "9876100002", "skincareworld@gmail.com", "Madurai"),
(203, "BEAUTY BLOOM", "9876100003", "beautybloom@gmail.com", "Coimbatore"),
(204, "AURA COSMETICS", "9876100004", "auracosmetics@gmail.com", "Salem"),
(205, "PURE GLOW", "9876100005", "pureglow@gmail.com", "Trichy"),
(206, "BEAUTY MART", "9876100006", "beautymart@gmail.com", "Chennai"),
(207, "GLOW CARE", "9876100007", "glowcare@gmail.com", "Madurai"),
(208, "SKIN GLOW STORE", "9876100008", "skinglowstore@gmail.com", "Coimbatore"),
(209, "AURA BEAUTY", "9876100009", "aurabeauty@gmail.com", "Salem"),
(210, "COSMO CARE", "9876100010", "cosmocare@gmail.com", "Trichy"),
(211, "BEAUTY ESSENTIALS", "9876100011", "beautyessentials@gmail.com", "Chennai"),
(212, "GLOW HOUSE", "9876100012", "glowhouse@gmail.com", "Madurai"),
(213, "CARE & GLOW", "9876100013", "careandglow@gmail.com", "Coimbatore"),
(214, "BEAUTY ZONE", "9876100014", "beautyzone@gmail.com", "Salem"),
(215, "AURA SKIN", "9876100015", "auraskin@gmail.com", "Trichy"),
(216, "GLOW COSMETICS", "9876100016", "glowcosmetics@gmail.com", "Chennai"),
(217, "SKIN & BEAUTY", "9876100017", "skinbeauty@gmail.com", "Madurai"),
(218, "PURE BEAUTY", "9876100018", "purebeauty@gmail.com", "Coimbatore"),
(219, "AURA MART", "9876100019", "auramart@gmail.com", "Salem"),
(220, "BEAUTY POINT", "9876100020", "beautypoint@gmail.com", "Trichy"),
(221, "GLOW MART", "9876100021", "glowmart@gmail.com", "Chennai"),
(222, "SKIN CARE PLUS", "9876100022", "skincareplus@gmail.com", "Madurai"),
(223, "BEAUTY EXPRESS", "9876100023", "beautyexpress@gmail.com", "Coimbatore"),
(224, "COSMETIC CARE", "9876100024", "cosmeticcare@gmail.com", "Salem"),
(225, "SARAAURA BEAUTY", "9876100025", "saraaura@gmail.com", "Trichy"),
(226, "GLOW CARE PLUS", "9876100026", "glowcareplus@gmail.com", "Chennai"),
(227, "BEAUTY WORLD", "9876100027", "beautyworld@gmail.com", "Madurai"),
(228, "AURA GLOW", "9876100028", "auraglow@gmail.com", "Coimbatore"),
(229, "PURE SKIN STORE", "9876100029", "pureskinstore@gmail.com", "Salem"),
(230, "COSMO BEAUTY", "9876100030", "cosmobeauty@gmail.com", "Trichy");

SELECT * FROM Seller;

CREATE TABLE Inventory
(
    InventoryID INT PRIMARY KEY,
    ProductID INT,
    SellerID INT,
    AvailabilityStatus VARCHAR(20),
    Stock INT,

    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID),

    FOREIGN KEY (SellerID)
    REFERENCES Seller(SellerID)
);

INSERT INTO Inventory VALUES
(301, 101, 201, "AVAILABLE", 45),
(302, 102, 202, "UNAVAILABLE",0),
(303, 103, 203, "AVAILABLE", 25),
(304, 104, 204, "AVAILABLE", 20),
(305, 105, 205, "AVAILABLE", 35),
(306, 106, 206, "AVAILABLE", 25),
(307, 107, 207, "UNAVAILABLE",0),
(308, 109, 209, "AVAILABLE", 35),
(309, 110, 210, "AVAILABLE", 25),
(310, 111, 211, "AVAILABLE", 35),
(311, 112, 212, "AVAILABLE", 30),
(312, 113, 213, "AVAILABLE", 25),
(313, 114, 214, "AVAILABLE", 20),
(314, 115, 215, "AVAILABLE", 40),
(315, 116, 216, "AVAILABLE", 35),
(316, 117, 217, "AVAILABLE", 30),
(317, 118, 218, "AVAILABLE", 25),
(318, 119, 219, "AVAILABLE", 40),
(319, 120, 220, "AVAILABLE", 25),
(320, 126, 226, "AVAILABLE", 20),
(321, 127, 227, "AVAILABLE", 30),
(322, 128, 228, "AVAILABLE", 35),
(323, 129, 229, "AVAILABLE", 20),
(324, 130, 230, "AVAILABLE", 15);

SELECT * FROM Inventory;
SELECT * FROM Seller;
SELECT * FROM Product;

UPDATE Inventory
SET Stock = 20,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 307;
SELECT * FROM Inventory
WHERE InventoryID = 307;

UPDATE Inventory
SET Stock = 0,
    AvailabilityStatus = "UNAVAILABLE"
WHERE InventoryID = 311;
SELECT * FROM Inventory
WHERE InventoryID = 311;

UPDATE Inventory
SET Stock = 50,
    AvailabilityStatus = "AVAILABLE"
WHERE InventoryID = 302;
SELECT * FROM Inventory
WHERE InventoryID = 302;

UPDATE Seller
SET ContactNo = "9876543210"
WHERE SellerID = 215;
SELECT * FROM Seller
WHERE SellerID = 215;

DELETE FROM Inventory
WHERE InventoryID = 325;

SELECT * FROM Inventory;

SELECT * FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT * FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "AVAILABLE";

SELECT COUNT(*) FROM Inventory
WHERE AvailabilityStatus = "UNAVAILABLE";

SELECT * FROM Inventory
ORDER BY Stock DESC;

SELECT * FROM Inventory;
SELECT * FROM Seller;

DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Seller;
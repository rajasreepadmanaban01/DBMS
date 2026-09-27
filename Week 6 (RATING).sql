USE SARAAURA;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(200),
    ReviewDate DATE,
    FOREIGN KEY (ProductID)
    REFERENCES Product(ProductID)
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID)
    REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(701, 'SANJAY', 101, 'Very good product', '2026-09-21'),
(702, 'RAJEE', 103, 'Good quality', '2026-09-21'),
(703, 'DHIVYA', 111, 'Very effective', '2026-09-22'),
(704, 'POOJA', 126, 'Good brushes', '2026-09-22'),
(705, 'THARUN', 105, 'Nice product', '2026-09-23'),
(706, 'VIJAY', 102, 'Good moisturizer', '2026-09-23'),
(707, 'HEMA', 104, 'Excellent serum', '2026-09-24'),
(708, 'DHARSHINI', 106, 'Good foundation', '2026-09-24'),
(709, 'THSIYA', 107, 'Average product', '2026-09-25'),
(710, 'KAMALI', 109, 'Good eyeliner', '2026-09-25'),
(711, 'JANANI', 110, 'Very good', '2026-09-26'),
(712, 'NIVEDHA', 112, 'Good conditioner', '2026-09-26'),
(713, 'ROHITH', 113, 'Excellent', '2026-09-26'),
(714, 'VISHWA', 114, 'Good hair mask', '2026-09-27'),
(715, 'MANOJ', 115, 'Nice hair oil', '2026-09-27');

INSERT INTO Rating VALUES
(801, 701, 5),
(802, 702, 4),
(803, 703, 5),
(804, 704, 4),
(805, 705, 4),
(806, 706, 5),
(807, 707, 5),
(808, 708, 4),
(809, 709, 3),
(810, 710, 4),
(811, 711, 5),
(812, 712, 4),
(813, 713, 5),
(814, 714, 4),
(815, 715, 5);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Review
WHERE ProductID = 101;

SELECT * FROM Review
WHERE CustomerName = 'RAJEE';

SELECT * FROM Review
ORDER BY ReviewDate;

SELECT * FROM Rating
WHERE Rating = 5;

UPDATE Review
SET ReviewText = 'Excellent product'
WHERE ReviewID = 702;

SELECT * FROM Review
WHERE ReviewID = 701;

UPDATE Rating
SET Rating = 5
WHERE RatingID = 802;

SELECT * FROM Rating
WHERE RatingID = 802;

SELECT COUNT(*) FROM Review;

SELECT COUNT(*) FROM Rating;

SELECT * FROM Rating
ORDER BY Rating DESC;

DELETE FROM Rating
WHERE RatingID = 809;

DELETE FROM Review
WHERE ReviewID = 709;
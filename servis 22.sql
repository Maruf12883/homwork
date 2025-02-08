IF OBJECT_ID('customer', 'U') IS NOT NULL
    DROP TABLE customer;
GO

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    cust_name NVARCHAR(100) NOT NULL,
    city NVARCHAR(100) NOT NULL,
    grade INT NULL,
    salesman_id INT NOT NULL
);
GO

truncate table customer


INSERT INTO customer  VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),


(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005)


SELECT * FROM customer;

SELECT * FROM customer WHERE grade > 100;

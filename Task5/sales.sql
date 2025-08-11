
CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Customers (customer_name, city) VALUES
('Surya', 'Chennai'),
('Anjali', 'Bangalore'),
('Ravi', 'Mumbai'),
('Priya', 'Delhi');

INSERT INTO Orders (customer_id, product_name, quantity, price, order_date) VALUES
(1, 'Laptop', 1, 55000, '2023-05-15'),
(2, 'Shirt', 3, 1200, '2023-06-10'),
(1, 'Mouse', 2, 500, '2023-06-12'),
(3, 'Phone', 1, 20000, '2023-07-05');

--  INNER JOIN (Only matching records from both tables)
SELECT Customers.customer_id, Customers.customer_name, Orders.product_name, Orders.quantity, Orders.price
FROM Customers INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- LEFT JOIN (All customers, even if they have no orders)
SELECT Customers.customer_id, Customers.customer_name, Orders.product_name, Orders.quantity, Orders.price
FROM Customers LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- RIGHT JOIN (All orders, even if customer details are missing)
SELECT Customers.customer_id, Customers.customer_name, Orders.product_name, Orders.quantity, Orders.price
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;

-- FULL OUTER JOIN (All records from both tables)
SELECT Customers.customer_id, Customers.customer_name, Orders.product_name, Orders.quantity, Orders.price
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.customer_id, Customers.customer_name, Orders.product_name, Orders.quantity, Orders.price
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;


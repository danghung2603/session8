create database chbl;
use chbl;
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    stock_quantity INT NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0)
);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL CHECK (total_amount >= 0),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
SELECT COUNT(*) AS total_products
FROM Products;
SELECT SUM(total_amount) AS total_revenue
FROM Orders;
SELECT AVG(price) AS average_price
FROM Products;
SELECT MAX(total_amount) AS max_order_amount
FROM Orders;
SELECT MIN(total_amount) AS min_order_amount
FROM Orders;
SELECT COUNT(*) AS hanoi_customers_count
FROM Customers
WHERE city = 'Hanoi';

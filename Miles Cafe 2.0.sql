CREATE DATABASE IF NOT EXISTS miles_cafe;
USE miles_cafe;

CREATE TABLE IF NOT EXISTS menu_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(6, 2) NOT NULL,
    INDEX(item_name) -- Add an index to item_name
);

INSERT INTO menu_items (item_name, price) VALUES
('French Toast', 7.99),
('Bacon', 3.99),
('Sausage', 4.99),
('Cereal', 2.99),
('Breakfast Wrap', 5.99),
('Muffin', 1.99),
('Milk', 1.50),
('Orange Juice', 2.00),
('Bottled Water', 1.00);

CREATE TABLE IF NOT EXISTS inventory (
    item_name VARCHAR(255),
    quantity INT,
    PRIMARY KEY (item_name),
    FOREIGN KEY (item_name) REFERENCES menu_items(item_name)
);

INSERT INTO inventory (item_name, quantity) VALUES
('French Toast', 20),
('Bacon', 30),
('Sausage', 25),
('Cereal', 50),
('Breakfast Wrap', 40),
('Muffin', 35),
('Milk', 50),
('Orange Juice', 40),
('Bottled Water', 20);

CREATE TABLE IF NOT EXISTS staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(255) NOT NULL
);

INSERT INTO staff (staff_name) VALUES
('John Doe'),
('Jane Smith'),
('Michael Johnson');

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15) NOT NULL
);

INSERT INTO customers (customer_name, phone_number) VALUES
('Alice Brown', '502-123-4567'),
('Bob Green', '502-234-5678'),
('Charlie White', '502-345-6789');

CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(8, 2) NOT NULL,
    order_type ENUM('Online', 'Phone') NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (customer_id, order_date, total_amount, order_type) VALUES
(1, '2024-04-05 08:00:00', 15.98, 'Online'),
(2, '2024-04-05 08:15:00', 9.98, 'Phone'),
(3, '2024-04-05 08:30:00', 7.99, 'Online');

-- Reject orders not associated with area code '502'
DELETE FROM orders WHERE customer_id NOT IN (SELECT customer_id FROM customers WHERE phone_number LIKE '502%');

-- Display the final orders
SELECT * FROM orders;

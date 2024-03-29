DROP DATABASE IF EXISTS `Miles_Restaurant`;
CREATE DATABASE `Miles_Restaurant`;
USE `Miles_Restaurant`;






CREATE TABLE employee_demographics (
  employee_id INT NOT NULL,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INT,
  area_code INT,
  gender VARCHAR(10),
  birth_date DATE,
  PRIMARY KEY (employee_id)
);

CREATE TABLE louisville_area_codes (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    area_code VARCHAR(10) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL
);

CREATE TABLE breakfast_menu (
    item_name VARCHAR(255) PRIMARY KEY,
    quantity INT
);

CREATE TABLE Online_Orders (
    Order_Number INT
);

CREATE TABLE Customer_demographics (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL
);

CREATE TABLE Phone_Orders (
    Order_Number INT
);

INSERT INTO employee_demographics (employee_id, first_name, last_name, age, area_code, gender, birth_date)
VALUES
(1,'Leslie', 'Knope', 44, 270, 'Female','1979-09-25'),
(3,'Tom', 'Haverford', 36, 502, 'Male', '1987-03-04'),
(4, 'April', 'Ludgate', 29, 270, 'Female', '1994-03-27'),
(5, 'Jerry', 'Gergich', 61, 502, 'Male', '1962-08-28'),
(6, 'Donna', 'Meagle', 46, 502, 'Female', '1977-07-30'),
(7, 'Ann', 'Perkins', 35, 502, 'Female', '1988-12-01'),
(8, 'Chris', 'Traeger', 43, 270, 'Male', '1980-11-11'),
(9, 'Ben', 'Wyatt', 38, 270, 'Male', '1985-07-26'),
(10, 'Andy', 'Dwyer', 34, 502, 'Male', '1989-03-25'),
(11, 'Mark', 'Brendanawicz', 40, 502, 'Male', '1983-06-14'),
(12, 'Craig', 'Middlebrooks', 37, 502, 'Male', '1986-07-27');


INSERT INTO louisville_area_codes (area_code, city, state)
VALUES ('502', 'Louisville', 'KY'),
       ('270', 'Louisville', 'KY');

INSERT INTO breakfast_menu (item_name, quantity) VALUES
('Eggs Benedict', 24),
('Pancakes', 30),
('Waffles', 50),
('French toast', 100),
('Omelets', 200),
('Quiché', 10),
('Belgian waffles', 15),
('Smoked salmon on a bagel', 5),
('Avocado toast', 15),
('Brunch casserole', 30),
('Cereal', 100),
('Cinnamon rolls', 200),
('Coffee cake', 50),
('Crêpes', 30),
('Croissants', 200),
('Frittatas', 50),
('Fruits', 100),
('Muffins', 55),
('Salads', 100),
('Pastries', 20),
('Donuts', 200),
('Apple Juice', 50),
('Orange Juice', 100),
('Milk', 20),
('Water Bottles', 200);

INSERT INTO Customer_demographics (first_name, last_name, age, email, phone_number)
VALUES 
('Alisa', 'Carter', 28, 'a.carter@gmail.com', '270-412-5892'),
('John', 'Smith', 35, 'j.smith@yahoo.com' , '502-412-6123'),
('Mary', 'Sue', 78, 'M.Sue@hotmail.com' , '502-534-8741'),
('Billy', 'Bob', 90, 'b.bob@aol.com' , '270-712-6623'),
('Carmine', 'Bell', 29, 'c.bell@gmail.com' , '502-461-4800'),
('David', 'Roberts', 41, 'd.roberts@yahoo.com' , '270-867-6123'),
('Jenny', 'Smith', 35, 'j.smith867@yahoo.com' , '502-867-5309'),
('Evelyn', 'Pekins', 39, 'e.pekins@gmail.com' , '270-571-6591'),
('Myles', 'Green', 18, 'M.Green@att.com' , '502-712-4581'),
('Joe', 'Brooks', 54, 'j.brooks@twc.com' , '502-716-1984'),
('Doug', 'Brown', 81, 'd.brown@att.com' , '270-462-6971'),
('Taylor', 'Litton', 32, 't.litten@yahoo.com' , '270-417-9714'),
('Megan', 'Martiny', 31, 'm.martiny@gmail.com' , '502-442-4823'),
('Blake', 'Patterson', 51, 'b.patternson@hotmail.com' , '502-813-8771'),
('Phyllis', 'Moss', 69, 'p.moss@twc.com' , '502-893-4471');

INSERT INTO Phone_Orders (Order_Number) VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20);

INSERT INTO Online_Orders (Order_Number) VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
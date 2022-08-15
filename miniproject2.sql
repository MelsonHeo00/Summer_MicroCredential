-- Creating the table for car insurances ID
CREATE TABLE insurances_ID (
insurance_ID int,
insurance varchar(255),
purchase_insurance_date date,
name varchar(255)
);

-- Inserting values for the insurances_ID
INSERT INTO insurances_ID (insurance_ID, insurance, purchase_insurance_date, name)
VALUES(234562, 'Geico', '2020-03-15', 'Bill'),
(432831, 'AllState', '2020-03-07', 'Jane'),
(173272, 'State Farm', '2021-07-03', 'Jack'),
(803252, 'USAA', '2020-08-04', 'James'),
(329424, 'Auto-Owners Insurance', '2019-03-04', 'Brock');

-- Creating the table for the insurances company
CREATE TABLE insurances_company (
model varchar(255),
purchase_insurance_date date,
price int,
state varchar(255)
);

-- Inserting the values for the insurances_company
INSERT INTO insurances_company (model, purchase_insurance_date, price, state) 
VALUES('Toyota', '2020-03-15', 5000, 'NJ'),
('Honda', '2020-03-07', 6000, 'FL'),
('BMW', '2021-07-03', 2500, 'CA'),
('Dodge', '2020-08-04', 3000, 'NY'),
('Chevrolet', '2019-03-04', 5500, 'TX');

-- Creating the table for each of the customers
CREATE TABLE insurances_customers (
name varchar(255),
email varchar(255),
age int,
state varchar(255)
);

-- Inserting the values for the insurances_customers
INSERT INTO insurances_customers (name, email, age, state)
VALUES ('Bill', 'billyjones@gmail.com', 28, 'NJ'),
('Jane', 'janeisthebest@gmail.com', 35, 'FL'),
('Jack', 'jackiscool@yahoo.com', 52, 'CA'),
('James', 'jameswashere@gmail.com', 27, 'NY'),
('Brock', 'brockrocks@hotmail.com', 25, 'TX');

-- Creating the table for each of the model information
CREATE TABLE insurances_contract (
insurance_ID int,
price int,
model varchar(255),
years int
);

-- Inserting the values for the insurance_information
INSERT INTO insurances_contract (insurance_ID, price, model, years)
VALUES (234672, 5000, 'Toyota', 3),
(432831, 6000, 'Honda', 5),
(173272, 2500, 'BMW', 2),
(803252, 3000, 'Dodge', 2),
(329424, 5500, 'Chevrolet', 4);

-- Commenting all of the table creation and insertion once created

-- 5 SQL commands 
SELECT * from insurances_customers WHERE email like '%@gmail.com';
-- checks all of the emails that have @gmail.com in the end

SELECT * from insurances_customers as ic LEFT JOIN insurances_ID as id ON ic.name = id.name;
-- combines the two tables with insurances customers and insurances ID by using the same column name

SELECT * from insurances_contract as ic LEFT JOIN insurances_company as ins ON ins.model = ic.model;
-- combines the two tables with insurances contracts and insurances company by using the same column model

SELECT * from insurances_company as ic LEFT JOIN insurances_ID as id ON id.purchase_insurance_date = ic.purchase_insurance_date;
-- combines the two tables with insurances company and insurances ID by using the same column purchase_insurance_date

SELECT * from insurances_company as ic RIGHT JOIN insurances_contract as id ON id.model = ic.model;
-- combines the two tables with insurances company and insurances ID by using the same column model


CREATE TABLE customers (customer_id INT PRIMARY KEY, customer_name VARCHAR(255), age INT, gender VARCHAR(10));
CREATE TABLE orders (order_id INT PRIMARY KEY, customer_id INT, order_date DATE, total_amount DECIMAL(10, 2), FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
INSERT INTO customers (customer_id, customer_name, age, gender) 
	VALUES (1, 'John Doe', 30, 'Male'), 
	(2, 'Jane Smith', 25, 'Female'),
	(3, 'Alice Johnson', 35, 'Female'),
	(4, 'Bob Brown', 40, 'Male'); 
INSERT INTO orders (order_id, customer_id, order_date, total_amount) 
	VALUES (101, 1, '2023-01-15', 150.50), 
	(102, 2, '2022-02-20', 200.25), 
	(103, 3, '2023-03-10', 180.75), 
	(104, 4, '2023-04-05', 300.00), 
	(105, 1, '2022-05-12', 175.80), 
	(106, 2, '2021-06-18', 220.40), 
	(107, 3, '2023-07-22', 190.30), 
	(108, 4, '2023-08-30', 250.60), 
	(109, 4, '2021-08-30', 250.60), 
	(110, 4, '2024-01-30', 250.60),
	(111, 4, '2023-08-30', 250.60);

SELECT * FROM CUSTOMERS

SELECT * FROM ORDERS

/*
Find average order amount for male and female customers
*/


SELECT 
       C.GENDER,
       AVG(O.TOTAL_AMOUNT ) AS AVERAGE_ORDER_AMOUNT
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID=O.CUSTOMER_ID
GROUP BY 1


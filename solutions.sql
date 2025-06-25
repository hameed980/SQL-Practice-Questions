-- first section (Querying Data):

-- QUESTION 1 (SOLUTION):
SELECT * FROM CUSTOMERS

-- QUESTION 2 (SOLUTION):
select customer_name,email  from customers

-- QUESTION 3 (SOLUTION):
select distinct country from customers

-- QUESTION 4 (SOLUTION):
SELECT order_total as "total_order_amount" from orders

-- QUESTION 5 (SOLUTION):
select concat(product_name,' ',category) as product_info  from products

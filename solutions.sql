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

-- QUESTION 6 (SOLUTION):
select email from customers
where email LIKE '%user1%'

-- QUESTION 7 (SOLUTION):
SELECT 
    order_id,
    customer_id,
    order_date,
    order_total,
    order_total * 0.10 as discount
FROM orders

-- QUESTION 8 (SOLUTION):
select distinct category
from products
order by category 

-- QUESTION 9 (SOLUTION):
select 
    category, 
    count(*) product_count 
from products
group BY category
having COUNT(*) >30

-- QUESTION 10 (SOLUTION):
select 
    top 5
    product_name,
    price 
from products
ORDER BY price DESC

-- second section: (Sorting Data):

-- QUESTION 11 (SOLUTION):
select * from customers
ORDER BY customer_name 

-- QUESTION 12 (SOLUTION):
select * from orders
ORDER by order_total DESC

-- QUESTION 13 (SOLUTION):
select * from products
order by category ASC,price asc

-- QUESTION 14 (SOLUTION):
select * from customers
order by country,customer_name

-- QUESTION 15 (SOLUTION):
select top 10
* from orders
order by order_date 


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

-- QUESTION 16 (SOLUTION):
select * from customers
ORDER BY SUBSTRING(email, CHARINDEX('@', email) + 1, LEN(email));

-- QUESTION 17 (SOLUTION):
select * from products
ORDER by len(product_name)

-- QUESTION 18 (SOLUTION):
select * from orders
order by order_date,order_total

-- QUESTION 19 (SOLUTION):
select customer_id, count(*) as no_orders from orders
GROUP by customer_id
ORDER by no_orders DESC

-- QUESTION 20 (SOLUTION):
select product_id, sum(quantity) as total_quantity_sold
from order_items
group by product_id
ORDER BY total_quantity_sold DESC

-- Section 3. (Limiting Rows):

-- QUESTION 21 (SOLUTION):
select 
    top 10 * from customers
    ORDER by customer_id

-- QUESTION 22 (SOLUTION):
select top 5 * from orders
order by order_date DESC

-- QUESTION 23 (SOLUTION):
select top 3 * from products
order by price

-- QUESTION 24 (SOLUTION):
SELECT TOP 7 *
FROM order_items
ORDER BY quantity DESC;

-- QUESTION 25 (SOLUTION):
select 
    top 5 customer_id,
    sum(order_total) as total_spent
from orders
GROUP by customer_id
order by total_spent DESC

-- QUESTION 26 (SOLUTION):
select top 10 *
from orders
ORDER by order_date DESC

-- QUESTION 27 (SOLUTION):
select
     top 3 country,
     count(*) as most_customers
from customers
group by country
ORDER by most_customers

-- QUESTION 28 (SOLUTION):
select 
    top 5 category,
    count(*) as product_count
from products
GROUP BY category
ORDER BY  product_count DESC

-- QUESTION 29 (SOLUTION):
select top 10 * from customers
where country = 'uk'
order by customer_id 

-- QUESTION 30 (SOLUTION):
SELECT TOP 5 *
FROM products
ORDER BY NEWID(); 
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

-- Section 4 (Filtering Data):

-- QUESTION 31 (SOLUTION):
SELECT * from customers
where country = 'usa'

-- QUESTION 32 (SOLUTION):
SELECT * from products
where price > 100

-- QUESTION 33 (SOLUTION):
select * from orders
where order_date BETWEEN '2024-11-07' and '2024-12-20'

-- QUESTION 34 (SOLUTION):
SELECT * from orders
where order_total > (select AVG(order_total) from orders)

-- QUESTION 35 (SOLUTION):
SELECT * from customers
where email like '%.com'

-- QUESTION 36 (SOLUTION):
select * from order_items
where quantity between 5 and 9

-- QUESTION 37 (SOLUTION):
select * from products
where category != 'books'

-- QUESTION 38 (SOLUTION):
SELECT * from customers
where customer_name like('a%')

-- QUESTION 39 (SOLUTION):

-- QUESTION 40 (SOLUTION):
SELECT *
FROM products
WHERE price % 2 = 0

-- Section 5 (Joining Tables):

-- QUESTION 41 (SOLUTION):
select c.customer_name,o.order_date from orders as o
INNER JOIN customers as c
ON o.customer_id = c.customer_id

-- QUESTION 42 (SOLUTION):
SELECT * from orders as o
FULL OUTER JOIN order_items as oi 
ON o.order_id = oi.order_id
FULL OUTER JOIN products as p 
ON oi.product_id = p.product_id

-- QUESTION 43 (SOLUTION):
select 
    p.product_id,
    p.product_name,
     Sum(oi.quantity) total_quantity_sold
from products as p
inner join order_items as oi
on p.product_id = oi.product_id
group by     p.product_id,p.product_name
ORDER by total_quantity_sold DESC

-- QUESTION 44 (SOLUTION):
select * from customers

-- QUESTION 45 (SOLUTION):
SELECT AVG(order_count * 1.0) AS avg_orders_per_customer
FROM (
    SELECT customer_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
) AS customer_orders;


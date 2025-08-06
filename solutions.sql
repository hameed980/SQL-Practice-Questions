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
SELECT DISTINCT c.customer_id, c.customer_name, c.email
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_name = 'Smartphone';


-- QUESTION 45 (SOLUTION):
SELECT AVG(order_count * 1.0) AS avg_orders_per_customer
FROM (
    SELECT customer_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
) AS customer_orders;


-- QUESTION 46 (SOLUTION):
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
ON c.customer_id = o.customer_id;

-- QUESTION 47 (SOLUTION):
SELECT *
FROM products AS p
LEFT JOIN order_items AS o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

-- QUESTION 48 (SOLUTION):
SELECT o.order_id, SUM(oi.quantity) AS total_items
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

-- QUESTION 49 (SOLUTION):
select c.customer_name,o.order_date,p.product_name
from customers as c 
JOIN orders as o
ON c.customer_id = o.customer_id
JOIN order_items as oi 
ON o.order_id = oi.order_id
JOIN products as p 
on oi.product_id = p.product_id

-- QUESTION 50 (SOLUTION).
select c.customer_id,c.customer_name ,MAX(o.order_date) as latest_orders
from customers as c 
JOIN orders as o
ON c.customer_id = o.customer_id
GROUP by c.customer_id,c.customer_name

-- Section 6 (Grouping Data):

-- QUESTION 51 (SOLUTION):
SELECT 
    c.country,
    COUNT(o.order_id) as no_of_orders 
from orders as o
join customers as c
on o.customer_id = c.customer_id
GROUP by  c.country

-- QUESTION 52 (SOLUTION):
select customer_id, avg(order_total) as average_order_value
from orders 
GROUP BY customer_id
ORDER by average_order_value DESC

-- QUESTION 53 (SOLUTION):
select category,COUNT(*) as no_of_products
from products
GROUP BY category

-- QUESTION 54 (SOLUTION):
select 
    product_id,
    SUM(quantity) as total_quantity_sold
FROM order_items
group BY product_id
order BY total_quantity_sold DESC

-- QUESTION 55 (SOLUTION):
SELECT 
    order_id,
    customer_id,
    order_date,
    MAX(order_total) as max_order 
from orders
GROUP BY order_id,order_date,customer_id
ORDER by max_order DESC

-- QUESTION 56 (SOLUTION):
SELECT DATEPART(HOUR, order_date) AS order_hour, COUNT(*) AS order_count
FROM orders
GROUP BY DATEPART(HOUR, order_date)
ORDER BY order_hour;

-- QUESTION 57 (SOLUTION):
SELECT 
    p.category,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products AS p
JOIN order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- QUESTION 58 (SOLUTION):
SELECT RIGHT(email, LEN(email) - CHARINDEX('@', email)) AS domain, COUNT(*) AS customer_count
FROM customers
GROUP BY RIGHT(email, LEN(email) - CHARINDEX('@', email))
ORDER BY customer_count DESC;

-- QUESTION 59 (SOLUTION):
select 
    c.country,
    sum(o.order_total) total_revenue
from customers as c
join orders as o
on c.customer_id = o.customer_id
GROUP by c.country
order by total_revenue DESC

-- QUESTION 60 (SOLUTION):
SELECT DATENAME(WEEKDAY, o.order_date) AS weekday, SUM(oi.quantity) AS total_items
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY DATENAME(WEEKDAY, o.order_date)
ORDER BY total_items DESC

-- Section 7 .(Subqueries):

-- QUESTION 61 (SOLUTION):
SELECT 
    customer_id, 
    SUM(order_total) as total_order_amount
from orders 
GROUP by customer_id
HAVING SUM(order_total) > (select AVG(order_total) from orders)

-- QUESTION 62 (SOLUTION):
SELECT product_id,product_name,category,price from products
where price > (SELECT AVG(price) from products)

-- QUESTION 63 (SOLUTION):
SELECT TOP 1 customer_id, SUM(order_total) AS total_spent
FROM orders
GROUP BY customer_id
ORDER BY total_spent DESC;

-- QUESTION 64 (SOLUTION):
SELECT
     product_name
from products
where product_id in (
    select 
        top 5
        product_id 
    from  order_items 
        group by product_id
        ORDER by SUM(quantity) DESC
)
-- QUESTION 65 (SOLUTION):
SELECT TOP 1 customer_id, COUNT(*) AS order_count
FROM orders
GROUP BY customer_id
ORDER BY order_count DESC;

-- QUESTION 66 (SOLUTION):
SELECT * from customers
WHERE customer_id NOT IN 
(SELECT DISTINCT customer_id FROM orders)

-- QUESTION 67 (SOLUTION):
SELECT top 3 category ,COUNT(*) as total_product 
from products
GROUP by category 
ORDER BY total_product DESC

-- QUESTION 68 (SOLUTION):
select 
    product_id ,
    sum(quantity) as total_qty
from order_items
group by product_id
HAVING sum(quantity) >(

SELECT avg(quantity) from order_items
)

-- QUESTION 69 (SOLUTION):
select 
    email,
    count(*) as email_count
from Customers
group by email
having count(*) >1

-- QUESTION 70 (SOLUTION):
SELECT DISTINCT o.order_id
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE oi.product_id = (
    SELECT TOP 1 product_id
    FROM products
    ORDER BY price ASC
);

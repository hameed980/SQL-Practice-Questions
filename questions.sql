-- 1. Querying Data
-- 1.1 Retrieve all columns from the customers table.
-- 1.2 Get customer_name and email from the customers table.
-- 1.3 List all unique country values from the customers table.
-- 1.4 Show total_order_amount with alias order_value from orders.
-- 1.5 Combine product_name and category as product_info.
-- 1.6 Find customer emails that contain the word 'user1'.
-- 1.7 Calculate 10% discount on all order_total values.
-- 1.8 Display sorted list of unique product_category.
-- 1.9 Count how many categories have more than 30 products.
-- 1.10 Show top 5 most expensive products using price.

-- 2. Sorting Data
-- 2.1 Sort customers alphabetically by name.
-- 2.2 Sort orders by order_total in descending order.
-- 2.3 Sort products first by category, then by price.
-- 2.4 Sort customers by country, then name.
-- 2.5 Show the top 10 earliest orders by date.
-- 2.6 Sort emails by their domain part (e.g., after @).
-- 2.7 Sort products by the length of their name.
-- 2.8 Sort orders by order_date, then by amount.
-- 2.9 Sort customers by number of orders they've made.
-- 2.10 Sort products by popularity (total quantity sold).

-- 3. Limiting Rows
-- 3.1 Fetch first 10 customers.
-- 3.2 Get the last 5 orders placed.
-- 3.3 Retrieve 3 cheapest products.
-- 3.4 Get 7 products with highest quantity in stock.
-- 3.5 Show top 5 customers by total order value.
-- 3.6 List most recent 10 orders.
-- 3.7 Identify top 3 countries with most customers.
-- 3.8 Find top 5 categories by number of products.
-- 3.9 Return first 10 UK-based customers.
-- 3.10 Get 5 random products from product list.

-- 4. Filtering Data
-- 4.1 Get customers located in the USA.
-- 4.2 List products with price over $1000.
-- 4.3 Find orders placed between two specific dates.
-- 4.4 Retrieve orders greater than average order amount.
-- 4.5 Get emails ending in “.com”.
-- 4.6 Show items where quantity is between 5 and 9.
-- 4.7 Filter out products in the “Books” category.
-- 4.8 List names that start with letter “A”.
-- 4.9 Orders placed by customers in top 3 countries.
-- 4.10 Products with even-numbered prices.

-- 5. Joining Tables
-- 5.1 Join orders and customers to get customer names and order dates.
-- 5.2 Join orders, order_items, and products.
-- 5.3 Find total quantity ordered per product.
-- 5.4 List customers who bought 'Smartphone'.
-- 5.5 Get average number of orders per customer.
-- 5.6 Perform LEFT JOIN of customers and orders (include customers with no orders).
-- 5.7 Identify products never ordered.
-- 5.8 Join to show orders with total quantity of items.
-- 5.9 Display customer name, product name, and order date.
-- 5.10 Fetch the latest order per customer.

-- 6. Grouping Data
-- 6.1 Count number of orders per country.
-- 6.2 Calculate average order value per customer.
-- 6.3 Count number of products in each category.
-- 6.4 Total quantity sold for each product.
-- 6.5 Get maximum order value per day.
-- 6.6 Count how many orders were placed each hour.
-- 6.7 Total revenue per category.
-- 6.8 Count customers per email domain.
-- 6.9 Calculate total revenue per country.
-- 6.10 Show how many items were sold each weekday.

-- 7. Subqueries
-- 7.1 List customers with total order amount greater than the average.
-- 7.2 Products priced above the average price.
-- 7.3 Customer who made the single highest order.
-- 7.4 Names of top 5 most-ordered products.
-- 7.5 Top customer by number of orders.
-- 7.6 Customers who never placed any order.
-- 7.7 Top 3 categories by product count.
-- 7.8 Products with above-average ordered quantity.
-- 7.9 Find customers with duplicate email addresses.
-- 7.10 Orders that contain the cheapest product.

-- 8. Set Operators
-- 8.1 Show customers from UK or USA using UNION.
-- 8.2 Get all products that have never been ordered using EXCEPT.
-- 8.3 List all orders placed in January and February using UNION.
-- 8.4 Show electronics products that are not in the Sports category.
-- 8.5 Combine two product lists from different sources.
-- 8.6 Orders from customers in UK and also placed in Jan.
-- 8.7 Products in either "Books" or "Electronics" but not both.
-- 8.8 Combine customer and partner leads using UNION ALL.
-- 8.9 Emails that exist in both customer and supplier tables.
-- 8.10 Products only in one of two categories.

-- 9. Common Table Expressions (CTE)
-- 9.1 Use a CTE to get total order value per customer.
-- 9.2 Create a CTE to find top 3 countries by total revenue.
-- 9.3 Use a CTE to rank products by revenue.
-- 9.4 Use CTE + window to get last order per customer.
-- 9.5 CTE to calculate monthly revenue growth.
-- 9.6 Create CTE for customers with more than 5 orders.
-- 9.7 Use CTE to prepare product sales summary and filter by > 100 qty.
-- 9.8 CTE to track orders with pending status and total count.
-- 9.9 CTE to calculate average basket size.
-- 9.10 Chain CTEs to find top customer by revenue in Electronics.

-- 10. Modifying Data
-- 10.1 Update a customer’s name.
-- 10.2 Change price of a specific product.
-- 10.3 Insert a new product into the product table.
-- 10.4 Delete a specific order item.
-- 10.5 Increase price of all Electronics products by 10%.
-- 10.6 Update order status to 'Completed'.
-- 10.7 Add 5% tax to all product prices.
-- 10.8 Delete all orders with zero quantity.
-- 10.9 Add new category and assign products to it.
-- 10.10 Reset quantity to default for discontinued items.

-- 11. Constraints
-- 11.1 Add NOT NULL constraint to product_name.
-- 11.2 Add CHECK constraint for price > 0.
-- 11.3 Add UNIQUE constraint on email.
-- 11.4 Add FOREIGN KEY from orders to customers.
-- 11.5 Set default country = 'USA'.
-- 11.6 Add PRIMARY KEY to new table.
-- 11.7 Drop a NOT NULL constraint.
-- 11.8 Enforce order date must be in the past.
-- 11.9 Add constraint to ensure quantity is less than 1000.
-- 11.10 Add compound key on (customer_id, order_id).

-- 12. Expressions
-- 12.1 Use CASE to label order value as 'High', 'Medium', or 'Low'.
-- 12.2 Extract domain part from email addresses.
-- 12.3 Calculate total_price = unit_price * quantity.
-- 12.4 Format order date as 'MMM-YYYY'.
-- 12.5 Use CASE to label customers as Silver, Gold, Platinum.
-- 12.6 Create column showing year of first order.
-- 12.7 Extract day of week from order date.
-- 12.8 Create flag if order_total > 1000.
-- 12.9 Show product status as ‘In Stock’ or ‘Out of Stock’.
-- 12.10 Use expression to split first and last name.

-- 13. Finding & Removing Duplicates
-- 13.1 Find duplicate customer emails.
-- 13.2 Remove duplicate customers keeping the latest.
-- 13.3 Identify products with same names.
-- 13.4 Find orders placed by same customer on same date.
-- 13.5 Delete all duplicate orders except one.
-- 13.6 Count how many duplicate emails exist.
-- 13.7 Find customers with same phone number.
-- 13.8 Clean duplicate product rows using ROW_NUMBER().
-- 13.9 Detect and flag duplicates in staging table.
-- 13.10 Merge duplicate customers into a single row.

-- 14. Views
-- 14.1 Create a view for high-value customers (order_total > 5000).
-- 14.2 Create a view showing top-selling products.
-- 14.3 View of daily order counts.
-- 14.4 View for customer order history with product details.
-- 14.5 Create view showing revenue per country.
-- 14.6 View for products with low stock.
-- 14.7 View combining customer and order info.
-- 14.8 View for monthly sales trends.
-- 14.9 View of customers who haven’t ordered recently.
-- 14.10 View of average basket size by category.

-- 15. Indexes & Stored Procedures
-- 15.1 Create index on customer_id.
-- 15.2 Drop index from orders table.
-- 15.3 Create stored procedure to insert new product.
-- 15.4 Stored procedure to return total order summary.
-- 15.5 Procedure to get customer details by ID.
-- 15.6 Create index on order_date.
-- 15.7 Procedure to update product prices in bulk.
-- 15.8 Procedure to generate monthly revenue report.
-- 15.9 Procedure to find duplicate emails.
-- 15.10 Procedure to reset inactive customer accounts.

-- 16. Window Functions
-- 16.1 Rank products by total revenue using RANK().
-- 16.2 Calculate running total of daily revenue.
-- 16.3 Find previous order date for each customer using LAG().
-- 16.4 Get number of orders per customer and rank using ROW_NUMBER().
-- 16.5 Use DENSE_RANK() to rank products within categories.
-- 16.6 Show cumulative quantity sold per product.
-- 16.7 Use NTILE(4) to group customers into 4 revenue tiers.
-- 16.8 Find time difference between two consecutive orders using LEAD()/LAG().
-- 16.9 Display highest order per customer using FIRST_VALUE().
-- 16.10 Use RANK() over partitioned regions for best-selling product.


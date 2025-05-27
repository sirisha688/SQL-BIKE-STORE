

-- 1.Find all customers from a specific city (e.g., "New York").
select * from customers where city='new york';

-- 2.Count how many products each brand has.
SELECT b.brand_name, COUNT(p.product_id) AS product_count
FROM products p
JOIN brands b ON p.brand_id = b.brand_id
GROUP BY b.brand_name;

-- 3.Show all staff members and the stores they work in.
select s.first_name,s.last_name, st.store_name
FROM staffs s
JOIN stores st ON s.store_id = st.store_id;

-- 4.Find the number of customers in each state.
SELECT state, COUNT(customer_id) AS customer_count
FROM customers
GROUP BY state;

-- 5.Find the top 5 most expensive products.
SELECT product_name, list_price
FROM products
ORDER BY list_price DESC
LIMIT 5;

-- 6.calculates the average price of all products.
SELECT round(AVG(list_price)) FROM products;

-- 7.List product names along with their brand and category names.
SELECT p.product_name, b.brand_name, c.category_name
FROM products p
JOIN brands b ON p.brand_id = b.brand_id
JOIN categories c ON p.category_id = c.category_id;

-- 8.List all orders made in 2018.
SELECT * FROM orders
WHERE YEAR(order_date) = 2018;

-- 9.Show each staff member's total number of orders processed.
SELECT s.staff_id,  COUNT(o.order_id) AS orders_processed
FROM staffs s
JOIN orders o ON s.staff_id = o.staff_id
GROUP BY s.staff_id;

-- 10.List all products that are currently out of stock in any store.
SELECT DISTINCT p.product_name, st.store_name
FROM stocks sk
JOIN products p ON sk.product_id = p.product_id
JOIN stores st ON sk.store_id = st.store_id
WHERE sk.quantity = 0;

-- 11.Find the total sales amount (price * quantity * (1 - discount)) per product. 
SELECT p.product_name,
       SUM(oi.list_price * oi.quantity * (1 - oi.discount)) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- 12.For each customer, show their latest order date.
SELECT c.customer_id, MAX(o.order_date) AS latest_order
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 13.Get a list of all stores along with the number of staff working in each.
SELECT st.store_name, COUNT(s.staff_id) AS staff_count
FROM stores st
LEFT JOIN staffs s ON st.store_id = s.store_id
GROUP BY st.store_name;

-- 14.List the top 3 products with the highest total sales amount.
SELECT p.product_name,
       SUM(oi.list_price * oi.quantity * (1 - oi.discount)) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 3;

-- 15.Find the most popular product category in terms of quantity sold.
SELECT c.category_name,
       SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_quantity DESC
LIMIT 1;










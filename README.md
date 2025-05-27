# SQL-BIKE-STORE
# 🚴 Bike Store SQL Practice Project

This project provides a hands-on SQL practice environment using a real-world-style bike store database. It's perfect for learning and practicing SQL concepts like `JOIN`, `GROUP BY`, subqueries, and aggregate functions.

## 📂 Files Included

- `bike_store.sql` – SQL script to create and populate the database.
- `bike_store.zip` – Raw CSV data for each table (optional, for custom imports).

## 🛠️ How to Use

### 1. Set up the database

You can run the provided `bike_store.sql` file using any MySQL-compatible SQL database (e.g., MySQL, MariaDB, XAMPP, etc.)

```bash
# Example using MySQL CLI
mysql -u root -p < bike_store.sql
```

Or use a GUI like MySQL Workbench to open and execute the script.

### 2. Explore the schema

The database contains the following tables:

- `brands`
- `categories`
- `customers`
- `order_items`
- `orders`
- `products`
- `staffs`
- `stocks`
- `stores`

Each table mimics a real-life bike store management system with orders, inventory, staff, and customer data.

---

## 📘 Practice Questions & SQL Examples

Here are some of the SQL tasks you can try, ordered by difficulty:

### 🔹 Easy

1. Find all customers from a specific city.
2. Count how many products each brand has.
3. Show all staff members and their store.
4. Find number of customers in each state.
5. List top 5 most expensive products.

### 🔹 Moderate

6. Calculate average product price.
7. List product names with brand and category.
8. Get all orders from the year 2018.
9. Count how many orders each staff member processed.
10. Find products that are out of stock.

### 🔹 Intermediate to Advanced

11. Calculate total sales amount per product.
12. Show latest order date per customer.
13. List stores with staff count.
14. Top 3 products by total sales.
15. Most popular category by quantity sold.

---

## 🧠 Learning Goals

This project helps reinforce:

- SQL joins (`INNER`, `LEFT`)
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- `GROUP BY`, `HAVING`, `ORDER BY`
- Subqueries
- Filtering and sorting
- Real-world schema modeling

---

## 📜 License

This dataset is provided for **educational purposes only**.

---

Happy Querying! 🧠🔍💻

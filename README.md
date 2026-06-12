# QAP2 – Database Systems (Summer 2026)

This repository contains the full solution for **QAP2** in the Database Systems course.  
The project includes SQL scripts for creating tables, inserting sample data, and running queries for two separate problems.

---

## 📁 Project Structure

QAP2/
  ├── Problem 1/
  │     ├── create_tables.sql
  │     ├── insert_data.sql
  │     ├── queries.sql
  │     └── check_tables.sql
  │
  └── Problem 2/
        ├── create_tables.sql
        ├── insert_data.sql
        └── queries.sql

---

## 🧩 Problem 1 – Student Enrollment System

Includes:
- Table creation for **students**, **courses**, **professors**, **enrollments**
- Sample data insertion
- Queries using:
  - JOINs  
  - Aggregation (COUNT, GROUP BY)  
  - Filtering and relationships  

---

## 🛒 Problem 2 – Simple E‑Commerce Order System

Includes:
- Table creation for **products**, **customers**, **orders**, **order_items**
- Composite primary key in `order_items`
- Sample data for 5 products, 4 customers, 5 orders
- Queries for:
  - Listing products and stock
  - Viewing order details
  - Viewing customer orders
  - Updating stock after an order
  - Deleting an order and its items

---

## ▶️ How to Run

1. Run `create_tables.sql`  
2. Run `insert_data.sql`  
3. Execute queries inside `queries.sql`  
4. Use `check_tables.sql` (Problem 1) to verify data

All scripts are compatible with **PostgreSQL**.

---

## ✔️ Author
**Feras**  
Keyin College – Database Systems  
Summer 2026

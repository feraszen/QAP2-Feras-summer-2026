------------------------------------------------------------
-- 1. Retrieve the names and stock quantities of all products
------------------------------------------------------------
SELECT 
    product_name, 
    stock_quantity
FROM products;


------------------------------------------------------------
-- 2. Retrieve the product names and quantities for one order
-- Example: order_id = 1
------------------------------------------------------------
SELECT 
    products.product_name,
    order_items.quantity
FROM order_items
INNER JOIN products 
    ON order_items.product_id = products.id
WHERE order_items.order_id = 1;


------------------------------------------------------------
-- 3. Retrieve all orders placed by a specific customer
-- Example: customer_id = 1
------------------------------------------------------------
SELECT 
    orders.id AS order_id,
    orders.order_date,
    order_items.product_id,
    order_items.quantity
FROM orders
INNER JOIN order_items 
    ON orders.id = order_items.order_id
WHERE orders.customer_id = 1;


------------------------------------------------------------
-- 4. Update stock quantities after a customer places an order
-- Simulating reduction for order_id = 1
------------------------------------------------------------
UPDATE products
SET stock_quantity = stock_quantity - order_items.quantity
FROM order_items
WHERE products.id = order_items.product_id
  AND order_items.order_id = 1;


------------------------------------------------------------
-- 5. Delete an order and all associated order items
-- Example: deleting order_id = 5
------------------------------------------------------------
DELETE FROM order_items
WHERE order_id = 5;

DELETE FROM orders
WHERE id = 5;

SELECT * FROM products;

SELECT * FROM orders;
SELECT * FROM order_items;

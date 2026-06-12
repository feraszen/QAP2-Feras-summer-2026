-- Insert products
INSERT INTO products (product_name, price, stock_quantity) VALUES
('Laptop', 1200.00, 10),
('Headphones', 150.00, 25),
('Keyboard', 80.00, 40),
('Mouse', 40.00, 50),
('Monitor', 300.00, 15);

-- Insert customers
INSERT INTO customers (first_name, last_name, email) VALUES
('Feras', 'Khalid', 'feras@example.com'),
('Ali', 'Hassan', 'ali@example.com'),
('Sara', 'Omar', 'sara@example.com'),
('Lina', 'Adel', 'lina@example.com');

-- Insert orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-01-10'),
(2, '2024-01-11'),
(3, '2024-01-12'),
(1, '2024-01-13'),
(4, '2024-01-14');

-- Insert order items (each order has at least 2 items)
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1), (1, 2, 2),
(2, 3, 1), (2, 4, 1),
(3, 2, 1), (3, 5, 1),
(4, 1, 1), (4, 3, 2),
(5, 4, 1), (5, 5, 1);

-- Start a transaction to place an order
START TRANSACTION;

-- Insert order
INSERT INTO orders (customer_id, order_date, order_status)
VALUES (1, NOW(), 'Pending');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (LAST_INSERT_ID(), 1, 1, 699.99);

-- Update product stock
UPDATE products
SET stock = stock - 1
WHERE product_id = 1;

COMMIT;

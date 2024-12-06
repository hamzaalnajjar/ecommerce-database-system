-- Insert sample customers
INSERT INTO customers (first_name, last_name, email, phone, address) VALUES
('John', 'Doe', 'johndoe@example.com', '555-1234', '123 Elm Street'),
('Jane', 'Smith', 'janesmith@example.com', '555-5678', '456 Oak Avenue');

-- Insert sample categories
INSERT INTO categories (category_name) VALUES ('Electronics'), ('Clothing'), ('Furniture');

-- Insert sample products
INSERT INTO products (product_name, description, price, stock, category_id) VALUES
('Smartphone', 'Latest model smartphone', 699.99, 100, 1),
('T-Shirt', 'Cotton T-shirt', 19.99, 200, 2),
('Couch', 'Comfortable leather couch', 499.99, 50, 3);

-- Insert sample orders
INSERT INTO orders (customer_id, order_date, order_status) VALUES
(1, NOW(), 'Completed'),
(2, NOW(), 'Pending');

-- Insert sample order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 699.99),
(2, 2, 2, 19.99);

-- Insert sample reviews
INSERT INTO reviews (product_id, customer_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Great smartphone!', NOW()),
(2, 2, 4, 'Very comfortable T-shirt', NOW());

-- Insert sample promotions
INSERT INTO promotions (promotion_code, discount_percentage, start_date, end_date) VALUES
('SUMMER21', 10.00, NOW(), '2024-08-31');

CREATE TABLE orders (
  id INT,
  customer_id INT,
  total DECIMAL
);

CREATE TABLE customers (
  id INT,
  name VARCHAR(255),
  country VARCHAR(255)
);

INSERT INTO customers (id, name, country) VALUES
(1, 'Alice Johnson', 'USA'),
(2, 'Bob Smith', 'Canada'),
(3, 'Charlie Brown', 'USA'),
(4, 'Diana Prince', 'UK'),
(5, 'Ethan Hunt', 'Germany');

INSERT INTO orders (id, customer_id, total) VALUES
(1, 1, 100),
(2, 2, 200),
(3, 1, 150),
(4, 4, 300),
(5, 1, 50),
(6, 2, 75);

SELECT 
  customer.id as id, 
  customer.name as name, 
  customer.country as country, 
  COUNT(row_order.id) as quantity 
FROM customers customer 
INNER JOIN orders row_order 
  ON row_order.customer_id = customer.id
GROUP BY customer.id, customer.name, customer.country
ORDER BY quantity DESC;
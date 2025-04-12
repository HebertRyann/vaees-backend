CREATE TABLE products (
  id INT,
  name VARCHAR(255),
  category_id INT
);

CREATE TABLE categories (
  id INT,
  name VARCHAR(255)
);

CREATE TABLE sales (
  id INT,
  product_id INT,
  quantity INT
);

INSERT INTO categories (id, name) VALUES
(1, 'Eletrônicos'),
(2, 'Mobília'),
(3, 'Roupas');

INSERT INTO products (id, name, category_id) VALUES
(1, 'Notebook', 1),
(2, 'Celular', 1),
(3, 'Televisão', 1),
(4, 'Sofá', 2),
(5, 'Mesa', 2),
(6, 'Camisa', 3),
(7, 'Calça', 3);

INSERT INTO sales (id, product_id, quantity) VALUES
(1, 1, 50),
(2, 2, 30),
(3, 3, 40),
(4, 4, 60),
(5, 5, 20),
(6, 6, 10),
(7, 7, 50),
(8, 1, 60),
(9, 2, 50),
(10, 3, 30),
(11, 4, 70),
(12, 5, 40);

SELECT 
  category.name as category, 
  product.name as product, 
  SUM(sale.quantity) as total_unit_sale
FROM products product 
INNER JOIN categories category 
  ON category.id = product.category_id
INNER JOIN sales sale 
  ON sale.product_id = product.id
GROUP BY product.id, product.name, category.name
HAVING total_unit_sale > 100;
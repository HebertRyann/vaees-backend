CREATE TABLE sales (
  id INT,
  product VARCHAR(255),
  quantity INT,
  price DECIMAL
);

INSERT INTO sales (id, product, quantity, price) VALUES
(1, 'Notebook', 10, 100),
(2, 'Celular', 5, 200),
(3, 'Televisão', 8, 50),
(4, 'Notebook', 20, 100),
(5, 'Celular', 2, 200),
(6, 'Televisão', 15, 50);

SELECT 
  sale.product as product, 
  SUM(sale.quantity * sale.price) as total_income  
FROM sales sale 
GROUP BY sale.product 
ORDER BY total_income DESC;

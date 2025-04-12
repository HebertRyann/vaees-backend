CREATE TABLE users (
  id INT,
  email VARCHAR(255),
  name VARCHAR(255)
);

INSERT INTO users (id, email, name) VALUES
(1, 'john@example.com', 'John Doe'),
(2, 'jane@example.com', 'Jane Smith'),
(3, 'john@example.com', 'Johnny Doe'),
(4, 'maria@example.com', 'Maria Lopez'),
(5, 'jane@example.com', 'Janey Smith'),
(6, 'lucas@example.com', 'Lucas Silva'),
(7, 'maria@example.com', 'Maria Clara'),
(8, 'lucas@example.com', 'Lucas Costa'),
(9, 'unique@example.com', 'Someone Unique');

SELECT 
  row_user.email as email, 
  COUNT(row_user.email) as quantity
FROM users row_user 
GROUP BY row_user.email 
HAVING quantity > 1;

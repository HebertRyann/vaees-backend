CREATE TABLE employees (
  id INT,
  name VARCHAR(255),
  salary DECIMAL
);

INSERT INTO employees (id, name, salary) VALUES
(1, 'Alice Johnson', 4500),
(2, 'Bob Smith', 5200),
(3, 'Charlie Brown', 3000),
(4, 'Diana Prince', 4800),
(5, 'Ethan Hunt', 5500),
(6, 'Fiona Gallagher', 4900),
(7, 'George Costanza', 5100),
(8, 'Helen Parr', 4999);

UPDATE employees employee
SET employee.salary = ROUND(employee.salary * 1.10)
WHERE employee.salary < 5000;

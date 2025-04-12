CREATE TABLE transactions (
  id INT,
  account_id INT,
  transaction_date DATE,
  amount DECIMAL
);

INSERT INTO transactions (id, account_id, transaction_date, amount) VALUES
(1, 101, '2025-01-15', 5000),
(2, 101, '2025-01-20', 6000),
(3, 101, '2025-02-10', 2000),
(4, 102, '2025-01-12', 3000),
(5, 102, '2025-01-25', 4000),
(6, 103, '2025-02-05', 11000),
(7, 104, '2025-02-15', 8000),
(8, 104, '2025-02-20', 3000),
(9, 105, '2025-03-10', 9500),
(10, 105, '2025-03-15', 700);


CREATE VIEW monthly_summary AS
SELECT 
  row_transaction.account_id as account_id, 
  DATE_FORMAT(row_transaction.transaction_date, "%Y-%m") as month, 
  SUM(row_transaction.amount) as total_value
FROM transactions row_transaction
GROUP BY 
  row_transaction.account_id, 
  month;

SELECT monthly_summary.*
FROM monthly_summary monthly_summary
WHERE monthly_summary.total_value > 10000
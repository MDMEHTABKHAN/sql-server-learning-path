
CREATE TABLE bank_account (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_name VARCHAR(50),
    balance DECIMAL(10,2)
);


INSERT INTO bank_account (account_name, balance) VALUES 
('Alice', 5000.00),
('Bob', 3000.00);


SELECT * FROM bank_account;


START TRANSACTION;

COMMIT;
ROLLBACK;


SAVEPOINT step1;



START TRANSACTION;

UPDATE bank_account SET balance = balance - 1000 WHERE account_name = 'Alice';

SAVEPOINT sp1;  -- Savepoint after Alice's debit

UPDATE bank_account SET balance = balance + 1000 WHERE account_name = 'Bob';

-- Rollback only last update if needed
ROLLBACK TO sp1;

COMMIT;  -- Commit the rest

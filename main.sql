CREATE TABLE accounts (
    account_id serial PRIMARY KEY,
    account_number VARCHAR (50) UNIQUE NOT NULL,
    balance DECIMAL NOT NULL
);

INSERT INTO accounts (account_number, balance) VALUES
    ('123456789', 1000.00),
    ('987654321', 500.00);

BEGIN;

UPDATE accounts
SET balance = balance - 200.00
WHERE account_number = '123456789';

UPDATE accounts
SET balance = balance + 200.00
WHERE account_number = '987654321';

COMMIT;

-- CREATE Database
CREATE DATABASE create_and_insert;

-- INSERT Table
CREATE TABLE nasabah (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    phone_number VARCHAR(50) NOT NULL
);

CREATE TABLE akun (
    id BIGSERIAL PRIMARY KEY,
    nasabah_id INTEGER NOT NULL,
    account_number VARCHAR(10) NOT NULL UNIQUE,
    balance INTEGER NOT NULL,
    pin_number VARCHAR(6) NOT NULL
);

CREATE TABLE transaksi (
    id BIGSERIAL PRIMARY KEY,
    akun_id INTEGER NOT NULL,
    date VARCHAR(10) NOT NULL,
    transaction_type VARCHAR(20) NOT NULL,
    amount INTEGER NOT NULL
);

-- CRUD
-- Insert
INSERT INTO nasabah (name, address, email, phone_number) values
('John Doe', 'Jalan Merdeka Raya No. 77', 'johndoe@email.com', '08123456789');

INSERT INTO akun (nasabah_id, account_number, balance, pin_number) values
(1, '0123456789', 1000000, '123456');

INSERT INTO transaksi (akun_id, date, transaction_type, amount) values
(1, '2023-09-15', 'Debit', 100000);

-- Select
SELECT * FROM nasabah;

SELECT * FROM akun;

SELECT * FROM transaksi;

-- Update
UPDATE nasabah SET address = 'Jalan Merdeka RAya No. 78' WHERE nasabah.name = 'John Doe';

UPDATE akun SET balance = 2000000 WHERE akun.nasabah_id = 1;

UPDATE transaksi SET amount = 150000 WHERE transaksi.akun_id = 1;

-- Delete
DELETE FROM nasabah WHERE nasabah.name = 'John Doe';

DELETE FROM akun WHERE akun.nasabah_id = 1;

DELETE FROM transaksi WHERE transaksi.akun_id = 1;
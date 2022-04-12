-- Primary keys can't be empty or duplicates
CREATE TABLE IF NOT EXISTS customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(20)
);

SELECT *
FROM customer;

-- SELLER TABLE
CREATE TABLE IF NOT EXISTS seller(
	seller_id SERIAL PRIMARY KEY,
	contact_number VARCHAR(15),
	business_name VARCHAR(100),
	address VARCHAR(100)
);

--BRAND TABLE
CREATE TABLE brand(
	brand_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(100),
	seller_id INTEGER NOT NULL, -- NOT NULL CONSTRAINT means this can't be empty
	FOREIGN KEY(seller_id) REFERENCES seller(seller_id)
);

--PRODUCT TABLE
CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	cost_of_product NUMERIC(5,2),
	product_name VARCHAR(100),
	brand_id INTEGER NOT NULL,
	FOREIGN KEY(brand_id) REFERENCES brand(brand_id)
);

-- INVENTORY TABLE
CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	prodict_count INTEGER,
	product_id INTEGER NOT NULL,
	FOREIGN KEY (product_id) REFERENCES product(product_id)
);
-- TRANSACTION TABLE
CREATE TABLE transaction_(
	transaction_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	inventory_id INTEGER NOT NULL,
	total_cost NUMERIC(8,2),
	transaction_date DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id)
);

-- DROPPING TABLE 
--DROP TABLE transaction_;
SELECT *
FROM transaction_;
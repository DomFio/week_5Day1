CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100),
	billing_info VARCHAR(100)
);
	
CREATE TABLE sales_invoice(
	invoice_id SERIAL PRIMARY KEY,
	sales_id INTEGER,
	customer_id INTEGER,
	vehicle_id INTEGER,
	price NUMERIC(8,2),
	invoice_date DATE,
	FOREIGN KEY(sales_id) REFERENCES sales_person(sales_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id)	
);

CREATE TABLE sales_person(
	sales_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number VARCHAR(100)
);

CREATE TABLE vehicle(
	vehicle_id SERIAL PRIMARY KEY,
	make VARCHAR(100),
	model VARCHAR(100),
	year VARCHAR(100),
	milage NUMERIC(8,2)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE service_invoice(
	service_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	mechanic_id INTEGER,
	vehicle_id INTEGER,
	amount NUMERIC(8,2),
	parts_needed VARCHAR(150),
	repair_date DATE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id)
);

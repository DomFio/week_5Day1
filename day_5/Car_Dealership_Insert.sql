INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Dominic',
	'Fiorelli',
	'123 Main St, Chicago, IL',
	'1000-2000-3000-4000 232 02/23'
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	2,
	'Alex',
	'Swiggum',
	'124 Main St, Chicago, IL',
	'1111-2222-3333-4444 345 06/26'
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	3,
	'Josh',
	'Gutierrez',
	'122 Main St, Chicago, IL',
	'2222-3333-4444-5555 777 12/25'
);

INSERT INTO sales_invoice(
	invoice_id,
	sales_id,
	customer_id,
	vehicle_id,
	price,
	invoice_date
)VALUES(
	1,
	1,
	1,
	1,
	20000,
	'2022-02-23'
);
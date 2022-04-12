INSERT INTO customers(
	customer_id,
	first_name,
	last_name
)VALUES(
	1,
	'Dominic',
	'Fiorelli'
);
INSERT INTO customers(
	customer_id,
	first_name,
	last_name
)VALUES(
	2,
	'Defne',
	'Ergin'
);
SELECT *
FROM customers;

INSERT INTO tickets(
	ticket_number,
	customer_id,
	movie_number
)VALUES(
	1,
	1,
	1
);

INSERT INTO movie(
	movie_number,
	movie_name,
	movie_length
)VALUES(
	1,
	'Nacho Libre',
	'1.30.00'
);

INSERT INTO concessions(
	candy,
	drink,
	snack
)VALUES(
	'M&Ms',
	'Coke',
	'popcorn'
);
SELECT *
FROM concessions;
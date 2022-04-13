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
INSERT INTO movie(
	movie_number,
	movie_name,
	movie_length
)VALUES(
	2,
	'Fresh',
	'1.54.00'
);
INSERT INTO movie(
	movie_number,
	movie_name,
	movie_length
)VALUES(
	3,
	'Akira',
	'2.04.00'
);
INSERT INTO movie(
	movie_number,
	movie_name,
	movie_length
)VALUES(
	4,
	'Step Brothers',
	'1.35.00'
);
INSERT INTO movie(
	movie_number,
	movie_name,
	movie_length
)VALUES(
	5,
	'The Truman Show',
	'1.43.00'
);
SELECT *
FROM movie;
INSERT INTO concessions(
	candy,
	drink,
	snack
)VALUES(
	'M&Ms',
	'Coke',
	'popcorn'
);
INSERT INTO concessions(
	candy,
	drink,
	snack
)VALUES(
	'Reeses',
	'Dr.Pepper',
	'Corn dog'
);
INSERT INTO concessions(
	candy,
	drink,
	snack
)VALUES(
	'Twix',
	'Root Beer',
	'Nachos'
);
INSERT INTO concessions(
	candy,
	drink,
	snack
)VALUES(
	'skittles',
	'Sprite',
	'Pretzel'
);
SELECT *
FROM concessions;
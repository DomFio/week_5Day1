CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);
SELECT*
FROM customers;

CREATE TABLE tickets(
	ticket_number SERIAL PRIMARY KEY,
	customer_id INTEGER,
	movie_number INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
	FOREIGN KEY(movie_number) REFERENCES movie(movie_number)
);
SELECT *
FROM tickets;

CREATE TABLE movie(
	movie_number SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	movie_length VARCHAR(100)
);
SELECT *
FROM movie;


CREATE TABLE concessions(
	candy VARCHAR(100),
	drink VARCHAR(100),
	snack VARCHAR(100)
);
SELECT *
FROM concessions;
--Question 1 List all customers who live in Texas (use JOINs)
--Answer  Jennifer davis, kim cruz, richard mccrary, bryan hardison, ian still
SELECT first_name, last_name, address.district, address.address_id
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

--Question 2 Get all payments above $6.99 with the customers full name
--Answer 1406
SELECT first_name, last_name, payment.amount, payment.customer_id 
FROM customer
FULL JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

--Question 3 Show all customers names who have made payments over $175(use subqueries)
--Answer
SELECT store_id, first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
)
GROUP BY store_id, first_name, last_name;

--Question 4 List all customers that live in Nepal(use the city table)
--Answer Kevin Schuler
-- SELECT *
-- FROM country;
-- --nepal country_id 66
-- SELECT *
-- FROM city;
-- --city id 81
-- SELECT *
-- FROM address;

-- SELECT*
-- FROM customer;

SELECT first_name, last_name, address.address_id, city.city_id, country.country_id
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country.country_id = 66;

--Question 5 Which staff member had the most transactions?
--Answer Jon with 7304 transactions

SELECT *
FROM staff;
--1 = mike 2 = jon 
SELECT *
FROM payment;

SELECT first_name, staff.staff_id, COUNT(payment.payment_id)
FROM staff
FULL JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id;


--Question 6 How many movies of each rating are there?
--Answer G 178 PG 194 R 195 NC-17 210 PG-13 223
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating)DESC;




--Question 7 Show all customers who have made a single payment above $6.99?
--Answer 130 customers made a single payment over 6.99

SELECT *
FROM payment;
SELECT *
FROM customer;

SELECT first_name, last_name, customer.customer_id
FROM customer
FULL JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99
GROUP BY customer.customer_id 
HAVING COUNT(customer.customer_id) = 1;


--Question 8 How many free rentals did our store give away?
--Answer 24
SELECT *
FROM payment
WHERE amount = 0;

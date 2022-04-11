-- Hello World SQL Query, SELECT all records from actor table
SELECT *
FROM actor;

--- Query for first_name and last_name data in the actor table
SELECT first_name,last_name
FROM actor;

-- Query for first_names that equal Nick using WHERE clause 
SELECT first_name, last_name
from actor
WHERE first_name = 'Nick';

-- Query for a first_name that equals nick using the LIKE and WHERE clauses
SELECT first_name, last_name
from actor
WHERE first_name LIKE 'Nick';

-- Query for all first_name data that starts with "J" using the LIKE and WHERE clauses
--and the % (wildcard)
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%';

-- Query for all first_name data that starts with k and has 2 letters after 
-- using LIKE, WHERE and underscores __
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- Query for all first_name data that starts with k and ends with th
-- using LIKE, WHERE, wildcard % and underscore _
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K__%th';


-- Comparing operators are:
-- Greater than (>) -- Less than (<)
-- Greater or Equal (>-) Less or Equal (<=)
--Not Equal (<>)

-- Explore Data in the payment table with a SELECT ALL
SELECT *
FROm payment;

-- Query for data that shows customers who paid
-- an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

-- Query for data showing who paid
-- an amount less than $7.99
Select customer_id, amount
FROM payment
WHERE amount < 7.99;

-- Query for data showing who paid
-- an amount less than or equal to $4.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 4.99;

-- query for data showing who paid
-- an amount greater than or equal to $7.99
SELECT customer_id, amount, payment_id
FROM payment
WHERE amount >= 7.99;

-- Query for data showing who paid
-- an amount greater than or equal to 2.00
-- in Ascending order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount DESC;

-- QUERY for data showing amounts paid
-- BETWEEN $2.00 AND $7.99
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

-- QUERY for data showing customer who paid
-- an amount NOT EQUAL <> to $0.00
-- ORDER BY descending order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

-- EXPLORE THE OTHER TABLES

SELECT *
FROM city;

SELECT *
FROM country
WHERE country LIKE 'A%';

SELECT *
FROM city
WHERE city LIKE '____';

SELECT *
FROM rental;

SELECT *
FROM film
WHERE description LIKE '%Action%';

--- SQL Aggergations => SUM(), AVG(), COUNT(), MIN(), MAX()

--QUERY to display the SUM() of amounts greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

-- Display the average of amounts greater than 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;
-- Display the count of amounts greater than 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;
SELECT *
FROM payment;

-- Query to display the DISTINCT count of amounts greater than 5.99
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

-- Query to display the MAX() amount greater than 7.99
SELECT MAX(amount)
FROM payment
WHERE amount > 7.99;

-- Query to display the MIN() amount greater than 7.99
SELECT MIN(amount)
FROM payment
WHERE amount > 7.99;

SELECT amount
FROM payment
WHERE amount = 7.99;

--query to display different amounts grouped together
-- along with their count
SELECT amount, COUNT(amount) as amount_num
FROM payment
GROUP BY amount
ORDER BY amount_num DESC;

SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY COUNT(amount) DESC;
-- query to display customer ids grouped together with their summed amounts
SELECT customer_id, SUM(amount) as total
FROM payment
GROUP BY customer_id
ORDER BY total;

-- QUERY to display customer_ids and their amounts grouped by the customer ids and their amount
SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id;

-- Query to display info from the customer table
SELECT *
FROM customer;

-- Query to display the customer_id that show up more than 5 times
-- group them by the customers email
SELECT COUNT(customer_id), email
FROM customer
WHERE email LIKE 'j__%.org'
GROUP BY email
HAVING COUNT(customer_id) > 0;

-- Question 1 Walburg;
-- ANSWER: 2
-- statement to get answer

SELECT last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';

-- Question 2 payments between 3.99 and 5.99
--ANSWER 5607
SELECT amount
from payment
WHERE amount >= 3.99 and amount <= 5.99;

-- Question 3 what film does the store have the most of
--ANSWER multiple answers with 8 of one film
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--Question 4 how many customers have the lastname william
--Answer 0
SELECT last_name
FROM customer
WHERE last_name LIKE 'William';

--Question 5 What store employee(get the id) sold the most rentals?
-- Answer 1 -8040
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id);
--Question 6 How many different district names are there
--Answer 378
SELECT district, count(district)
FROM address
GROUP BY district;

--Question 7 What film has the most actors in it? (use film_actor and film_id)
--Answer 508 15 actors
SELECT film_id, COUNT(film_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
--Question 8 From store_id 1, how many customers have a lastname ending with 'es'(use customer table)
--Answer 13
SELECT last_name, store_id
FROM customer
WHERE last_name LIKE '%es' and store_id = 1;

--Question 9 How many payment amounts(4.99,5.99,ect) had a number of rentals above 350 for customers
-- with ids between 380 and 430 (use group by and having >250)
-- Answer 3
SELECT DISTINCT amount, COUNT(payment_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;
--Question 10 Within the fillm table, how mnay rating categories are there?
-- and what rating has the most movies total
-- Answer 5 ratings PG-13 has the most with 223 
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating)DESC;
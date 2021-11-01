-- Q: How many actors are there with the last name 'Wahlberg'?
-- A: 2 actors have the last name Wahlberg
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg';

-- Q: How many payments were made between 3.99 and 5.99
-- A: 5607 payments
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Q: What film does the store have the most of?
-- A: A bunch of films have 8 copies

SELECT film_id, COUNT(film_id) as num_copies
FROM inventory
GROUP BY film_id
ORDER BY num_copies DESC;

-- Q: How many customers have the last name 'William'?
-- A: 0

SELECT last_name
FROM customer
WHERE last_name LIKE 'William';

-- Q: What store employee sold the most rentals?
-- A: Employee 1 sold 8040 rentals

SELECT staff_id, COUNT(inventory_id)
FROM rental
GROUP BY staff_id;

-- Q: How many different district names are there?
-- A: 378 districts

SELECT COUNT(DISTINCT district)
FROM address;

-- Q: What film has the most actors in it?
-- A: 508 has 15 actors

SELECT film_id, COUNT(DISTINCT actor_id) AS num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC;

-- Q: From store_id 1, how many customers have a last names ending in 'es'?
-- A: 13 customers from store_id 1

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;

-- Q: How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430 ?
-- A: 3

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id > 380 AND customer_id < 430
GROUP BY amount
HAVING COUNT(amount)> 250
ORDER BY COUNT(amount) DESC;


-- Q: Within the film table, how many rating categories are there? And what rating has the most movies total?
-- A: 5, PG-13 has the most at 223

SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;


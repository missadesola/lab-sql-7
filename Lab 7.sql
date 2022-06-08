-- 1
SELECT last_name, COUNT(*)
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;

-- 2
SELECT last_name, COUNT(*)
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;

-- 3
SELECT DISTINCT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;

-- 4
SELECT DISTINCT release_year, COUNT(film_id)
FROM film
GROUP BY release_year;

-- 5
SELECT DISTINCT rating, COUNT(film_id)
FROM film
GROUP BY rating;

-- 6
SELECT DISTINCT rating, ROUND(AVG(length), 2)
FROM film
GROUP BY rating;

-- 7
SELECT DISTINCT rating, AVG(SEC_TO_TIME(ROUND((length)*60, 0)))
FROM film
WHERE SEC_TO_TIME(ROUND((length)*60, 0)) > 2
GROUP BY rating;
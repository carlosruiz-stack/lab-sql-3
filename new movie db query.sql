USE sakila;

SELECT DISTINCT last_name
FROM actor;

SELECT DISTINCT language_id
FROM film;

SELECT Count('PG-13')
FROM film;

SELECT * FROM film
WHERE release_year = 2006
ORDER BY length ASC
LIMIT 10; 







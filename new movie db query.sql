USE sakila;

#1 How many distinct (different) actors' last names are there?

SELECT DISTINCT last_name
FROM actor;

#2In how many different languages where the films originally produced? (Use the column language_id from the film table)

SELECT DISTINCT language_id
FROM film;

#3 How many movies were released with "PG-13" rating?

SELECT Count('PG-13')
FROM film;

#4 Get 10 the longest movies from 2006.

SELECT * FROM film
WHERE release_year = 2006
ORDER BY length ASC
LIMIT 10; 

#5 SELECT rental_id, DATE_FORMAT(rental_date,"%Y-%m-%d") AS first_rental_date, datediff('2005-05-24',DATE_FORMAT(rental_date,"%Y-%m-%d")) AS days_of_dif

FROM rental
ORDER BY rental_date DESC
LIMIT 1;






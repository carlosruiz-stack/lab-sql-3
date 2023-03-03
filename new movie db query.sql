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

#5 How many days has been the company operating (check DATEDIFF() function)?

SELECT rental_id, DATE_FORMAT(rental_date,"%Y-%m-%d") AS first_rental_date, datediff('2005-05-24',DATE_FORMAT(rental_date,"%Y-%m-%d")) AS days_of_dif
FROM rental
ORDER BY rental_date DESC
LIMIT 1;

#6 Show rental info with additional columns month and weekday. Get 20. 

SELECT rental_id, rental_date, 
WEEKDAY(rental_date) AS wkday, 
MONTH(rental_date) AS mo
FROM rental
ORDER BY rental_date DESC
LIMIT 20;

#7 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week (suggested approach, but with run error)

SELECT rental_id, rental_date, 
WEEKDAY(rental_date), MONTH(rental_date) AS day_type
FROM rental
ORDER BY rental_date DESC
(CASE 
	WHEN WEEKDAY(rental_date) BETWEEN 0 AND 4 THEN 'wkday'
	ELSE 'weekend'
END); 

#8 How many rentals were in the last month of activity?

This is the query that I implement to get the rentals in the last month of activity, feb. 2006. Last rental date is 2006-02-14 

SELECT COUNT(rental_date)
FROM rental
WHERE rental_date = '2006-02-14 15:16:03'
ORDER BY rental_date DESC; 

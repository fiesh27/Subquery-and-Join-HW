-- Question 1

SELECT first_name, last_name, district, address.address_id
FROM address
JOIN customer
ON customer.address_id  = address.address_id
WHERE district = 'Texas';


--Question 2

SELECT first_name, last_name, amount
FROM payment
JOIN customer
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99;

--Question 3

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	WHERE amount > 175
	
);
SELECT *
FROM customer;
--Question 4

SELECT first_name, last_name
FROM customer
JOIN address
ON address.address_id = customer.address_id
JOIN city
ON city.city_id = address.city_id
JOIN country
ON country.country_id = city.country_id
WHERE country = 'Nepal';

--HOLY CRAP I DID IT!
Select *
from staff;
--Question 5
SELECT staff_id, COUNT(*)
FROM payment
WHERE staff_id IN(
	SELECT staff_id
	FROM staff
	GROUP BY payment.staff_id, staff.staff_id
	
		
);
SELECT *
FROM payment;
-- Question 7
SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
	 
	
);

--Question 8
SELECT *
FROM payment
WHERE amount < .01;

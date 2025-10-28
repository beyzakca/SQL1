SELECT COUNT(title) FROM film
WHERE length > (SELECT AVG(length) FROM film);            

SELECT COUNT(title) FROM film
WHERE rental_rate = (SELECT rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1);   

SELECT title, rental_rate, replacement_cost FROM film 
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
   OR replacement_cost = (SELECT MIN(replacement_cost) FROM film);
--ANY ILE
SELECT title, rental_rate, replacement_cost
FROM film
WHERE rental_rate = ANY (
    SELECT MIN(rental_rate) FROM film
    UNION
    SELECT MIN(replacement_cost) FROM film); 

SELECT * from payment
WHERE amount = (SELECT MAX(amount) FROM payment);
SELECT *
FROM payment;


SELECT customer_id,SUM(amount) AS 總合
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;



SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id;

SELECT * FROM country

SELECT country_id 
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id='92';


SELECT cusmoter_id,SUM(amount) as 總合
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;
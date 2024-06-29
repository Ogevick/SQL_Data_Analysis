SELECT * 
FROM accounts;

SELECT * 
FROM Orders;

SELECT * 
FROM region;

SELECT * 
FROM sales_reps;

SELECT * 
FROM web_events;

SELECT COUNT(*) 
FROM accounts;

--How many accounts does Parch and Posey have
SELECT COUNT(*) 
FROM accounts;

--How much has PnP made overall
SELECT SUM(total_amt_usd) total_amt
FROM orders;

--Find the total amount spent on standard_amt_usd 
--and gloss_amt_usd paper for each order in the order table 
SELECT 
SUM(standard_amt_usd) ttle_std_amt,
SUM(gloss_amt_usd) ttle_gloss_amt
FROM orders;

--Find the standard_amt_usd per unit of statndar_qty paper for the first 50 rows
SELECT standard_amt_usd/standard_qty AS unit_price
FROM orders
LIMIT 50;

--when was the earliest order ever placed 
SELECT MIN(occurred_at) earliest_order_date
FROM orders;

--when did the most recent web_event occur?
SELECT MAX(occurred_at) latest_event 
FROM web_events;

--which account (by name) placed by the earliest order?
--Your solution should have the accont name and the date of the order
SELECT account_id, MIN(occurred_at) earliest_order 
FROM orders 
GROUP BY account_id
ORDER BY earliest_order;

SELECT *
FROM orders AS o
JOIN accounts AS a
ON o.account_id = a.id;

SELECT name, MIN(occurred_at) earliest_order
FROM orders AS o
JOIN accounts AS a
ON o.account_id = a.id
GROUP BY name, a.id
ORDER BY earliest_order;
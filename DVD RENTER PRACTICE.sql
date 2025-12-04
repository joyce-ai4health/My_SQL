-- SQL COMMANDS --
SELECT 5 + 3
SELECT 'JOYCE ETATA'
--SYNTAX TO SELECT TABLE IN SQL--
SELECT COLUMN1, COLUMN2,COLUMN3
FROM TABLE;
SELECT actor_id, first_name,last_name
FROM actor;
-- TO SELECT THE WHOLE TABLE--
SELECT * FROM actor;
SELECT * FROM film;
--SORTING OF DATA --
SELECT * FROM actor
ORDER BY first_name DESC;
-- USING WHERE & AND --
SELECT * FROM customer
WHERE first_name = 'Robin'
AND last_name = 'Hayes'

-- USING WHERE & OR --
SELECT * FROM customer 
WHERE first_name = 'Robin'
OR last_name = 'Hayes'

-- LIKE AND ILIKE --
SELECT * FROM customer
WHERE first_name LIKE 'Adam'

-- USING WILDCARDS --
-- This means the text must be at the beginning --
--then anything can come after --
SELECT first_name FROM actor
WHERE first_name  LIKE 'AI%'

-- This means anything can come before --
-- the text must be at the end --
SELECT first_name FROM actor
WHERE first_name  LIKE '%d'

-- The text can appear anywhere --
SELECT first_name FROM actor
WHERE first_name  LIKE '%d%'



-- TO SELECT ALL RECORDS FROM A TABLE --
SELECT * FROM breweries;
-- TO RETURN DISTINCT(DIFFERENT) VALUES USE THE DISTINCT SELECT--
SELECT DISTINCT countries FROM breweries;
-- TO RETURN THE NUMBERS OF DISTINCT VALUE USING DISTINCT COUNT --
-- THIS WILL RETURN THE NUMBER OF COUNTRIES IN THE TABLE --
SELECT COUNT (DISTINCT countries) FROM breweries;

-- SQL WHERE CLAUSE:USED TO FILTER ONLY THOSE RECORDS THAT FULFILL A SPECIFIC CONDITION --
SELECT * FROM breweries 
WHERE countries = 'Nigeria';
SELECT sales_id,sales_rep,profit FROM breweries
WHERE countries ='Nigeria';

-- OPERATORS IN THE WHERE CLAUSE
-- 1. EQUAL = --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit = 43000;
-- 2. GREATER THAN > --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit > 43000;
-- 3. LESS THAN < --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit < 43000;
-- 4. GREATER THAN OR EQUAL >=
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit >= 43000;
-- 5. LESS THAN OR EQUAL <=
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit <= 43000;
-- 6. NOT EQUAL <>/!= --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit != 43000;
-- 7. BETWEEN  USED TO FIND VALUE BETWEEN A CERTAIN RANGE --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE profit BETWEEN 43000 AND 203750;
-- 8. LIKE USED TO SEARCH FOR A PATTERN --
-- THIS MATCHES ANY sales_rep THAT STARTS WITH THE LETTER 'T' --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE sales_rep LIKE 'T%';
-- THIS MATCHES ANY sales_rep THAT CONTAINS WITH THE LETTER 'T' --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE sales_rep LIKE '%T%';
-- THIS MATCHES ANY sales_rep THAT ENDS WITH THE LETTER 'T' --
SELECT sales_id,sales_rep,profit, countries FROM breweries
WHERE sales_rep LIKE '%T';

-- SQL ORDER BY USED TO SORT RESULT-SET IN ASCENDING AND DESCENDING ORDER --
-- THIS MATCHES ANY sales_rep THAT STARTS WITH THE LETTER 'T' --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
ORDER BY unit_price;
-- ORDER ALPHABETICALLY: DESC USED TO SORTS RECORDS IN DESCENDING ORDER --
-- ASC USED TO SORT RECORDS IN ASCENDING ORDER --
-- NOTE:THE ORDER BY SORT RECORDS IN ASCENDING ORDER BY DEFAULT IF NO ORDER IS SPECIFIED --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
ORDER BY unit_price DESC;
-- NOTE: FOR STRING VALUES THE ORDER BY KEYWORD WILL SORT ALPHABETICALLY --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
ORDER BY sales_rep;
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
ORDER BY sales_rep DESC;

-- ORDER BY SEVERAL COLUMNS --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
ORDER BY sales_rep, countries;
-- USING BOTH ASC AND DESC --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
ORDER BY sales_rep ASC, countries DESC;

-- SQL 'AND' OPERATOR: USED TO FILTER RECORDS BASED ON ONE OR MORE CONDITIONS --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
WHERE sales_rep LIKE 'G%' AND countries = 'Senegal';
-- AND VS OR OPERATOR: USED TO DISPLAY A RECORD IF ONE OF CONDITIONS ARE TRUE --
-- COMBINING AND & OR OPERATOR --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
WHERE  countries = 'Senegal' AND (sales_rep LIKE 'G%' OR sales_rep LIKE 'A%');
-- THE RECORDS ARE DISPLAYED EVEN IF ONLY ONE CONDTION IS TRUE --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
WHERE  countries = 'Senegal' AND (sales_rep LIKE 'Z%' OR sales_rep LIKE 'A%');
-- WITHOUT THE PARANTHESIS, THE SELECT STATEMENT WILL RETURN ALL sales_rep FROM Senegal THAT STARTS 'A'
-- PLUS ALL sales_rep THAT STARTS WITH 'G' REGARDLESS OF THE COUNTRY VALUE --
SELECT sales_id,sales_rep,profit,unit_price, countries FROM breweries
WHERE  countries = 'Senegal' AND sales_rep LIKE 'A%' OR sales_rep LIKE 'G%';
-- THIS WILL GIVE sales_rep IN NIGERIA WITH unit_price OVER 200 --
SELECT sales_rep,unit_price, countries FROM breweries
WHERE  countries = 'Nigeria' AND sales_rep = 'Gill'  AND unit_price > 200 ;

-- THE SQL 'OR' OPERATOR: USED TO FILTER RECORD BASED ON MORE THAN ONE CONDITIONS --
-- THIS WILL RETURN ALL THE sales_rep FROM NIGERIA AND ALSO FROM GHANA --
SELECT sales_rep,countries FROM breweries
WHERE  countries = 'Nigeria' OR countries = 'Ghana';
-- THE 'OR' OPERATOR DISPLAYS RECORDS IF ONE OF THE CONDITIONS ARE TRUE WHILE THE 'AND' OPERTAOR DISPLAY
--  RECORDS IF ALL THE CONDITIONS ARE TRUE --
-- Show Budweiser rows PLUS  ANY sales rep whose name has J (even if brand ≠ Budweiser and country ≠ Ghana)
--PLUS show ANY row from Ghana (even if brand ≠ Budweiser)
--So SQL will return many other brands and countries because of the OR sales_rep LIKE 'J%' --
SELECT sales_rep, brands, countries FROM breweries
WHERE  brands = 'budweiser' OR sales_rep LIKE 'J%' OR countries = 'Ghana';
-- THE 'AND' OPERATOR --
SELECT sales_rep, brands, countries
FROM breweries WHERE sales_rep LIKE '%J%'
AND brands = 'budweiser' AND countries = 'Ghana';

SELECT region,brands, SUM(quantity) AS QTY
FROM breweries
WHERE brands = 'trophy'
GROUP BY region,brands
ORDER BY qua;

-- THE SQL 'NOT' OPERATOR:USED TO FILTER RECORDS BASED O --






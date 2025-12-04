-- 1)What is the total revenue and total profit from all sales? --
SELECT * FROM breweries;
SELECT SUM(costs) total_revenue, SUM(profit) total_profit
FROM breweries;


-- 2)What is the total revenue and profit by year? --
SELECT SUM(costs) total_revenue, SUM(profit) profit_by_years, years
FROM breweries
GROUP BY years
ORDER BY total_revenue DESC,  profit_by_years DESC;

-- 3)What is the total quantity and revenue sold by brand? --
SELECT  SUM(quantity) AS total_quantity,SUM(costs) AS  total_revenue, brands
FROM breweries
GROUP BY brands
ORDER BY total_revenue DESC , total_quantity DESC ;

-- 4)Which sales rep generated the highest total revenue? --
SELECT sales_rep, SUM(costs) total_revenue 
FROM breweries
GROUP BY sales_rep
ORDER BY total_revenue DESC;

-- 5)What is the total profit by country? --
SELECT countries, SUM(profit) total_profit 
FROM breweries
GROUP BY countries 
ORDER BY total_profit DESC;

-- 6)What is the total quantity sold by region and country? --
SELECT SUM(quantity) total_quantity, region, countries
FROM breweries
GROUP BY  region, countries
ORDER BY total_quantity DESC;

-- 7)What is the average unit price for each brand? --
SELECT AVG(unit_price) AS avg_unit_price, brands
FROM breweries
GROUP BY brands
ORDER BY  avg_unit_price DESC;

-- 8)What is the monthly revenue for the year 2019? --
SELECT months,years,SUM(costs) AS total_monthly_revenue
FROM breweries
WHERE years = 2019
GROUP BY  months ,years
ORDER BY total_monthly_revenue DESC;

-- 9)For each brand, which year had the highest revenue? --
SELECT brands,years,SUM(costs) AS highest_revenue
FROM breweries
GROUP BY  years,brands
ORDER BY highest_revenue DESC;

-- 10)Which transactions have a profit margin greater than 30%? Profit margin = PROFIT /COSTS --
-- NOTE THAT 'HAVING' IS USED TO FILTER RESULTS AFTER GROUP BY. --
SELECT brands, (SUM(profit) / SUM(costs)) * 100 AS profit_margin
FROM breweries
GROUP BY brands
HAVING (SUM(profit) / SUM(costs)) * 100 > 30;

-- 11)What is the total revenue by brand and country combination? --
SELECT brands, countries, SUM(costs) AS revenue_by_brands
FROM breweries
GROUP BY brands, countries
ORDER BY revenue_by_brands DESC ;

-- 12)How many sales records does each sales rep have? --
SELECT * FROM breweries
SELECT sales_rep, COUNT(*) AS sales_records
FROM breweries
GROUP BY sales_rep
ORDER BY sales_records DESC;

-- 13)For each region, which brand generated the highest profit? --
SELECT region,brands, SUM(profit) AS highest_profit
FROM breweries
GROUP BY region,brands
ORDER BY highest_profit DESC;

-- 14)What is the total revenue and profit by country and year? --
SELECT countries, years, SUM(costs) total_revenue, SUM(profit) profit_by_years
FROM breweries
GROUP BY countries, years
ORDER BY total_revenue DESC,  profit_by_years DESC;

-- 15)Are there any duplicate SALES_ID values in the data? --
-- To find duplicates in SQL, you use GROUP BY + HAVING COUNT > 1 --
SELECT sales_id, COUNT(*) AS sales_duplicates
FROM breweries
GROUP BY sales_id
HAVING COUNT(*) > 1;

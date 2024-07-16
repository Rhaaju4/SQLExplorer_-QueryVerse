-- 1. Perform an inner join of countries AS c (left) with populations AS p (right), on code.
-- Select name, year and fertility_rate.
-- 2. Chain another inner join to your query with the economies table AS e, using code.
-- Select name, and using table aliases, select year and unemployment_rate from the economies table.



-- Select fields
SELECT name, e.year, fertility_rate, e.unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e
-- Match on country code
ON c.code = e.code;

"""
Checking multi-table joins
Have a look at the results for Albania from the previous query below. You can see that the 2015 fertility_rate has been paired with 2010 unemployment_rate, and vice versa.
name	  year	fertility_rate	unemployment_rate
Albania	2015	1.663	          17.1
Albania	2010	1.663	          14
Albania	2015	1.793	          17.1
Albania	2010	1.793	          14
Instead of four records, the query should return two: one for each year. The last join was performed on c.code = e.code, without also joining on year. Your task in this exercise is to fix your query by explicitly stating that both the country code and year should match!
"""

-- Modify your query so that you are joining to economies on year as well as code.

SELECT name, e.year, fertility_rate, unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
INNER JOIN economies AS e
ON c.code = e.code
-- Add an additional joining condition such that you are also joining on year
AND p.year = e.year;

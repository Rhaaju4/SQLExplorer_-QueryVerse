- CHANGING FORMAT OR DATA TYPES

SELECT code
FROM languages
UNION
SELECT CAST(curr_id AS VARCHAR) AS curr_id  
FROM currencies;

/*
CHECKING DATA TYPES
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'languages';

ALTER TABLE languages
ALTER COLUMN code TYPE integer;  -- Change to integer
ALTER TABLE languages
ALTER COLUMN code TYPE text;  -- Change to text */

-- When drafting queries containing set operations, it is often helpful to write the queries on either side of the operation first, and then call the set operator.
-- Select all fields from economies2015
SELECT *
FROM economies2015  
-- Set operation
UNION
-- Select all fields from economies2019
SELECT *
FROM economies2019
ORDER BY code, year;

-- -------------------------------

-- Perform an appropriate set operation that determines all pairs of country code and year (in that order) from economies and populations, excluding duplicates.
-- Order by country code and year.

-- Query that determines all pairs of code and year from economies and populations, without duplicates
select code, year
from economies
Union
select country_code, year
from populations
order by code, year

-- Amend the query to return all combinations (including duplicates) of country code and year in the economies or the populations tables.

SELECT code, year
FROM economies
-- Set theory clause
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;

-- Except EXCEPTional! Note that if countries had been on the left and cities on the right, you would have returned the opposite: all countries that do not have the same name as a city.
-- Return all cities that do not have the same name as a country
SELECT name
FROM cities
EXCEPT 
SELECT name
FROM countries
--where countries.name != cities.name
ORDER BY name;

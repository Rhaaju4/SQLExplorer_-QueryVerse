-- Select all columns from cities
SELECT * from cities;

SELECT * 
FROM cities
-- Inner join to countries
Inner join countries
-- Match on country codes
on cities.country_code = countries.code;

-- Select name fields (with alias) and region 
SELECT cities.name as city, countries.name as country, countries.region
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- Select fields with aliases
Select 
    c.code AS country_code, 
    c.name, 
    e.year, 
    e.inflation_rate
FROM 
    countries AS c
-- Join to economies (alias e)
INNER JOIN 
    economies AS e
-- Match on code field using table aliases
ON 
    c.code = e.code;

-- explore the languages table from our database. Which languages are official languages, and which ones are unofficial?

--You'll employ USING to simplify your query as you explore this question.
SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
USING(code)


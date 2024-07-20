/*
Write a LEFT JOIN with countries on the left and the cities on the right, joining on country code.
In the SELECT statement of your join, include country names as country, and count the cities in each country, aliased as cities_num.
Sort by cities_num (descending), and country (ascending), limiting to the first nine records.
*/

-- Find top nine countries with the most cities
select countries.name as country, count(cities.name) as cities_num
from countries
left join cities
on countries.code = cities.country_code
-- Order by count of cities as cities_num
group by countries.name
Order by cities_num desc, country asc
limit 9;
/*
Complete the subquery to return a result equivalent to your LEFT JOIN, counting all cities in the cities table as cities_num.
Use the WHERE clause to enable the correct country codes to be matched in the cities and countries columns.
*/
-- one additional step in your SELECT statement, whereas the JOIN and GROUP BY are a two-step process.
SELECT countries.name AS country,
-- Subquery that provides the count of cities   
  (SELECT count(name)
   FROM cities
   WHERE cities.country_code = countries.code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;

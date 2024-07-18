/*
Perform a full join with countries (left) and currencies (right).
Filter for the North America region or NULL country names.
Repeat the same query as before, turning your full join into a left join with the currencies table.
Have a look at what has changed in the output by comparing it to the full join result.
Repeat the same query again, this time performing an inner join of countries with currencies.
Have a look at what has changed in the output by comparing it to the full join and left join results!

*/

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
FULL JOIN currencies
USING (code)
-- Where region is North America or null
WHERE region = 'North America'
	OR name IS NULL
ORDER BY region;


SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
LEFT JOIN currencies

USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;



SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
inner join currencies 
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;
/*
Complete the FULL JOIN with countries as c1 on the left and languages as l on the right, using code to perform this join.
Next, chain this join with another FULL JOIN, placing currencies on the right, joining on code again.
*/

SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
FULL JOIN languages as l
USING(code)
-- Full join with currencies (alias as c2)
FULL JOIN currencies as c2
ON c1.code = c2.code
WHERE region LIKE 'M%esia';

-- Cross JOin

SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
FROM countries as c
inner join languages as l
on c.code = l.code
WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');

SELECT c.name AS country, l.name AS language
FROM countries AS c        
-- Perform a cross join to languages (alias as l)
CROSS JOIN languages AS l
WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');

/*
Complete the join of countries AS c with populations as p.
Filter on the year 2010.
Sort your results by life expectancy in ascending order.
Limit the result to five countries.
*/
SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
inner join populations as p
ON c.code = p.country_code
-- Filter for only results in the year 2010
where p.year = 2010
-- Sort by life_exp
order by life_expectancy asc
-- Limit to five records
limit 5;


/*
Perform an inner join of populations with itself ON country_code, aliased p1 and p2 respectively.
Select the country_code from p1 and the size field from both p1 and p2, aliasing p1.size as size2010 and p2.size as size2015 (in that order).
*/
-- Select aliased fields from populations as p1
select p1.country_code, p1.size as size2010, p2.size as size2015
from populations as p1
inner join populations as p2
-- Join populations as p1 to itself, alias as p2, on country code
on p1.country_code = p2.country_code
  
/*
Since you want to compare records from 2010 and 2015, eliminate unwanted records by extending the WHERE statement to include only records where the p1.year matches p2.year - 5
*/
SELECT 
	p1.country_code, 
    p1.size AS size2010, 
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010
-- Filter such that p1.year is always five years before p2.year
    and p1.year = p2.year - 5;

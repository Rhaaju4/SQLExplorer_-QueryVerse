-- In SQL, we can't filter aggregate functions with WHERE clauses.
-- The reason why groups have their own keyword for filtering comes down to the order of execution. 

-- the order of execution is: FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY, and LIMIT.

-- WHERE filters individual records while HAVING filters grouped records. 

-- Select the country and distinct count of certification as certification_count
select country, count(distinct certification) as certification_count
from films
-- Group by country
group by country
-- Filter results to countries with more than 10 different certifications
-- Filter the unique count of certifications to only results greater than 10.
having count(distinct certification) > 10;

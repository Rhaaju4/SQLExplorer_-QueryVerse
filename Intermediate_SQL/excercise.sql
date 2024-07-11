-- Select the release_year for films released after 1990 grouped by year
select release_year
from films
group by release_year
having release_year > 1990;

-- Modify the query to also list the average budget and average gross
SELECT 
    release_year, 
    avg(budget) as avg_budget, 
    avg(gross) as avg_gross
FROM 
    films
WHERE 
    release_year > 1990
GROUP BY 
    release_year;


SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
having avg(budget)> 60000000;




SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;

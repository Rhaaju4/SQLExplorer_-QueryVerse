-- Calculate the sum of gross from the year 2000 or later
SELECT SUM(gross) AS total_gross
FROM films
WHERE release_year >= 2000;

-- Calculate the average gross of films that start with A
SELECT AVG(gross) AS avg_gross_A
FROM films
where title like 'A%'

-- Calculate the lowest gross film in 1994
select min(gross) as lowest_gross
from films
where release_year = 1994

-- Calculate the highest gross film released between 2000-2012
select max(gross) as highest_gross
from films
where release_year between 2000 and 2012;

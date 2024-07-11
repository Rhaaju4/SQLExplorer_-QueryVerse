-- Filtering and sorting go hand in hand and gives you greater interpretability by ordering our results.

-- Select the country and average_budget from films
Select country, avg(budget) as average_budget
from films
-- Group by country
Group by country
-- Filter to countries with an average_budget of more than one billion
having avg(budget) > 1000000000
-- Order by descending order of the aggregated budget
order by average_budget desc;

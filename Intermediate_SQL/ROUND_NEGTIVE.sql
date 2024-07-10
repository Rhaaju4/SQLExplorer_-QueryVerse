-- Calculate the average budget rounded to the thousands
SELECT round(avg(budget), -3) as avg_budget_thousands
from films;

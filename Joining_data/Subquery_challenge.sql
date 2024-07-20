/*
Suppose you're interested in analyzing inflation and unemployment rate for certain countries in 2015. You are not interested in countries with "Republic" or "Monarchy" as their form of government,
but are interested in all other forms of government, such as emirate federations, socialist states, and commonwealths.

You will use the field gov_form to filter for these two conditions, which represents a country's form of government. You can review the different entries for gov_form in the countries table.

Instructions
Select country code, inflation_rate, and unemployment_rate from economies.
Filter code for the set of countries which do not contain the words "Republic" or "Monarchy" in their gov_form
*/

-- Select relevant fields
Select 
  code, 
  inflation_rate, 
  unemployment_rate
from 
  economies
WHERE 
  year = 2015 
  AND 
  code NOT IN
-- Subquery returning country codes filtered on gov_form
	(	(SELECT code FROM countries WHERE gov_form LIKE '%Monarchy%' OR gov_form LIKE '%Republic%'))
ORDER BY inflation_rate;

-- Subqueries inside FROM can help select columns from multiple tables in a single query.

/*
determining the number of languages spoken for each country
present this information alongside each country's local_name

Begin with a query that groups by each country code from languages, and counts the languages spoken in each country as lang_num.
In your SELECT statement, return code and lang_num (in that order).
*/
-- Select code, and language count as lang_num
Select languages.code, count(languages.name) as lang_num
from languages
group by languages.code
order by lang_num
/*
Select local_name from countries, with the aliased lang_num from your subquery (which has been nested and aliased for you as sub).
Use WHERE to match the code field from countries and sub.
*/
  
-- Select local_name and lang_num from appropriate tables
SELECT local_name, sub.lang_num
FROM countries,
    (SELECT code, COUNT(*) AS lang_num
     FROM languages
     GROUP BY code) AS sub
-- Where codes match    
WHERE countries.code = sub.code
ORDER BY lang_num DESC;

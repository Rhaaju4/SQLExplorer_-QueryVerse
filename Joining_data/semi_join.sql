/*
reate a semi join out of the two queries you've written, which filters unique languages returned in the first query for only those languages spoken in the 'Middle East'.
*/
SELECT DISTINCT name
FROM languages
-- Add syntax to use bracketed subquery below as a filter
where code in
    (SELECT code
    FROM countries
    WHERE region = 'Middle East')
ORDER BY name;



---- Anti join

SELECT code, name
FROM countries
WHERE continent = 'Oceania'
-- Filter for countries not included in the bracketed subquery
and code not in
    (SELECT code
    FROM currencies);


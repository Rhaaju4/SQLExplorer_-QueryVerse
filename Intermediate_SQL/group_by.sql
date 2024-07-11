-- ORDER OF EXECUTION
-- GROUP BY fits into our order after FROM and before all other clauses. 
-- begin with FROM, followed by grouping, selecting the data and creating the alias, sorting the results, and limiting them to the desired number.

-- Find the release_year and film_count of each year
SELECT release_year, COUNT(*) AS film_count
FROM films
GROUP BY release_year;

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;

-- GROUP BY multiple fields
-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT 
    release_year, 
    country, 
    MAX(budget) AS max_budget
FROM 
    films
GROUP BY 
    release_year, 
    country
ORDER BY 
    release_year, 
    country;

-- In the real world, every SQL query starts with a business question. \
-- Which release_year had the most language diversity?
-- translate this question into code.

SELECT 
    release_year, 
    COUNT(DISTINCT language) AS most_language_diversity
FROM 
    films
GROUP BY 
    release_year
ORDER BY 
    most_language_diversity DESC;

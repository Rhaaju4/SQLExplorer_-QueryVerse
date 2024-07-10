"Count the unique titles from the films database and use the alias provided.
Filter to include only movies with a release_year from 1990 to 1999, inclusive.
Add another filter narrowing your query down to English-language films.
Add a final filter to select only films with 'G', 'PG', 'PG-13' certifications."

-- Count the unique titles
SELECT count(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE release_year between 1990 and 1999
-- Filter to English-language films
	and language = 'English'
-- Narrow it down to G, PG, and PG-13 certifications
	and certification in ('G', 'PG', 'PG-13');

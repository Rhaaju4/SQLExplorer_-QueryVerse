-- Select name from people and sort alphabetically
SELECT name
FROM people
ORDER BY name ASC;

-- Select the title and duration from longest to shortest film
SELECT title, DURATION
FROM films

ORDER BY DURATION DESC;

-- Sorting multiple fields

-- Select the release year, duration, and title sorted by release year and duration
select release_year, duration, title
from films
order by release_year ASC, duration ASC;

-- Select the certification, release year, and title sorted by certification and release year
SELECT certification, release_year, title
from films
order by certification asc, release_year asc;

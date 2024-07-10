--Aliasing with functions
--Aliasing can be a lifesaver, especially as we start to do more complex SQL queries with --multiple criteria. Aliases help you keep your code clean and readable. For example, if you --want to find the MAX() value of several fields without aliasing, you'll end up with the --result with several columns called max and no idea which is which. You can fix this with --aliasing.



-- Calculate the title and duration_hours from films
SELECT title, (duration/60.0) as duration_hours
FROM films;


-- Calculate the percentage of people who are no longer alive
SELECT count(deathdate) * 100.0 / count(*) AS percentage_dead
FROM people;

-- Find the number of decades in the films table
SELECT (max(release_year) - min(release_year)) / 10.0 AS number_of_decades
FROM films;

-- Round duration_hours to two decimal places
SELECT title, round((duration / 60.0),2) AS duration_hours
FROM films;

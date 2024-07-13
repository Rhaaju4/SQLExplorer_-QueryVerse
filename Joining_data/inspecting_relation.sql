--Start with the join statement in line 6; perform an inner join with the countries table as c on the left with the languages table as l on the right.
--Make use of the USING keyword to join on code in line 8.
--Lastly, in line 2, select the country name, aliased as country, and the language name, aliased as language.

-- Select country and language names, aliased
SELECT c.name AS country, l.name AS language
-- From countries (aliased)
FROM countries as c
-- Join to languages (aliased)
INNER JOIN languages AS l
-- Use code as the joining field with the USING keyword
USING(code);


--Rearrange the SELECT statement so that the language column appears on the left and the country column on the right.
--Sort the results by language.
-- Rearrange SELECT statement, keeping aliases
SELECT l.name AS language, c.name AS country
FROM countries AS c
INNER JOIN languages AS l
USING(code)
-- Order the results by language
ORDER BY language;

Select the incorrect answer from the following options.

The query you generated in step 1 is provided below. Run this query (or the amendment you made in step 2) in the console to find the answer to the question.

SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
ORDER BY country;
Possible answers

--Select the incorrect answer from the following options.
--The query you generated in step 1 is provided below. Run this query (or the amendment you made in step 2) in the console to find the answer to the question.
--There are at least three languages spoken in Armenia.
--Alsatian is spoken in more than one country.
--Bhojpuri is spoken in two countries.


SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
WHERE l.name = 'Alsatian';
--ORDER BY country;

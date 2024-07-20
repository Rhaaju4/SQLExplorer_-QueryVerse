/*
From cities, select the city name, country code, proper population, and metro area population, as well as the field city_perc, which calculates the proper population as a percentage of metro area population for each city (using the formula provided).
Filter city name with a subquery that selects capital cities from countries in 'Europe' or continents with 'America' at the end of their name.
Exclude NULL values in metroarea_pop.
Order by city_perc (descending) and return only the first 10 rows.
*/

-- Select fields from cities
Select 
    name, 
    country_code, 
    city_proper_pop,   
    metroarea_pop, 
    (city_proper_pop / metroarea_pop * 100) as city_perc
-- Use subquery to filter city name
from 
    cities
where 
    name in 
    (select 
        capital 
    from 
        countries 
    where 
        continent = 'Europe' 
    or 
        continent like '%America')
-- Add filter condition such that metroarea_pop does not have null values

    and
        metroarea_pop Is not null
-- Sort and limit the result

    Order by
        city_perc desc

    limit 10;

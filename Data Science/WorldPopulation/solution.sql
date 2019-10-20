-- This is the first query:

SELECT DISTINCT year from population_years;

-- Add your additional queries below:
-- What is the largest population size for Gabon in this dataset?

SELECT * FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
Limit 1;

-- What were the 10 lowest population countries in 2005?

SELECT DISTINCT country FROM population_years
WHERE population NOT NULL
ORDER BY population ASC 
Limit 10;

-- What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country as 'Country with > 100M population' FROM population_years
WHERE year = 2010 
AND population > 100;

-- How many countries in this dataset have the word “Islands” in their name?

SELECT DISTINCT country as 'Country with Islands on name' FROM population_years
WHERE country like '%Island%';

-- What is the difference in population between 2000 and 2010 in Indonesia?

SELECT year AS 'Difference in Population' FROM population_years
WHERE country = 'Indonesia'
AND year = 2000
OR country = 'Indonesia'
AND year = 2010;

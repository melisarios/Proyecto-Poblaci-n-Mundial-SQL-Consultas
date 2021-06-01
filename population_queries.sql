-- Qué años cumple el conjunto de datos?

SELECT DISTINCT year
FROM population_years;

-- Cuál es el tamaño de población más grande de Gabon en el conjunto de datos?

SELECT country, population
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC;


-- Cuáles fueron los 10 países con la población más baja en 2005?

SELECT MIN (population), country, year
FROM population_years
WHERE year = '2005'
GROUP BY country
ORDER BY population ASC;

-- Cuáles son todos los países distintos con una población de más de 100 millones en el año 2010?

SELECT county, population, year
FROM population_years
WHERE year = '2010'
ORDER BY population;


-- ¿Cuántos países de este conjunto de datos tienen la palabra 'Islas' ('Islands') en su nombre?

SELECT DISTINCT country COUNT 
FROM population_years
WHERE country LIKE '%Islands%';


-- ¿Cuál es la diferencia de población entre 2000 y 2010 en Indoneasia?

SELECT year, population
FROM population_years
WHERE country = 'Indoneasia'
AND year = 2000
OR country = 'Indoneasia'
AND year = 2010 


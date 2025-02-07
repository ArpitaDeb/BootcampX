SELECT
  name,
  population
FROM
  world
WHERE
  name = 'Russia' / /
SELECT
  name
FROM
  world
WHERE
  population > (
    SELECT
      population
    FROM
      world
    WHERE
      name = 'Russia'
  ) / /
SELECT
  name
FROM
  world
WHERE
  continent = 'Europe'
  AND gdp / population >(
    SELECT
      gdp / population
    FROM
      world
    WHERE
      name = 'United Kingdom'
  ) / /
SELECT
  name,
  CONCAT(
    ROUND(
      100 * population /(
        SELECT
          population
        FROM
          world
        WHERE
          name = 'Germany'
      )
    ),
    '%'
  )
FROM
  world
WHERE
  continent = 'Europe'
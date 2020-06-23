SELECT
  *
FROM
  (
    SELECT
      something_id
    FROM
      someTable
    WHERE
      something
  ) as sub_table;

/ /
SELECT
  count(students) as total_students
FROM
  students
  JOIN cohorts on cohorts.id = cohort_id
GROUP BY
  cohorts;

/ /
SELECT
  avg(total_students) as average_students
FROM
  (
    SELECT
      count(students) as total_students
    FROM
      students
      JOIN cohorts on cohorts.id = cohort_id
    GROUP BY
      cohorts
  ) as totals_table;

/ /
SELECT
  avg(totals_table.total_students) as average_students / /
SELECT
  avg(total_students) as average_students
FROM
  (
    SELECT
      count(students) as total_students,
      cohorts.name as cohort_name
    FROM
      students
      JOIN cohorts on cohorts.id = cohort_id
    GROUP BY
      cohorts.name
  ) as totals_table;
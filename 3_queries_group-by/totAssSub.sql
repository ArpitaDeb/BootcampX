SELECT
  cohorts.name AS cohort,
  count(assignment_submissions.*) as total_submissions
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
GROUP BY
  cohort
ORDER BY
  total_submissions DESC;
 
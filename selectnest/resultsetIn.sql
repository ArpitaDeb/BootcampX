SELECT
  assignment_id
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
WHERE
  students.name = 'Ibrahim Schimmel';

/ /
SELECT
  assignments.name
FROM
  assignments
WHERE
  id NOT IN (1, 2, 3, 4, 5,...) / /
SELECT
  assignments.name
FROM
  assignments
WHERE
  id NOT IN (
    SELECT
      assignment_id
    FROM
      assignment_submissions
      JOIN students ON students.id = student_id
    WHERE
      students.name = 'Ibrahim Schimmel'
  );

/ /
SELECT
  *
FROM
  table
WHERE
  id IN (
    SELECT
      something_id
    FROM
      someTable
    WHERE
      something
  );
CREATE TABLE students_older_than_20_years AS (
    SELECT *
    FROM student
    WHERE age > 20
);

SELECT *
FROM students_older_than_20_years;
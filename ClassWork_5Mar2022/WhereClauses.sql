-- Selecting using WHERE clause
-- SELECT roll_no
-- FROM student
-- WHERE course_fee >= 500;

-- Updating
UPDATE STUDENT
SET COURSE_FEE = 400
WHERE COURSE_FEE > 500;

-- Selecting to see updates
SELECT *
FROM STUDENT;


-- Selecting all  records and columns from emp table
SELECT *
FROM EMP;
-- Selecting all  records and with specific columns from emp table
SELECT ENAME, JOB
from EMP;
-- Selecting employee with job manager
SELECT *
from EMP
where SAL > 1600;
-- update comm of employee whose salary is greater than 1600
update emp
set COMM=5
where sal > 1600;
-- Advance operators
--AND
select *
from EMP
where NOT (JOB = 'MANAGER'
    OR SAL = 5000);

select *
from emp
order by HIREDATE DESC;

-- Like wildcards
select *
from emp
where EMP.JOB like '%CLERK%';

-- In operator
select *
from emp
where job in ('MANAGER', 'CLERK', 'PRESIDENT');

SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
  AND JOB = 'CLERK'
  AND JOB = 'PRESIDENT';

-- BETWEEN OPERATOR
SELECT *
FROM EMP
WHERE SAL BETWEEN 200 AND 1000;

-- AGGREGATION
SELECT MIN(ENAME)
FROM EMP;

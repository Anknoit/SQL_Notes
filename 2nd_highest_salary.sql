-- Finding 2nd highest salary
use employees;
show tables;
SELECT max(salary) from salaries -- Aggregate value returns only single value (since its a function), hence only one value is returned
WHERE salary < (SELECT max(salary) from salaries);

-- Bit slower
SELECT DISTINCT salary from salaries
ORDER BY salary DESC
LIMIT 1 OFFSET 1;
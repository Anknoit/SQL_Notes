-- Finding duplicate records in a table


SELECT COUNT(*), first_name FROM employees
GROUP BY first_name
HAVING COUNT(*) > 1;

use employees;
-- Employees who earn more than their managers
show tables;
select * from dept_manager;
select * from departments;

select f.first_name as Name, d.dept_name as Department
FROM emplyoyees
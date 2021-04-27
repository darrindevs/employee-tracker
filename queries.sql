-- View all the employees that work in Sales
SELECT 
employees.employee_ID,
employees.first_name,
employees.last_name,
roles.title,
depts.dept_name,
roles.dept_ID,
roles.role_id,
roles.salary,
employees.role_ID,
employees.manager_ID


FROM employees
JOIN roles ON employees.role_ID = roles.role_id
JOIN depts ON roles.dept_ID = depts.dept_ID

WHERE depts.dept_ID = 2;
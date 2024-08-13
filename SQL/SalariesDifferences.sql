SELECT
  ABS((SELECT max(salary)
   FROM db_employee emp
   WHERE emp.department_id = 1) -
  (SELECT max(salary)
   FROM db_employee emp
   WHERE emp.department_id = 4)) AS salary_difference
 SQL INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, CAPGEMINI
_______________________________________________________________
Q1. Find the second highest salary
   Company: Infosys - 2023
   
SELECT MAX(Salary) AS SecondHighest
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

--------------------------------------------------------------
 Q2. Get employees with duplicate email
 Company: Capgemini - 2022
   
SELECT Email, COUNT(*) AS Count
FROM Users
GROUP BY Email
HAVING COUNT(*) > 1;
------------------------------------------------------------------------------
 Q3. Display department with highest number of employees
 Company: TCS - 2023
   
SELECT Department, COUNT(*) AS EmpCount
FROM Employee
GROUP BY Department
ORDER BY EmpCount DESC
LIMIT 1;
-----------------------------------------------------------------------------
Q4. Fetch employee names who joined in the last 3 months
 Company: Cognizant - 2024
  
SELECT Name
FROM Employee
WHERE JoiningDate >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
---------------------------------------------------------------------------
 Q5. Count number of employees in each department
 Company: Wipro - 2022
   
SELECT Department, COUNT(*) AS Total
FROM Employee
GROUP BY Department;
------------------------------------------------------------------------------
 Q6. Get all managers and their employee count
 Company: Infosys - 2022
   
SELECT ManagerID, COUNT(*) AS TeamSize
FROM Employee
GROUP BY ManagerID;
---------------------------------------------------------------------------

7. Find the second highest salary from the Employee table.

SELECT MAX(salary)
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);

--------------------------------------------------------------------------
8. Find employees who have the same salary.

SELECT salary
FROM employee
GROUP BY salary
HAVING COUNT(*) > 1;

--------------------------------------------------------------------------
9. Retrieve departments with more than 3 employees.

SELECT department_id, COUNT(*)
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 3;
--------------------------------------------------------------------------
10. Get the details of employees who joined in the last 3 months.
SELECT *
FROM employee
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
---------------------------------------------------------------------------
11. Find the employee(s) with the highest salary in each department.
  
SELECT *
FROM employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE department_id = e.department_id
);
-----------------------------------------------------------------------------
12. Write a query to count the number of employees in each department.
  
SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id;
----------------------------------------------------------------------------
13. Get employees who do not belong to any department.

SELECT *
FROM employee
WHERE department_id IS NULL;
----------------------------------------------------------------------------
14. Retrieve duplicate records from a table.
SELECT name, COUNT(*)
FROM employee
GROUP BY name
HAVING COUNT(*) > 1;
----------------------------------------------------------------------------
15. Display the top 3 highest-paid employees.
  
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 3;
-----------------------------------------------------------------------------
10. Write a query to fetch even-numbered employee IDs.

SELECT *
FROM employee
WHERE MOD(emp_id, 2) = 0;
--------------------------------------------------------------------------------
16. Find employees who joined in the year 2023.
SELECT *
FROM employee
WHERE YEAR(joining_date) = 2023;

--------------------------------------------------------------------------------

17. Write a query to count the number of employees in each department.
SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department;

--------------------------------------------------------------------------------

18. Write a query to find the employees with the highest salary in each department.
SELECT *
FROM employee e
WHERE salary = (
  SELECT MAX(salary)
  FROM employee
  WHERE department = e.department
);

--------------------------------------------------------------------------------

19. Display employees whose names start with the letter 'A'.
SELECT *
FROM employee
WHERE name LIKE 'A%';

--------------------------------------------------------------------------------

20. Write a query to find the total salary paid by each department.
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;
21. Find the employees who do not have a manager (NULL in manager_id).
SELECT *
FROM employee
WHERE manager_id IS NULL;

--------------------------------------------------------------------------------

22. Retrieve the department with the maximum number of employees.
SELECT department
FROM employee
GROUP BY department
ORDER BY COUNT(*) DESC
LIMIT 1;

--------------------------------------------------------------------------------

23. Write a query to calculate the average salary of employees.
SELECT AVG(salary) AS average_salary
FROM employee;

--------------------------------------------------------------------------------

24. Display the first 5 records from the employee table.
SELECT *
FROM employee
LIMIT 5;

--------------------------------------------------------------------------------

25. Fetch the list of employees who have 'developer' in their job title.
SELECT *
FROM employee
WHERE job_title LIKE '%developer%';

--------------------------------------------------------------------------------

26. Write a query to update the salary of all employees by 10%.
UPDATE employee
SET salary = salary * 1.10;

--------------------------------------------------------------------------------

27. Delete all records of employees who have left the company.
DELETE FROM employee
WHERE status = 'resigned';

--------------------------------------------------------------------------------

28. Add a new column named `bonus` to the employee table.
ALTER TABLE employee
ADD COLUMN bonus DECIMAL(10,2);

--------------------------------------------------------------------------------

29. Set the bonus as 5000 for employees in the 'Sales' department.
UPDATE employee
SET bonus = 5000
WHERE department = 'Sales';

--------------------------------------------------------------------------------

30. Find employees who joined in the last 6 months.
SELECT *
FROM employee
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
31. [TCS] Retrieve employees earning more than the average salary.
SELECT *
FROM employee
WHERE salary > (
  SELECT AVG(salary)
  FROM employee
);

--------------------------------------------------------------------------------

32. [Wipro] Get the details of the employee with the second highest salary.
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

--------------------------------------------------------------------------------

33. [Infosys] Show employees grouped by department with total salary > 100000.
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department
HAVING SUM(salary) > 100000;

--------------------------------------------------------------------------------

34. [Capgemini] List employees who have the same salary.
SELECT salary, COUNT(*) 
FROM employee
GROUP BY salary
HAVING COUNT(*) > 1;

--------------------------------------------------------------------------------

35. [Accenture] Get employee names with length greater than 5 characters.
SELECT *
FROM employee
WHERE LENGTH(name) > 5;

--------------------------------------------------------------------------------

36. [TCS] Fetch all employees along with their manager names (Self-Join).
SELECT e.name AS employee, m.name AS manager
FROM employee e
LEFT JOIN employee m ON e.manager_id = m.emp_id;

--------------------------------------------------------------------------------

37. [Wipro] Find the department(s) with the minimum average salary.
SELECT department
FROM employee
GROUP BY department
ORDER BY AVG(salary)
LIMIT 1;

--------------------------------------------------------------------------------

38. [Infosys] Display employee records in alphabetical order.
SELECT *
FROM employee
ORDER BY name ASC;

--------------------------------------------------------------------------------

39. [Capgemini] Count how many employees are in each job title.
SELECT job_title, COUNT(*) AS total
FROM employee
GROUP BY job_title;

--------------------------------------------------------------------------------

40. [Accenture] Find employees hired on weekends.
SELECT *
FROM employee
WHERE DAYOFWEEK(joining_date) IN (1, 7); -- 1 = Sunday, 7 = Saturday
31. [TCS] Retrieve employees earning more than the average salary.
SELECT *
FROM employee
WHERE salary > (
  SELECT AVG(salary)
  FROM employee
);

--------------------------------------------------------------------------------

32. [Wipro] Get the details of the employee with the second highest salary.
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

--------------------------------------------------------------------------------

33. [Infosys] Show employees grouped by department with total salary > 100000.
SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department
HAVING SUM(salary) > 100000;

--------------------------------------------------------------------------------

34. [Capgemini] List employees who have the same salary.
SELECT salary, COUNT(*) 
FROM employee
GROUP BY salary
HAVING COUNT(*) > 1;

--------------------------------------------------------------------------------

35. [Accenture] Get employee names with length greater than 5 characters.
SELECT *
FROM employee
WHERE LENGTH(name) > 5;

--------------------------------------------------------------------------------

36. [TCS] Fetch all employees along with their manager names (Self-Join).
SELECT e.name AS employee, m.name AS manager
FROM employee e
LEFT JOIN employee m ON e.manager_id = m.emp_id;

--------------------------------------------------------------------------------

37. [Wipro] Find the department(s) with the minimum average salary.
SELECT department
FROM employee
GROUP BY department
ORDER BY AVG(salary)
LIMIT 1;

--------------------------------------------------------------------------------

38. [Infosys] Display employee records in alphabetical order.
SELECT *
FROM employee
ORDER BY name ASC;

--------------------------------------------------------------------------------

39. [Capgemini] Count how many employees are in each job title.
SELECT job_title, COUNT(*) AS total
FROM employee
GROUP BY job_title;

--------------------------------------------------------------------------------

40. [Accenture] Find employees hired on weekends.
SELECT *
FROM employee
WHERE DAYOFWEEK(joining_date) IN (1, 7); -- 1 = Sunday, 7 = Saturday
31. [TCS] Retrieve employees earning more than the average salary.
SELECT *
FROM employee
WHERE salary > (
  SELECT AVG(salary)
  FROM employee
);
--------------------------------------------------------------------------------

 SQL INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, CAPGEMINI

Q1. Find the second highest salary
   Company: Infosys - 2023
   
SELECT MAX(Salary) AS SecondHighest
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);

---------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------
Q4. Fetch employee names who joined in the last 3 months
 Company: Cognizant - 2024
  
SELECT Name
FROM Employee
WHERE JoiningDate >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
-------------------------------------------------------------------------------------
 Q5. Count number of employees in each department
 Company: Wipro - 2022
   
SELECT Department, COUNT(*) AS Total
FROM Employee
GROUP BY Department;
-----------------------------------------------------------------------------------------
 Q6. Get all managers and their employee count
 Company: Infosys - 2022
   
SELECT ManagerID, COUNT(*) AS TeamSize
FROM Employee
GROUP BY ManagerID;
-----------------------------------------------------------------------------------------------

7. Find the second highest salary from the Employee table.

SELECT MAX(salary)
FROM employee
WHERE salary < (SELECT MAX(salary) FROM employee);

------------------------------------------------------------------------------------------------
8. Find employees who have the same salary.

SELECT salary
FROM employee
GROUP BY salary
HAVING COUNT(*) > 1;

-------------------------------------------------------------------------------------------
9. Retrieve departments with more than 3 employees.

SELECT department_id, COUNT(*)
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 3;
-------------------------------------------------------------------------------------------
10. Get the details of employees who joined in the last 3 months.
SELECT *
FROM employee
WHERE joining_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
-----------------------------------------------------------------------------------------
11. Find the employee(s) with the highest salary in each department.
  
SELECT *
FROM employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
    WHERE department_id = e.department_id
);
-------------------------------------------------------------------------------------------
12. Write a query to count the number of employees in each department.
  
SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id;
-------------------------------------------------------------------------------
13. Get employees who do not belong to any department.

SELECT *
FROM employee
WHERE department_id IS NULL;
--------------------------------------------------------------------------------------
14. Retrieve duplicate records from a table.
SELECT name, COUNT(*)
FROM employee
GROUP BY name
HAVING COUNT(*) > 1;
------------------------------------------------------------------------------------
15. Display the top 3 highest-paid employees.
  
SELECT *
FROM employee
ORDER BY salary DESC
LIMIT 3;
---------------------------------------------------------------------------------------
10. Write a query to fetch even-numbered employee IDs.

SELECT *
FROM employee
WHERE MOD(emp_id, 2) = 0;
------------------------------------------------------------------------------

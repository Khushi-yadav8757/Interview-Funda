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
41. Difference between INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN
-- INNER JOIN: returns only matching rows
SELECT *
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

-- LEFT JOIN: all from left + matching from right
SELECT *
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id;

-- RIGHT JOIN: all from right + matching from left
SELECT *
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.department_id;

-- FULL OUTER JOIN: all from both sides
SELECT *
FROM employees e
FULL OUTER JOIN departments d ON e.department_id = d.department_id;
----------------------------------------------------------------------------------------------
42. Find duplicate records
SELECT emp_name, COUNT(*) AS cnt
FROM employees
GROUP BY emp_name
HAVING COUNT(*) > 1;
----------------------------------------------------------------------------------------------
--WHERE vs HAVING
WHERE → filters before grouping.
HAVING → filters after grouping.
ans:- 
SELECT department, COUNT(*) AS total
FROM employees
WHERE salary > 3000        
GROUP BY department
HAVING COUNT(*) > 5;       
-----------------------------------------------------------------------------------------------
SELECT * 
FROM employees
WHERE department = 'HR' AND salary > 40000;

SELECT * 
FROM employees
WHERE department = 'HR' OR department = 'Finance';

SELECT * 
FROM employees
WHERE NOT department = 'Sales';
------------------------------------------------------------------------------------------------
-- Salary equal to 50000
SELECT * FROM employees WHERE salary = 50000;

-- Not equal
SELECT * FROM employees WHERE salary != 50000;

-- Between
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

-- In
SELECT * FROM employees WHERE department IN ('HR', 'Finance');

-- Like (starts with 'A')
SELECT * FROM employees WHERE name LIKE 'A%';
------------------------------------------------------------------------------------------
--DISTINCT Keyword
Removes duplicate values.
ex-
SELECT DISTINCT department 
FROM employees;
------------------------------------------------------------------------------------------
--ORDER BY Clause

Sorts results in ascending (ASC, default) or descending (DESC) order.
ex-
SELECT * 
FROM employees 
ORDER BY salary DESC;
------------------------------------------------------------------------------------------
--ORDER BY Clause
ex-
Sorts results in ascending (ASC, default) or descending (DESC) order.

SELECT * 
FROM employees 
ORDER BY salary DESC;
-------------------------------------------------------------------------------------------
What is SQL? Difference between SQL and MySQL?

SQL (Structured Query Language) is a language to interact with databases.

MySQL is a relational database management system (RDBMS) that uses SQL.
--------------------------------------------------------------------------------------------
2. What are DDL, DML, DCL, TCL commands with examples?

DDL (Data Definition Language): Defines structure → CREATE, ALTER, DROP

DML (Data Manipulation Language): Manipulates data → INSERT, UPDATE, DELETE

DCL (Data Control Language): Permissions → GRANT, REVOKE

TCL (Transaction Control Language): Manage transactions → COMMIT, ROLLBACK, SAVEPOINT
------------------------------------------------------------------------------------------------
3. Difference between DELETE, TRUNCATE, DROP

DELETE: Removes rows (can use WHERE). Rollback possible.

TRUNCATE: Removes all rows, resets identity, faster than DELETE. Cannot use WHERE.

DROP: Deletes the whole table (structure + data).
---------------------------------------------------------------------------------------------------
4. Difference between WHERE and HAVING

WHERE: Used before aggregation, filters rows.

HAVING: Used after aggregation, filters groups.

SELECT dept, COUNT(*) 
FROM employees 
WHERE salary > 30000 
GROUP BY dept 
HAVING COUNT(*) > 5;
-------------------------------------------------------------------------------------------------

5. Constraints (Primary, Unique, Foreign, Check)

PRIMARY KEY: Unique + Not Null.

UNIQUE: Unique but can have NULL.

FOREIGN KEY: Ensures referential integrity with another table.

CHECK: Restricts values (e.g., CHECK (age >= 18)).
--------------------------------------------------------------------------------------------------------
6. Difference between JOINs

INNER JOIN → Common rows in both tables.

LEFT JOIN → All from left + matched from right.

RIGHT JOIN → All from right + matched from left.

FULL JOIN → All rows from both sides.
--------------------------------------------------------------------------------------------------------
7. Subquery vs Correlated Subquery

Subquery: Executes once, result used by outer query.

Correlated Subquery: Runs once per row of outer query.
-----------------------------------------------------------------------------------------------------
8. Difference between NULL, 0, ‘’

NULL → Unknown / Missing.

0 → Numeric zero.

'' → Empty string.
-----------------------------------------------------------------------------------------------------
9. DISTINCT vs GROUP BY

DISTINCT removes duplicates.

GROUP BY groups data for aggregation (like COUNT, SUM).
----------------------------------------------------------------------------------------------
10. CHAR vs VARCHAR

CHAR(n): Fixed length (pads with spaces).

VARCHAR(n): Variable length (saves space).
------------------------------------------------------------------------------------------------
🔹 Intermediate SQL Questions

11. Indexes – Clustered vs Non-clustered

Clustered Index: Data stored in sorted order (only 1 per table).

Non-Clustered Index: Separate structure, stores pointers to data (many per table).
-------------------------------------------------------------------------------------------
12. Views – Advantages/Disadvantages

View = Saved SQL query (virtual table).

Advantages: Security, simplify queries, reusable.

Disadvantages: Slower on large joins, can’t always update.
----------------------------------------------------------------------------------------
13. Normalization (1NF, 2NF, 3NF, BCNF)
Ans:-
1NF: Atomic values only.
2NF: No partial dependency (applies to composite keys).
3NF: No transitive dependency.
BCNF: Stronger form of 3NF.
----------------------------------------------------------------------------------------
14. Denormalization
Ans:-
Opposite of normalization → Add redundancy for faster queries.
 -------------------------------------------------------------------------------------------
15. Stored Procedure vs Function
Ans:-
Procedure: Can perform multiple actions, return multiple values, can’t use in SELECT.
Function: Returns single value, can be used in SELECT.
---------------------------------------------------------------------------
16. Window Functions
Ans:-
SELECT emp_id, salary,
  RANK() OVER(ORDER BY salary DESC) AS rank,
  DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank,
  ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;

--------------------------------------------------------------------------
17. CTE vs Subquery
CTE: Temporary named result set, better readability, can be recursive.
Subquery: Inline, reusable only once.
----------------------------------------------------------------------------------
18. ACID Properties
Ans:-
Atomicity → All or nothing.
Consistency → Valid state before/after transaction.
Isolation → Transactions independent.
Durability → Changes survive crashes.
-----------------------------------------------------------------------------------
19. UNION vs UNION ALL
Ans:-
UNION: Removes duplicates.
UNION ALL: Keeps duplicates (faster).
----------------------------------------------------------------------------------------
20. OLTP vs OLAP
OLTP → Transactional DB (banking, e-commerce).
OLAP → Analytical DB (data warehouses, BI).

🔹 Advanced SQL Questions
---------------------------------------------------------------------------------------
21. Indexing Pros/Cons
✅ Faster read performance.
❌ Slows down INSERT/UPDATE/DELETE, uses storage.
----------------------------------------------------------------------------------------
22. Triggers
Ans:-
Auto-executed code on INSERT/UPDATE/DELETE.
BEFORE → Runs before change.
AFTER → Runs after change.
----------------------------------------------------------------------------------------
23. Deadlock
Ans:-
Two transactions waiting for each other’s lock.
Solution: Use consistent locking order, shorter transactions, NOLOCK where safe.
------------------------------------------------------------------------------------------
24. Partitioning

Divide large tables → Range, List, Hash, Composite.
-----------------------------------------------------------------------------------------
25. Materialized Views

Like views but store result physically. Faster, but need refresh.
---------------------------------------------------------------------------------------------
26. Second Highest Salary

SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);

--------------------------------------------------------------------------------------------------
27. Find Duplicates

SELECT name, COUNT(*) 
FROM employees 
GROUP BY name 
HAVING COUNT(*) > 1;
------------------------------------------------------------------------------------------------------

28. Query Optimization Techniques

Use indexes, avoid SELECT *, use EXISTS instead of IN, analyze execution plan, denormalize if needed.
-----------------------------------------------------------------------------------------------------------
29. EXISTS vs IN

EXISTS: Checks if subquery returns rows (faster for large data).

IN: Compares values from a list or subquery (good for small lists).
-------------------------------------------------------------------------------------------------------------
30. Database Design for Social Media

Users table: user_id, name, email

Posts table: post_id, user_id, content, timestamp

Likes table: like_id, user_id, post_id

Comments table: comment_id, post_id, user_id, text

# ✅ SQL INTERVIEW QUESTIONS - TCS, INFOSYS, WIPRO, CAPGEMINI

# -----------------------------
# Q1. Find the second highest salary
# Company: Infosys - 2023
query1 = """
SELECT MAX(Salary) AS SecondHighest
FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM Employee);
"""

# -----------------------------
# Q2. Get employees with duplicate email
# Company: Capgemini - 2022
query2 = """
SELECT Email, COUNT(*) AS Count
FROM Users
GROUP BY Email
HAVING COUNT(*) > 1;
"""

# -----------------------------
# Q3. Display department with highest number of employees
# Company: TCS - 2023
query3 = """
SELECT Department, COUNT(*) AS EmpCount
FROM Employee
GROUP BY Department
ORDER BY EmpCount DESC
LIMIT 1;
"""

# -----------------------------
# Q4. Fetch employee names who joined in the last 3 months
# Company: Cognizant - 2024
query4 = """
SELECT Name
FROM Employee
WHERE JoiningDate >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);
"""

# -----------------------------
# Q5. Count number of employees in each department
# Company: Wipro - 2022
query5 = """
SELECT Department, COUNT(*) AS Total
FROM Employee
GROUP BY Department;
"""

# -----------------------------
# Q6. Get all managers and their employee count
# Company: Infosys - 2022
query6 = """
SELECT ManagerID, COUNT(*) AS TeamSize
FROM Employee
GROUP BY ManagerID;
"""

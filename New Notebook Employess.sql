-- Databricks notebook source

---Checking what is in the table
SELECT *
FROM workspace.employees.employees;
---------------------------------------------
--Checking for duplicate
SELECT DISTINCT department
FROM workspace.employees.employees;
---------------------------------------------
--ORDEE BY Statement
SELECT first_name,
       last_name,
       salary
FROM workspace.employees.employees
ORDER BY salary DESC;    
---------------------------------------------
--LIMIT Statement
SELECT id,
       first_name,
       last_name,
       department,
       salary
FROM workspace.employees.employees
ORDER BY salary DESC
LIMIT 5;
-------------------------------------------
--WHERE Statement
SELECT first_name,
      last_name
FROM workspace.employees.employees
WHERE department = "IT";
--AND Statement
SELECT *
FROM workspace.employees.employees
WHERE department = "Finance" AND salary > 58000;
---------------------------------------------------
--OR Statement
SELECT *
FROM workspace.employees.employees
WHERE department = "HR" OR `department` = "Marketing";
--------------------------------------------------------
--NOT Statement
SELECT *
FROM workspace.employees.employees
WHERE NOT department = "IT";
--------------------------------------------------------
--IN Statement
SELECT *
FROM workspace.employees.employees
WHERE department IN ("HR","IT","Finance");
---------------------------------------------------------
--Combining Conditions
SELECT first_name,
       last_name,
       department
FROM workspace.employees.employees
WHERE department = "IT"
AND salary > 50000
AND city = "New York";
---------------------------------------------------------
--Combining WHERE,AND,ORDER BY statements
SELECT first_name,
       last_name,
       department,
       salary
FROM workspace.employees.employees
WHERE (department = "Finance" OR department = "Marketing")
AND salary > 52000
ORDER BY salary DESC;
---------------------------------------------------------
--Combining WHERE,OR,IN, and LIMIT statements
SELECT first_name,
       last_name,
       department,
       salary
FROM workspace.employees.employees
WHERE department IN ("IT","Marketing")
OR (city = "Chicago" OR city = "Los Angeles")
LIMIT 5;


















SHOW DATABASES;

CREATE DATABASE company;

USE company;

SELECT DATABASE();

CREATE TABLE employees (
    id CHAR(7) NOT NULL,
    emp_name VARCHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary DECIMAL(10 , 2 ) NOT NULL,
    start_date VARCHAR(15) NOT NULL,
    emp_type VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

SELECT 
    *
FROM
    employees;

SELECT 
    COUNT(*)
FROM
    employees;

UPDATE employees 
SET 
    start_date = DATE_FORMAT(STR_TO_DATE(start_date, '%m/%d/%Y'),
            '%Y/%m/%d');

ALTER TABLE employees
MODIFY COLUMN start_date DATE NOT NULL;

DESCRIBE employees;

ALTER TABLE employees 
ADD years INT;

UPDATE employees 
SET 
    years = TIMESTAMPDIFF(YEAR,
        start_date,
        CURDATE());

SELECT 
    MIN(years) AS youngest, MAX(years) AS oldest
FROM
    employees;

-- QUESTIONS 
-- 1. what is the gender breakdown of employees in the company.
SELECT 
    gender, COUNT(*) AS count
FROM
    employees
GROUP BY gender;

-- 2. what is the department break down of employees in the company from highest to lowest.
SELECT 
    department, COUNT(*) AS count
FROM
    employees
GROUP BY department
ORDER BY COUNT(*) DESC;

-- 3. how many employees work remotly vs onsight.
SELECT 
    CASE
        WHEN location != 'Remote' THEN 'On-Sight'
        WHEN location = 'Remote' THEN 'Remote'
    END AS employee_type,
    COUNT(*) AS count
FROM
    employees
GROUP BY employee_type;

-- 4. how does the gender distribution vary across department.
SELECT 
    department,
    CASE
        WHEN gender = 'M' THEN 'Male'
        WHEN gender = 'F' THEN 'Female'
        WHEN gender = '-' THEN 'Not Specified'
    END AS gender,
    COUNT(*)
FROM
    employees
GROUP BY department , gender
ORDER BY 1;

-- 5. what department does the company spend most on salary.
SELECT 
    department, avg(salary) AS salary
FROM
    employees
GROUP BY department
ORDER BY avg(salary) DESC
LIMIT 1;

-- 6. Top 10 highest paied employees
SELECT 
    emp_name, salary
FROM
    employees
ORDER BY salary DESC
LIMIT 10;

-- 7. Total number of employees
SELECT count(*)
FROM employees;


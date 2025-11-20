create database  Employees;
use  Employees;
CREATE TABLE nhan_vien (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(150) NOT NULL,
    department VARCHAR(100),
    salary DECIMAL(15,2) NOT NULL CHECK (salary >= 0),
    hire_date DATE NOT NULL
);
SELECT COUNT(*) AS number_of_employees
FROM nhan_vien;
SELECT SUM(salary) AS total_monthly_salary
FROM nhan_vien;
SELECT AVG(salary) AS average_salary
FROM nhan_vien;
SELECT MAX(salary) AS highest_salary
FROM nhan_vien;
SELECT MIN(salary) AS lowest_salary
FROM nhan_vien;
SELECT MIN(hire_date) AS earliest_hire_date
FROM nhan_vien;
SELECT SUM(salary) AS it_department_salary
FROM nhan_vien
WHERE department = 'IT';

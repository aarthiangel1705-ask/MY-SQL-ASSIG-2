DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE Location ( location_id INT AUTO_INCREMENT PRIMARY KEY,
 location_name VARCHAR(50) NOT NULL UNIQUE);
CREATE TABLE Employees (employee_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 gender CHAR(1) CHECK (gender IN ('M', 'F')),
 age INT CHECK (age >= 18),
 designation VARCHAR(50),
 salary DECIMAL(10,2),
 hire_date DATE DEFAULT (CURRENT_DATE),
 department_id INT,
 location_id INT);
 ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
 ALTER TABLE Employees MODIFY COLUMN designation VARCHAR(100);
 ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining; 
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE Departments (department_id INT PRIMARY KEY,
 department_name VARCHAR(50) NOT NULL UNIQUE);
 
 CREATE TABLE Location (location_id INT AUTO_INCREMENT PRIMARY KEY,
 location_name VARCHAR(50) NOT NULL UNIQUE);
 
 CREATE TABLE Employees (employee_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 gender CHAR(1) CHECK (gender IN ('M', 'F')),
 age INT CHECK (age >= 18),
 designation VARCHAR(50),
 salary DECIMAL(10,2),
 hire_date DATE DEFAULT (CURRENT_DATE),
 department_id INT,
 location_id INT,
 FOREIGN KEY (department_id) REFERENCES Departments(department_id),
 FOREIGN KEY (location_id) REFERENCES Location(location_id));
 
 
 
 INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');




ALTER TABLE location RENAME COLUMN location_name TO location;
ALTER TABLE employees RENAME COLUMN name TO employee_name;



 
 USE employee;
 INSERT INTO departments (department_id, department_name) VALUES(1, 'Software Development');
 INSERT INTO departments (department_id, department_name) VALUEs(2, 'Marketing');
 INSERT INTO departments (department_id, department_name) VALUES(3, 'Data Science');
 INSERT INTO departments (department_id, department_name) VALUES(4, 'Human Resources');
 INSERT INTO departments (department_id, department_name) VALUES(5, 'Product Management');
 INSERT INTO departments (department_id, department_name) VALUES(6, 'Content Creation');
 INSERT INTO departments (department_id, department_name) VALUES(7, 'Finance');
 INSERT INTO departments (department_id, department_name) VALUES(8, 'Design');
 INSERT INTO departments (department_id, department_name) VALUES(9, 'Research and Development');
 INSERT INTO departments (department_id, department_name) VALUES(10, 'Customer Support');
 INSERT INTO departments (department_id, department_name) VALUES(11, 'Business Development');
 INSERT INTO departments (department_id, department_name) VALUES(12, 'IT');
 INSERT INTO departments (department_id, department_name) VALUES(13, 'Operations');
 
 INSERT INTO location (location) VALUES('Chennai'),('Bangalore'),('Hyderabad'),('Pune');

 INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);


SELECT DISTINCT salary FROM employees;
SELECT age AS Employee_Age, salary AS Employee_Salary FROM employees;
 
 SELECT * FROM employees WHERE salary > 50000 AND hire_date < '2016-01-01';
 
 SELECT * FROM employees WHERE designation IS NULL;
 
 UPDATE employees SET designation = 'Data Scientist' WHERE designation IS NULL;

UPDATE employees SET designation = 'Data Scientist'
WHERE employee_id = 5004;

SELECT * FROM employees ORDER BY department_id ASC, salary DESC;

USE employee;
SELECT * FROM employees ORDER BY department_id ASC, salary DESC;


SELECT * FROM employees WHERE YEAR(hire_date) = 2018 LIMIT 5;

Select  SUM (employee salary) AS Total_Finance_Salary FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';

SELECT SUM(employees.salary) AS Total_Finance_Salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE departments.department_name = 'Finance';

SELECT MIN(age) AS Minimum_Age FROM employees;

SELECT location.location, MAX(employees.salary) AS Max_Salary
FROM employees
JOIN location location ON employees.location_id = location.location_id
GROUP BY location.location;

SELECT designation, AVG(salary) AS Average_Salary FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;

SELECT department_id, COUNT(*) AS Employee_Count
FROM employees
GROUP BY department_id
HAVING COUNT(*) < 3;

SELECT location.location, AVG(employees.age) AS Average_Age FROM employees 
JOIN location location ON employees.location_id = location.location_id;

SELECT location.location, AVG(employees.age) AS Average_Age
FROM employees
JOIN location ON employees.location_id = location.location_id
WHERE employees.gender = 'F'
GROUP BY location.location
HAVING AVG(employees.age) < 30;

SELECT employees.employee_name, employees.designation, department.department_name
FROM employees 
INNER JOIN departments department ON employee.department_id = department.department_id;

SELECT employees.employee_name, employees.designation, department.department_name
FROM employees
INNER JOIN departments department ON employees.department_id = department.department_id;
 
SELECT departments.department_name, COUNT(employees.employee_id) AS Total_Employees
FROM departments 
LEFT JOIN employees employee ON department.department_id = employees.department_id
GROUP BY departments.department_name; 
 
 SELECT departments.department_name, COUNT(employees.employee_id) AS Total_Employees
FROM departments
LEFT JOIN employees ON departments.department_id = employees.department_id
GROUP BY departments.department_name;

SELECT location.location, employees.employee_name AS Employee_Name
FROM employees 
RIGHT JOIN location location ON employees.location_id = location.location_id;



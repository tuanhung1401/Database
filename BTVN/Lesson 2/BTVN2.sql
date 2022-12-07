CREATE DATABASE employee_information;
CREATE TABLE employee (
	ID INT,
	NAME VARCHAR(50),
	Ngay_Bat_Dau DATE,
	So_Chiec INT);
	
INSERT INTO employee (id, NAME, Ngay_Bat_Dau, So_Chiec)
VALUES
(1, 'Hoang', '2007-01-24', 250),
(2, 'Nam', '2007-05-27', 220),
(3, 'Viet', '2007-05-06', 170),
(3, 'Viet', '2007-04-06', 100),
(4, 'Huong', '2007-04-06', 220),
(5, 'Xuan', '2007-06-06', 300),
(5, 'Xuan', '2007-02-06', 350);

SELECT id, name, Ngay_Bat_Dau
FROM employee;

CREATE TABLE employee_salary (
	EMPLOYEE_ID INT, 
	EMPLOYEE_NAME VARCHAR(50),
	SALARY DOUBLE);
	
INSERT INTO employee_salary (EMPLOYEE_ID, EMPLOYEE_NAME, SALARY)
VALUES
(12, 'Finch', 15000),
(22, 'Peter', 25000),
(32, 'Warner', 5600),
(42, 'Watson', 90000);

UPDATE employee_salary
SET salary = salary*2;

SELECT *
FROM employee_salary;


CREATE TABLE person (
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birthday DATE);

INSERT INTO person (first_name, last_name, birthday)
VALUES
('Le Thi', 'Thu', '1996-12-12'),
('Vu Thi', 'Nga', '1997-11-17'),
('Nguyen Van', 'C', '2000-12-17'),
('Pham Van', 'D', '1998-10-11'),
('Tran Dinh', 'Trong', '1997-04-25'),
('Bui', 'Tien Dung', '1997-02-28');

SELECT *, DATEDIFF(CURDATE(), birthday)AS age_in_days 
FROM person 

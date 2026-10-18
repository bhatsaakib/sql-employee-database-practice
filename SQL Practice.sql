
---Create table 

CREATE TABLE myfirstproject
(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10,2) CHECK(salary>0),
joining_date DATE NOT NULL,
age INT CHECK(age>=18)
);

--Insert Data into table

INSERT INTO myfirstproject(first_name, last_name, department, salary, joining_date,age)
		VALUES
				  ('Saakib','Bhat', 'IT','60000.00','2022-05-01',29),
				  ('Amir','Dar','HR','55000.00','2021-08-15',32),
				  ('Umer', 'Hamid','Finance','70000.00','2020-03-15',35),
				  ('Jaffer','Mir','IT','65000.00','2029-11-22',28),
				  ('Imad','Khan','Opertions','50000.00','2023-01-10',26);


 SELECT * FROM myfirstproject;	

 ---now lets do some modification

 --1 Retreieve all employees from first_name and department.
 
 SELECT first_name, department FROM myfirstproject;

 --2 Update salary of IT dep. by 10%.

 UPDATE myfirstproject
 SET salary=  salary * 1.10
 WHERE department = 'IT';

 SELECT * FROM myfirstproject ORDER BY employee_id ASC;

 --3 DELETE
 
DELETE FROM myfirstproject
WHERE age>34;

--4 add a new column 
ALTER TABLE myfirstproject
ADD COLUMN email VARCHAR(100) UNIQUE;

--5 Rename column Name
ALTER TABLE myfirstproject
RENAME COLUMN department TO dept_name;

SELECT * FROM myfirstproject ORDER BY employee_id ASC;

--6 Retreive employees joined after date


 SELECT joining_date FROM myfirstproject 
 WHERE joining_date > '2021-01-01';

 --7 Update numeric to int 

 ALTER TABLE myfirstproject
 ALTER COLUMN salary TYPE INT;


ALTER TABLE myfirstproject
ALTER COLUMN salary TYPE NUMERIC;

ALTER TABLE myfirstproject
ALTER COLUMN salary TYPE INT;
 
SELECT * FROM myfirstproject ORDER BY employee_id ASC;


 --8 retreive employess with age and salary and descending in order of salary
 
SELECT first_name, last_name , age , salary FROM myfirstproject
ORDER BY salary DESC;

--9 Insert a new Employee 
INSERT INTO myfirstproject (first_name,last_name, dept_name, salary, joining_date, age)
       VALUES
	   ('Zaid','Nabi','Marketing','60000','2023-09-15',30);

--10  Update age of every employee to +1

	UPDATE myfirstproject
	SET age = age +1;
 


		
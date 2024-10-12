-- Joins: Allows you to bind two tables or ore together if they have a commom column

-- Inner join: Returns rows that are the same in both columns from both tables
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics AS dem # Using Aliasing (AS) to shorten the name.
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
# Returns all the information on both tables that are the same (employee-id) except row 2, because it only exists in employee_salary and not in employee_demographics

-- Outer joins: Contains a left and right
-- Left join: Takes everything from the left table, even if there's no match and will only return a match from the right table.
-- Right join: Opposite of the left join

SELECT *
FROM employee_demographics AS dem # Using Aliasing (AS) to shorten the name.
LEFT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
# Returns everything on the left table that has a match on the right table
    
SELECT *
FROM employee_demographics AS dem # Using Aliasing (AS) to shorten the name.
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
# Returns everything from the employee salary and if there's not a match it still populates the row with 'NULL'

-- Self join: A join where you tie the table to itself
-- Use case: It's December 1st and the department wants to do a secret santa and they need to assign someone based off of employee_id.

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id;


-- Joining multiple tables together

SELECT *
FROM employee_demographics AS dem # Using Aliasing (AS) to shorten the name.
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;
# Returns 3 tables tied together.

SELECT * 
FROM parks_departments;

    
    
    

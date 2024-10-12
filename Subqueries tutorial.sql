-- Subqueries: A querie within another querie. Subqueries should be put in parenthesis

-- Subquerie using the 'WHERE Clause'
-- Select only employees who work in the actual parks and rec department

SELECT *
FROM employee_demographics
WHERE employee_id IN
				(SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1	
);
# Returns everything from the employee_demographics where the employee_id matches or is in the employee_id in the employee_salary table where the dept_id = 1
# "IN" is an operand and it can only have one column

-- Subquerie using the 'SELECT statement'
SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary) AS Average_salary
FROM employee_salary;

-- Subquerie using the 'FROM statement'

SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender;

SELECT AVG(max_age)
FROM
(SELECT gender,
AVG(age) AS avg_age,
max(age) AS max_age,
min(age) AS min_age,
count(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table;

# Returns the average maximum age 'AVG(max_age)
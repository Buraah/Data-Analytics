-- Unions: A union allows you to combine rows of data from separate or the same tables together

SELECT first_name, last_name
FROM employee_demographics
UNION distinct
SELECT first_name, last_name
FROM employee_demographics;
# Returns the first and last names from the two tables without any duplicates

SELECT first_name, last_name
FROM employee_demographics
UNION all
SELECT first_name, last_name
FROM employee_demographics;
# Returns the first and last names from the two tables with the duplicates

SELECT first_name, last_name, 'Old man' AS Label
FROM employee_demographics
WHERE age > 40 and gender = 'male'
UNION
SELECT first_name, last_name, 'Old lady' AS Label
FROM employee_demographics
WHERE age > 40 and gender = 'female'
UNION
SELECT first_name, last_name, 'Highly paid' AS Label
FROM employee_salary
WHERE salary > 70000
order by first_name, last_name;
# Returns a table containing a list of older and higly paid employees

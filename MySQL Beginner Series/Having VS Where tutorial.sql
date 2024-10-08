# Difference between Having & Where

SELECT gender, AVG (age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%' # filtered at the row level
GROUP BY occupation
HAVING AVG(salary) > 75000 # Filtered at the aggregate function level
;

#Having only works for aggregate functions after the GROUP BY runs.
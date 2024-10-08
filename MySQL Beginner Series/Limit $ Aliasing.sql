-- Limit % Aliasing

SELECT *
FROM employee_demographics
LIMIT 3;
# Returns the first 3 rows

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;
# Returns the 3 oldest employees

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1; # Starts at position 2 and selects 1 row after
# Returns only the information in position 3 (3rd row)

-- Aliasing: A way to change the name of a column

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;






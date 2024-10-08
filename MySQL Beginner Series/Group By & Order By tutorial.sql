#Group By

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;
# Returns the average age of the grouped genders

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;
# Returns the list of occupations and salaries.

SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender;
# Returns the average age, the maximum age, the minimum age and the number of rows within the age column

# Order By: Sorts results in ascending or descending order

SELECT *
FROM employee_demographics
ORDER BY first_name;
# Returns the first names in an ascending order

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;
# Returns the first names in a descending order

SELECT *
FROM employee_demographics
ORDER BY gender;
# Returns the females first and then followed by the males.





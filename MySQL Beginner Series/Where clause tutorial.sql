-- WHERE Clause

SELECT *
FROM employee_salary;
# Returns everything under employee salary

SELECT *
FROM employee_salary
WHERE salary >= 50000;
# Shows the records of all employees who earn 50,000 and above.

SELECT *
FROM employee_demographics
WHERE gender = 'female';
# Shows the record of all employees who are female.

SELECT *
FROM employee_demographics
WHERE birth_date > '1977-01-01';
# Shows the record of all employees whose birth dates are greater than 1977-01-01.

-- AND OR NOT -- Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date > '1977-01-01'
AND gender = 'male';
# Returns birth dates greater than 1977 and gender is male. (Both statements have to be true for it to return)

SELECT *
FROM employee_demographics
WHERE birth_date > '1977-01-01'
OR gender = 'male';
# Returns birth dates greater than 1977 and all male employees, including those born before 1977. (Either one of the statements have to be true for it to return)

SELECT *
FROM employee_demographics
WHERE birth_date > '1977-01-01'
OR NOT gender = 'male';
# Returns birth dates greater than 1977 and gender is not male, which is female. (Either birth date is greater than 1977 or gender is not male)

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;
# The parenthesis contain an isolated conditional statement, if everything is true it returns an output and it also returns an output for age > 55
# The parenthesis is very useful when using the where clause with AND, OR's & NOT's.

-- LIKE  statement
-- % and _
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';
# Returns all first names that start with 'A' and anything else after it.

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__';
# Returns all first names that start with 'A' and only 2 characters after it.

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a_%';
# Returns all first names that start with 'A', 1 character after it, and anything else after the 2nd character.
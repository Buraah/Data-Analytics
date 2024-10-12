-- Case Statements: Allows you to add logic in your select statement

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS Age_bracket
FROM employee_demographics;

-- Example: Follow the memo of a given bonus and pay increase for end of year to determine people's end of year salary or salary going into the new year, and if they got bonus, how much was it.
# Information given
-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance department = 10% bonus

# Solution
SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE
	WHEN dept_id = 6 THEN salary + (salary * 0.10) # Only one person is in the finance department
END AS Bonus
FROM employee_salary;
# Returns the employees new salaries and bonus

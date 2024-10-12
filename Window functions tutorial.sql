-- Window Functions: Allows us to look at a partition or a group but they each keep their own unique rows in the output

-- GROUP BY vs WINDOW function

SELECT gender, AVG(salary) AS Avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;

 SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name, dem.last_name, gender,
sum(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- Rolling total: Starts at a specific value and add on values from subsequent rows based off of your partition

SELECT dem.first_name, dem.last_name, gender, salary,
sum(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
# Returns the rolling total of the salaries, until it gets the grand total for each gender

SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num, 
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
# Returns the row number, based off of gender and the salaries in a descending order (from the highest to the lowest).
# Returns the rank number of the salaries including duplicates. 'Rank' the next number after a dupicate is assigned positionally and not numerically.
# Also returns the rank number of the salaries including duplicates. 'Dense_Rank' the next number after a dupicate is assigned numerically.


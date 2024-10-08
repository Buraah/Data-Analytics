SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
(age + 15) * 10 + 10
FROM parks_and_recreation.employee_demographics;
# PEMDAS (order of operations for maths within MySQL)

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;






-- String Functions: Built-in functions within MySQL that helps us use strings and work with strings

SELECT length('skyfall');
# Returns the length of skyfall, which is 7

SELECT first_name, length(first_name)
FROM employee_demographics;
# Returns the length of the first names in the employee_demographics table

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;
# Returns the list of first names from the shortest name to the longest name, can be used when working with phone numbers

SELECT upper('sky');
# Returns the word 'Sky' in upper case

SELECT lower('SkY');
# Returns the word 'SkY' in lower case

SELECT first_name, upper(first_name)
FROM employee_demographics;
# Returns all the first names in upper case

-- Trim: takes care of whitespaces
SELECT trim('    Sky    ');
# Returns just 'sky' without the spaces
# (ltrim) would remove only spaces on the left while (rtrim) will remove only spaces on the right

SELECT first_name, left(first_name, 4)
FROM employee_demographics;
# Returns the first 4 letters from the first names (from the left)
# right(first_name, 4) will return the last 4 letters from the first names (from the right)

SELECT first_name, SUBSTRING(birth_date, 6,2) as birth_month # the string starts at 6th position and goes 2 characters to the right
FROM employee_demographics;
# Returns only the birth months of the employees

-- Replace: this replaces specific characters with different characters

SELECT first_name, replace(first_name, 'a','z')
FROM employee_demographics;
# This replaces every small letter 'a' in the first names with a small letter 'z'

-- Locate: this locates the position of specific characters

SELECT first_name, locate('An', first_name)
FROM employee_demographics;
# Returns the position of every 'an' on the first name column

-- CONCAT: allows you to join two columns together

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) as full_name
FROM employee_demographics;
# Returns the first name and the last name in one line (full name)
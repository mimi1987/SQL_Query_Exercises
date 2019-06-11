-- Chapter 2 not all exercises included, because I started this repository a bit later.

-- Exercise 1
SELECT school, first_name, last_name FROM teachers ORDER BY school, last_name;

-- Exercise 2
SELECT * FROM teachers WHERE first_name ILIKE 's%' AND salary > 40000;

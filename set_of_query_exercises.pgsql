-- Chapter 2 not all exercises included, because I started this repository a bit later.

-- Exercise 1
SELECT school, first_name, last_name FROM teachers ORDER BY school, last_name;

-- Exercise 2
SELECT * FROM teachers WHERE first_name ILIKE 's%' AND salary > 40000;

-- Exercise 3
SELECT * FROM teachers WHERE hire_date > '2010-01-01' ORDER BY salary DESC;


-- Chapter 3

CREATE TABLE char_data_types (
	varchar_column varchar(10),
	char_column char(10),
	text_column text
);

INSERT INTO char_data_types VALUES
('abc', 'abc', 'abc'),
('qwertz', 'qwertz', 'qwertz');

COPY char_data_types TO 'D:\PostgreSQL\Exports\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');


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

-- using serial numbers in SQL; there are also different sizes of serial numbers like smallserial, serial and bigserial.
CREATE TABLE people (
	id serial,
	person varchar(100)
);

-- number data types example
CREATE TABLE number_data_types (
	numeric_column numeric(20,5),
	real_column real,
	double_precision_column double precision
);

INSERT INTO number_data_types VALUES
(.7, .7, .7),
(2.12345, 2.12345, 2.12345),
(2.1234567890, 2.1234567890, 2.1234567890);

SELECT * FROM number_data_types;


-- This example shows how inexact floating point numbers are when doing some math
SELECT
	numeric_column * 10000000 AS "Fixed",
	real_column * 10000000 AS "Float"
FROM number_data_types
WHERE numeric_column = .7;

# How many rentals did we have each month?

SELECT
    left(r.rental_date, 7) as "Year/Month", count(r.rental_id) as "Number Of Rentals"
FROM
    rental r
GROUP BY
    1
ORDER BY
    2 desc
;


# What was the first rental date and the last?

SELECT
    f.title as 'Movie', max(left(r.rental_date, 10)) as 'Last Rental', min(left(r.rental_date, 10)) as 'First Rental'
FROM
    film f, inventory i, rental r
WHERE
    f.film_id = i.film_id and i.inventory_id = r.inventory_id
GROUP BY
    f.film_id
ORDER BY
    1
;

                                                                                
# Every customers last rental date
SELECT
  concat(c.first_name, ' ', c.last_name) as Fullname,
  c.email as "Email Address",
  max(r.rental_date) as "Last Rental Date"
FROM
  customer c,
  rental r
WHERE
  c.customer_id = r.customer_id
GROUP BY
  c.customer_id;


# Revenue per month
SELECT
  left(payment_date, 7) as "Year/Month",
  sum(amount) as "Monthly Revenue"
FROM
  payment
GROUP BY
  1;

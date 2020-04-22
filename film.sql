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

SELECT order_date, format('%s (age:%s)', name, age) AS person_information
FROM person_order
NATURAL JOIN (
  SELECT id AS person_id, name, age FROM person
) AS alias
ORDER BY order_date ASC, person_information ASC;

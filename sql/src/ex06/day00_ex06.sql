SELECT
  (SELECT name
   FROM person
   WHERE person.id = person_order.person_id) as name,
  CASE
    WHEN (SELECT name FROM person WHERE person.id = person_order.person_id) = 'Denis' THEN true
    ELSE false
  END AS check_name
FROM person_order
WHERE (menu_id BETWEEN 13 AND 15) AND order_date = '2022-01-07';

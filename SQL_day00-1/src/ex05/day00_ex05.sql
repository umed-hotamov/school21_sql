SELECT
  (SELECT name
   FROM person
   WHERE person.id = person_order.person_id) as name
FROM person_order
WHERE (menu_id BETWEEN 13 AND 15) AND order_date = '2022-01-07';

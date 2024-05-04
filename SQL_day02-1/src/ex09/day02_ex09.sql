SELECT person.name AS name
FROM person_order
JOIN person
  ON person_order.person_id = person.id AND person.gender = 'female'
JOIN menu
  ON person_order.menu_id = menu.id
WHERE menu.pizza_name = 'pepperoni pizza' 
INTERSECT
SELECT person.name AS name
FROM person_order
JOIN person
  ON person_order.person_id = person.id AND person.gender = 'female'
JOIN menu
  ON person_order.menu_id = menu.id
WHERE menu.pizza_name = 'cheese pizza' 
ORDER BY name;

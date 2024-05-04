SELECT person.name AS name
FROM person_order
JOIN person
  ON person_order.person_id = person.id AND person.gender = 'male' AND (person.address = 'Moscow' 
                                                                        OR person.address = 'Samara')
JOIN menu
  ON person_order.menu_id = menu.id AND (menu.pizza_name = 'pepperoni pizza'
                                         OR menu.pizza_name = 'mushroom pizza')
ORDER BY name DESC;

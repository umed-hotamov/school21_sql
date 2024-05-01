SELECT person.name AS person_name, menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name
FROM person
JOIN person_order
  ON person_order.menu_id = person.id
JOIN menu
  ON person_order.menu_id = menu.pizzeria_id
JOIN pizzeria
  ON menu.pizzeria_id = pizzeria.id
ORDER BY person.name, pizza_name, pizzeria.name ASC;

SELECT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person
  ON person.id = person_visits.person_id AND person_visits.visit_date = '2022-01-08'
JOIN menu
  ON menu.pizzeria_id = person_visits.pizzeria_id AND menu.price < 800
JOIN pizzeria
  ON pizzeria.id = menu.pizzeria_id
WHERE person.name = 'Dmitriy';

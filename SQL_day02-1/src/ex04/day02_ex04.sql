WITH get_pizzas AS (
  SELECT * 
  FROM menu 
  WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
)

SELECT DISTINCT pizza_name, pizzeria.name AS pizzeria_name, price
FROM get_pizzas
JOIN pizzeria
  ON pizzeria.id = get_pizzas.pizzeria_id
ORDER BY pizza_name, pizzeria_name;

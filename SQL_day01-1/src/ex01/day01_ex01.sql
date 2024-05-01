SELECT object_name
FROM (
  SELECT name AS object_name FROM person
  UNION ALL
  SELECT pizza_name AS object_name FROM menu
) AS data
ORDER BY object_name;

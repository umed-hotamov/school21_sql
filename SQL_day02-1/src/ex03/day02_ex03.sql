WITH missing_date AS (
  SELECT missing_date::date
  FROM (
    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval) AS missing_date
  ) AS dates
  LEFT JOIN person_visits
    on person_visits.visit_date = missing_date AND person_visits.person_id IN (1, 2)
  WHERE person_visits.visit_date IS NULL
  ORDER BY missing_date
)

SELECT * FROM missing_date;

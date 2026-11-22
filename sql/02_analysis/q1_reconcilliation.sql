SELECT r.incorporations, DATE_TRUNC('month', date_of_creation) AS months, count(*) AS total,
  count(*) - r.incorporations                                      AS difference,
round(100.0 * (count(*) - r.incorporations) / r.incorporations, 3) AS pct_difference
  FROM public.stg_companies s
  JOIN public.ref_official_incorporations r
ON DATE_TRUNC('month', date_of_creation) = r.month_of_year
GROUP BY r.incorporations, months
ORDER BY months

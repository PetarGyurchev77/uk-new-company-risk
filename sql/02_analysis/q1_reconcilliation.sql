WITH monthly AS (
    SELECT DATE_TRUNC('month', date_of_creation) AS month,
           count(*)                              AS our_count
    FROM stg_companies
    GROUP BY 1
)
SELECT m.month,
       m.our_count,
       r.incorporations                          AS official,
       m.our_count - r.incorporations            AS difference,
       round(100.0 * (m.our_count - r.incorporations) / r.incorporations, 3) AS pct_difference
FROM monthly m
JOIN ref_official_incorporations r
  ON m.month = r.month_of_year
ORDER BY m.month; 

GIVES: 
1	2026-04-01 00:00:00+00	67373	67059	314	0.468
2	2026-05-01 00:00:00+00	62390	62091	299	0.482
3	2026-06-01 00:00:00+00	63409	63137	272	0.431

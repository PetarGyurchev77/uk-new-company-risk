SELECT company_number, postal_code
FROM stg_companies
WHERE postal_code !~ '^[A-Z]{1,2}[0-9][A-Z0-9]? ?[0-9][A-Z]{2}$';

SELECT count(*) FILTER (WHERE postal_code !~ '^[A-Z]{1,2}[0-9][A-Z0-9]? ?[0-9][A-Z]{2}$') AS failing,
       count(*) AS with_postcode,
       round(100.0 * count(*) FILTER (WHERE postal_code !~ '^[A-Z]{1,2}[0-9][A-Z0-9]? ?[0-9][A-Z]{2}$')
             / count(*), 3) AS pct_failing
FROM stg_companies
WHERE postal_code IS NOT NULL;

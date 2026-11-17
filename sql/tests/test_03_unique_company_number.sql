SELECT company_number, count(*)
FROM stg_companies
GROUP BY company_number
HAVING COUNT(*) >= 2;

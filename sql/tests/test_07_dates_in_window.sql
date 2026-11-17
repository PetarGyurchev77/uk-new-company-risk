SELECT company_number, date_of_creation
FROM stg_companies
WHERE date_of_creation NOT BETWEEN '2024-11-01' AND '2026-09-30';

SELECT company_number, status_group, date_of_cessation
FROM stg_companies
WHERE (status_group = 'dissolved' AND date_of_cessation IS NULL)
   OR (status_group = 'active'    AND date_of_cessation IS NOT NULL);

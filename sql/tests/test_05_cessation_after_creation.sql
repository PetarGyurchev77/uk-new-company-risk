SELECT company_number, date_of_creation, date_of_cessation
FROM stg_companies
WHERE date_of_cessation < date_of_creation;

CREATE OR REPLACE VIEW stg_companies AS
SELECT company_number, company_type, date_of_creation, date_of_cessation, postal_code, REPLACE(postal_code, ' ', '') AS postcode_key, company_status,
  CASE WHEN company_status = 'active' THEN 'active'
  WHEN company_status = 'dissolved' THEN 'dissolved'
  WHEN company_status IN ('liquidation', 'administration', 'receivership', 'insolvency-proceedings') THEN 'insolvent'
  ELSE 'unknown' END AS status_group,
  address_line_1
FROM raw_companies
WHERE company_type NOT IN ('oversea-company', 'uk-establishment', 'registered-overseas-entity', 'converted-or-closed', 'limited-partnership', 'scottish-partnership')

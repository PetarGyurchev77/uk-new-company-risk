CREATE TABLE raw_companies (
  company_number TEXT PRIMARY KEY,
  company_status TEXT,
  company_name TEXT,
  company_type TEXT,
  date_of_creation DATE NOT NULL,
  date_of_cessation DATE,
  country TEXT,
  address_line_1 TEXT,
  address_line_2 TEXT,
  locatily TEXT,
  region TEXT,
  postal_code TEXT,
  loaded_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE raw_pull_log (
  incorporation_date DATE,
  hits_reported INTEGER,
  rows_received INTEGER,
  date_pull_ran TIMESTAMPTZ
);

ALTER TABLE raw_pull_log 
  ADD PRIMARY KEY (incorporation_date),
    ALTER COLUMN date_pull_ran SET DEFAULT now()

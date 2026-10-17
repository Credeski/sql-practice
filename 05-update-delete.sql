ALTER TABLE companies
ADD COLUMN region TEXT;

UPDATE companies
SET region = CASE
    WHEN id IN (1, 2, 3) THEN 'Africa'
    WHEN id IN (4) THEN 'Asia'
    WHEN id IN (5) THEN 'North America'
    ELSE 'Unknown'
    END;


DELETE FROM companies
WHERE industry = 'Media';

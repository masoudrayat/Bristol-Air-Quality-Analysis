-- Test SQL queries to verify correct data extraction
-- Query 1: Check data extraction from the `reading` table
SELECT * FROM reading LIMIT 10;

-- Query 2: Verify join between `station` and `constituency` tables
SELECT station.name, constituency.name
FROM station
JOIN constituency ON station.constituency_id = constituency.id
LIMIT 10;

-- Query 3: Check for any negative values in pollutant measurements
SELECT * FROM reading WHERE NOx < 0 OR NO2 < 0 OR PM10 < 0 LIMIT 10;

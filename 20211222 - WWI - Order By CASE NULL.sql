USE WideWorldImporters;

SELECT 
CityName,
LatestRecordedPopulation
FROM Application.Cities
ORDER BY 
CASE WHEN LatestRecordedPopulation IS NULL THEN 1
ELSE 0 END 
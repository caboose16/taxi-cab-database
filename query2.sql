SELECT COUNT(miles_driven) as NUMBER_OF_JOBS, SUM(miles_driven) as TOTAL_MILES_DRIVEN
FROM Job
WHERE contract_ID = '&contract_ID'

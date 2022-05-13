SELECT *
FROM international_debt
LIMIT 10;

SELECT 
     COUNT(DISTINCT country_name) AS total_distinct_countries
FROM international_debt;

SELECT 
     DISTINCT indicator_code AS distinct_debt_indicators
FROM international_debt
ORDER BY distinct_debt_indicators;

SELECT 
    round(sum(debt)/1000000, 2) as total_debt
FROM international_debt; 

SELECT 
    country_name, 
    sum(debt) as total_debt
FROM international_debt
GROUP BY country_name
ORDER BY total_debt desc 
limit 1;

SELECT 
    indicator_code AS debt_indicator,
    indicator_name,
    avg(debt) as average_debt
FROM international_debt
GROUP BY debt_indicator, indicator_name
ORDER BY average_debt desc
limit 10;

SELECT 
    country_name, 
    indicator_name
FROM international_debt
WHERE debt = (SELECT 
                 max(debt)
             FROM international_debt
             WHERE indicator_code='DT.AMT.DLXF.CD');
             
SELECT 
    indicator_code, 
    count(indicator_code) as indicator_count
FROM international_debt
GROUP BY indicator_code
ORDER BY indicator_count desc, indicator_code desc
limit 20;

SELECT 
    country_name,
    max(debt) as maximum_debt
FROM international_debt
GROUP BY country_name
ORDER BY maximum_debt desc
limit 10;



SELECT
    Country,
    Description,
    ROUND(SUM(TotalRevenue), 2) AS revenue
FROM retail_sales
WHERE Country != 'United Kingdom'
GROUP BY Country, Description
ORDER BY Country, revenue DESC
LIMIT 20;

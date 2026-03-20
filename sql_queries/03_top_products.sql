
SELECT
    Description,
    ROUND(SUM(TotalRevenue), 2) AS total_revenue,
    SUM(Quantity)               AS units_sold,
    ROUND(AVG(UnitPrice), 2)    AS avg_price
FROM retail_sales
GROUP BY Description
ORDER BY total_revenue DESC
LIMIT 10;

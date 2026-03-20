
SELECT
    Hour,
    ROUND(SUM(TotalRevenue), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo)   AS total_orders
FROM retail_sales
GROUP BY Hour
ORDER BY total_revenue DESC
LIMIT 5;

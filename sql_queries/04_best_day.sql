
SELECT
    DayOfWeek,
    ROUND(SUM(TotalRevenue), 2) AS total_revenue,
    COUNT(DISTINCT InvoiceNo)   AS total_orders
FROM retail_sales
GROUP BY DayOfWeek
ORDER BY total_revenue DESC;

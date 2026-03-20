
SELECT
    Country,
    ROUND(SUM(TotalRevenue), 2)   AS total_revenue,
    COUNT(DISTINCT CustomerID)    AS unique_customers,
    COUNT(DISTINCT InvoiceNo)     AS total_orders
FROM retail_sales
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;


SELECT
    Year,
    ROUND(SUM(TotalRevenue), 2)    AS total_revenue,
    COUNT(DISTINCT InvoiceNo)      AS total_orders,
    COUNT(DISTINCT CustomerID)     AS unique_customers
FROM retail_sales
GROUP BY Year
ORDER BY Year;

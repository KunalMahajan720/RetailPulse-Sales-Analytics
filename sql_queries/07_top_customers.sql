
SELECT
    CustomerID,
    Country,
    ROUND(SUM(TotalRevenue), 2)   AS lifetime_value,
    COUNT(DISTINCT InvoiceNo)     AS total_orders,
    ROUND(AVG(TotalRevenue), 2)   AS avg_order_value
FROM retail_sales
GROUP BY CustomerID, Country
ORDER BY lifetime_value DESC
LIMIT 10;

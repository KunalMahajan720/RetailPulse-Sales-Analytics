
SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo)  AS order_count,
    ROUND(SUM(TotalRevenue), 2) AS total_spent,
    MIN(DATE(InvoiceDate))      AS first_purchase,
    MAX(DATE(InvoiceDate))      AS last_purchase
FROM retail_sales
GROUP BY CustomerID
ORDER BY order_count DESC
LIMIT 15;

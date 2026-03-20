
SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time buyer'
        WHEN order_count BETWEEN 2 AND 5  THEN 'Occasional (2-5)'
        WHEN order_count BETWEEN 6 AND 10 THEN 'Regular (6-10)'
        ELSE 'Loyal (10+)'
    END AS customer_segment,
    COUNT(*)                        AS customer_count,
    ROUND(AVG(total_spent), 2)      AS avg_lifetime_value
FROM (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo)   AS order_count,
        SUM(TotalRevenue)           AS total_spent
    FROM retail_sales
    GROUP BY CustomerID
) AS customer_summary
GROUP BY customer_segment
ORDER BY avg_lifetime_value DESC;

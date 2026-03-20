
SELECT
    YearMonth,
    ROUND(SUM(TotalRevenue), 2)      AS total_revenue,
    COUNT(DISTINCT InvoiceNo)         AS total_orders,
    ROUND(SUM(TotalRevenue) /
          COUNT(DISTINCT InvoiceNo), 2) AS avg_order_value
FROM retail_sales
GROUP BY YearMonth
ORDER BY YearMonth;

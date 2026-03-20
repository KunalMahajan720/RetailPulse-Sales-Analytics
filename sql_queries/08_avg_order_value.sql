
SELECT
    ROUND(SUM(TotalRevenue) /
          COUNT(DISTINCT InvoiceNo), 2) AS overall_avg_order_value,
    COUNT(DISTINCT InvoiceNo)           AS total_orders,
    COUNT(DISTINCT CustomerID)          AS total_customers
FROM retail_sales;

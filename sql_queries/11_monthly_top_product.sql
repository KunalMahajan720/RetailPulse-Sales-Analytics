
SELECT
    YearMonth,
    Description,
    total_revenue
FROM (
    SELECT
        YearMonth,
        Description,
        ROUND(SUM(TotalRevenue), 2) AS total_revenue,
        RANK() OVER (
            PARTITION BY YearMonth
            ORDER BY SUM(TotalRevenue) DESC
        ) AS revenue_rank
    FROM retail_sales
    GROUP BY YearMonth, Description
) ranked
WHERE revenue_rank = 1
ORDER BY YearMonth;

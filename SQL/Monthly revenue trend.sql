---Sales over time

-- Monthly revenue trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(quantity_ordered * price_each) AS monthly_revenue
FROM "Sales"
GROUP BY month
ORDER BY month;

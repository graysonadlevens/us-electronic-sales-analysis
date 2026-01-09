--Time of day analysis

--Order volume by time of day
SELECT 
    EXTRACT(HOUR FROM order_date) AS hour,
    COUNT(*) AS total_orders
FROM "Sales"
GROUP BY hour
ORDER BY hour;

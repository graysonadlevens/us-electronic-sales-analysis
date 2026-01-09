--- Geographic insights

-- Revenue by city 
SELECT 
    TRIM(SPLIT_PART(purchase_address, ',', 2)) || ', ' ||
    TRIM(SPLIT_PART(SPLIT_PART(purchase_address, ',', 3), ' ', 2)) AS city_state,
    SUM(quantity_ordered * price_each) AS revenue
FROM "Sales"
GROUP BY city_state
ORDER BY revenue DESC
LIMIT 10;

-- Revenue by state
SELECT 
    TRIM(SPLIT_PART(SPLIT_PART(purchase_address, ',', 3), ' ', 2)) AS state,
    SUM(quantity_ordered * price_each) AS revenue
FROM "Sales"
GROUP BY state
ORDER BY revenue DESC
LIMIT 10;

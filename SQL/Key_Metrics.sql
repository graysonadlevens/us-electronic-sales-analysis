--- Key Metrics

-- Total revenue
Select 
	SUM(quantity_ordered * price_each) AS total_revenue FROM "Sales";

-- Total number of orders
Select 
	COUNT(DISTINCT order_id) AS total_orders FROM "Sales";

-- Average order value
Select 
	AVG(quantity_ordered * price_each) AS avg_order_value FROM "Sales";

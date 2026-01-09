--- Product Performance

-- Top products by quantity
SELECT
	product, 
	SUM (quantity_ordered) AS total_quantity
	FROM "Sales"
	GROUP BY product
	ORDER BY total_quantity DESC
	LIMIT 10;

-- Top products by revenue
SELECT
	product,
	SUM(quantity_ordered * price_each) AS revenue
	FROM "Sales"
	GROUP BY product
	ORDER BY revenue DESC
	LIMIT 10; 
--- Data Exploration

-- Check structure
SELECT * FROM "Sales" LIMIT 10;

-- Count total rows
SELECT COUNT(*) FROM "Sales";

-- Count unique products
SELECT COUNT(DISTINCT product) FROM "Sales";

-- Check for NULLs
SELECT * FROM "Sales"
WHERE 
	order_id IS NULL
	OR
	product IS NULL
	OR
	quantity_ordered IS NULL
	OR
	price_each IS NULL
	OR
	order_date IS NULL
	OR
	purchase_address IS NULL;

-- Clean and remove NULLs
DELETE FROM "Sales"
WHERE 
	order_id IS NULL
	OR
	product IS NULL
	OR
	quantity_ordered IS NULL
	OR
	price_each IS NULL
	OR
	order_date IS NULL
	OR
	purchase_address IS NULL;
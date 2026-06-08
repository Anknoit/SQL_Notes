-- JOINS
show tables;
select * from dim_customer;
select * from dim_product;
select * from fact_sales;

-- Write down total quantity sold of each product 
SELECT 
	p.product_id, p.product_name,SUM(s.quantity_sold) as total_product_sold
FROM 
	dim_product p
LEFT JOIN
	fact_sales s
ON	
	p.product_key = s.product_key
GROUP BY 
	p.product_id, p.product_name;
    
-- SELECT = GROUP BY columns + Aggregate functions only.
-- Think of GROUP BY as creating one row per group.
	
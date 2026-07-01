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


-- Q2. Display all sales along with the customer's first and last name.
SELECT
	s.sales_id,
    c.first_name, 
    c.last_name,
    s.product_key
FROM 
	fact_sales s
LEFT JOIN
	dim_customer c
ON s.sales_id = c.customer_key
WHERE c.first_name IS NOT NULL;

-- Show product name and quantity sold for every sale.
SELECT 
	p.product_name,
    s.quantity_sold
FROM 
	dim_product p
LEFT JOIN
	fact_sales s
ON 
	p.product_key = s.sales_id
WHERE s.quantity_sold IS NOT NULL;


-- FULL JOIN NOT SUPPORTED, use UNION of LEFT AND RIGHT JOIN to acheive FULL JOIN
	
	

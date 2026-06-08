show tables;
select * from dim_customer;
SELECT * FROM dim_product
WHERE gender="F" LIMIT 50;

-- Always Use Braces, so you dont get silent errors
-- Example
-- Fetch data for Females in France or having joinig date more than 2022
SELECT * FROM dim_customer
WHERE gender="F" AND country="France" OR join_date > '2022-01-01'; -- This will still give you Male M gender because we didnt use brances 

SELECT * FROM dim_customer
where gender="F" AND (country="France" or join_date> '2022-01-01');

SELECT * FROM dim_customer
where gender="M"
GROUP BY city;

-- GROUPING - SQuuezing, Condensing more rows into 1
-- SELECT COUNT(gender) from dim_customer;

 -- Find out the average price, Total Price of each category of cloth
 SELECT 
	category,
    AVG(unit_price) as Average_Price,
    SUM(unit_price) as Total_Price
FROM dim_product
GROUP BY(category)
ORDER BY Average_Price;

-- SELECT = GROUP BY columns + Aggregate functions only.
-- DATA MANIPULATION LANGUAGE
show tables;

select * from dim_customer;
-- INSERT
-- INSERT INTO table_name (column1, column2, column3)
-- VALUES
--     (value1, value2, value3),
--     (value4, value5, value6),
--     (value7, value8, value9);



-- UPDATE

UPDATE dim_customer
SET first_name = 'Ankit'
WHERE customer_id = 'CUST0001';

SELECT * from dim_customer;

-- Updating miul-- tiple values 
-- UPDATE table_name
-- SET
--     column1 = value1,
--     column2 = value2,
--     column3 = value3
-- WHERE condition;


-- Conditional Update
-- UPDATE dim_customer
-- SET
--     first_name = CASE
--         WHEN customer_id = 'CUST0001' THEN 'Ankit'
--         WHEN customer_id = 'CUST0002' THEN 'Rahul'
--     END,
--     city = CASE
--         WHEN customer_id = 'CUST0001' THEN 'Pune'
--         WHEN customer_id = 'CUST0002' THEN 'Mumbai'
--     END
-- WHERE customer_id IN ('CUST0001', 'CUST0002');

-- If values that are updated comes from another table
-- UPDATE dim_customer dc
-- SET
--     first_name = s.first_name,
--     last_name = s.last_name,
--     email = s.email
-- FROM staging_customer s
-- WHERE dc.customer_id = s.customer_id;
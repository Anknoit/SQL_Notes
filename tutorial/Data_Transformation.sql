-- Numeric Transformation
select * from dim_product;
SELECT
	unit_price * 0.90 as dicount_ten,
    unit_price * 0.80 as discount_twenty,
    (unit_price * 1.18) as gst_icluded_price
from dim_product;

-- Date Transformation - IMP

-- UTC = Coordinated Universal Time, A Standard time across the globe irrespective of daylight night or morning
SELECT * FROM dim_date;
-- 1 - UTC TIME
SELECT
	date,
    now() as `my_local_time`,
    utc_date as 'utc_date',
    utc_time() as 'utc_time',
    utc_timestamp() as 'utc_timestamp'
FROM 
	dim_date;
-- timestamp = include full date + full time
    
-- 2 - Extract Specific Part of Timestamp - DATE(), MONTH(), WEEKDAY(), DAY(), HOUR(), MIN(), SECOND()
SELECT
	DATE(date) as Date,
    MONTH(date) as Month,
    YEAR(date) as Year,
    -- since our data has no time stamp
    HOUR(utc_time()) as Hour,
    MINUTE(utc_time()) as Minute,
    SECOND(utc_time()) as Second
FROM
	dim_date;
    
-- 3 - Adding/Subtracting Days from Dates and Calculating Difference betn 2 dates
SELECT
	date as 'normal_date',
	ADDDATE(date,2) as 'two_add',
    SUBDATE(date,5) as 'five_sub'
FROM
	dim_date;
    
-- caculating time difference
SELECT
	date as old_date,
    utc_date() as 'current_date',
	DATEDIFF(current_date, date) as date_diff,
    DATEDIFF(current_date, date)/365 as year_diff
FROM
	dim_date;
    
-- Date formatting
SELECT 
	date_format(date, '%Y') as Year,
    date_format(date, '%Y %M, %D %W') as Readable_format -- there are more formatting options
FROM
	dim_date;
    
-- Type Casting - Converting Types 
-- Used in Joins when the comon column for joining may be of same value but their types could be different
SELECT
	CAST(product_id AS CHAR(100))
FROM
	dim_product;
    
-- STRING FUNCTIONS
-- first count starts from 1 and NOT 0 unlike Arrays
SELECT * FROM dim_customer;
SELECT
	CONCAT(first_name, ' ', last_name, ' - ', country) as customer_origin,
    CONCAT_WS(' - ', first_name, last_name, country) as info_automatic_sep, -- For automatic Separator
    LENGTH(first_name),
    SUBSTRING(first_name, 1, 3),
    RIGHT(last_name, 2),
    LEFT(first_name, 3),
    REVERSE(first_name),
    REPEAT(last_name, 2),
    UPPER(first_name),
    Lower(first_name)
FROM 
	dim_customer;
	
	
		
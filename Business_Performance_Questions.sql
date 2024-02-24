#What are the quarterly trends for order count, sales, and AOV for Macbooks sold in North America across all years?

--Extract the quarter from the purchase timestamp and join the necessary tables to isolate NA sales
WITH quarterly_sales AS (
 SELECT date_trunc(purchase_ts, quarter) as quarter,
  COUNT(DISTINCT orders.id) as order_count,
  ROUND(SUM(usd_price),2) as total_sales,
  ROUND(AVG(usd_price),2) as aov
  FROM core.orders 
  LEFT JOIN core.customers
    ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup
    ON customers.country_code = geo_lookup.country
 WHERE region = 'NA' AND lower(product_name) LIKE '%macbook%'
 GROUP BY 1
 ORDER BY 1 ASC)

--Find the averages across all quarters
SELECT ROUND(AVG(order_count), 2) as avg_orders,
  ROUND(AVG(total_sales),2) as avg_sales,
  ROUND(AVG(aov),2) as avg_aov
 FROM quarterly_sales;


#For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver?

--find the region for each order by joining the customer table with geo_lookup table
--calculate the difference between purchase and delivery timestamps to get average delivery time
SELECT region,
  avg(date_diff(order_status.delivery_ts, order_status.purchase_ts, day)) as avg_delivery_time
 FROM core.orders 
 LEFT JOIN core.order_status
   ON orders.id = order_status.order_id
 LEFT JOIN core.customers
   ON orders.customer_id = customers.id
 LEFT JOIN core.geo_lookup
   ON customers.country_code = geo_lookup.country
 WHERE (extract(year from order_status.purchase_ts) = 2022 AND lower(purchase_platform) = 'website') OR lower(purchase_platform) = 'mobile app'
 GROUP BY 1
 ORDER BY 2 desc;


#Are there certain products that are getting refunded more frequently than others?

--clean product names for consistency
--create a helper column to identify refunds, then use it to calculate refund rate
SELECT
  CASE
    WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' 
    ELSE product_name
  END AS product_clean,
  COUNT(refund_ts) as refund_count,
  ROUND(AVG(CASE
        WHEN refund_ts IS NOT NULL THEN 1
        ELSE 0 END)*100, 2)  AS refund_rate
  FROM core.orders
  LEFT JOIN core.order_status 
    ON orders.id = order_status.order_id
  GROUP BY 1
  ORDER BY 3 desc;

#Within each region, what is the most popular product?

--find the region for each order by joining the customer table with geo_lookup table
--clean product names for consistency
--partition orders to find most popular product in each region
SELECT region,
  CASE
    WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' 
    ELSE product_name
  END AS product_clean,
  COUNT(order_id) as order_count
  FROM core.orders 
 LEFT JOIN core.order_status
   ON orders.id = order_status.order_id
 LEFT JOIN core.customers
   ON orders.customer_id = customers.id
 LEFT JOIN core.geo_lookup
   ON customers.country_code = geo_lookup.country
 GROUP BY 1, 2
 QUALIFY (rank() over (partition by region order by order_count DESC) = 1)
 ORDER BY 1 DESC;

#Which marketing channel has the highest average signup rate for the loyalty program, and how does this compare to the channel that has the highest number of loyalty program participants?

--use loyalty program helper column to calculate signup rate and total signups
--group by channel to identify highest signup rate
SELECT marketing_channel,
  ROUND(AVG(loyalty_program)*100, 1) as loyalty_signup_rate,
  SUM(loyalty_program) as loyalty_signups
  FROM core.customers
  GROUP BY 1
  ORDER BY 2 DESC;

-- For each brand, which month in 2020 had the highest number of refunds, and how many refunds did that month have?

WITH refunds AS (
SELECT EXTRACT(month from refund_ts) as month,
    CASE 
      WHEN product_name LIKE '%Apple%' OR product_name LIKE '%Mac%' THEN 'Apple'
      WHEN product_name LIKE '%ThinkPad%' THEN 'Lenovo'
      WHEN product_name LIKE '%Samsung%' THEN 'Samsung'
      WHEN product_name LIKE '%bose%' THEN 'Bose'
      ELSE 'None'
    END AS brand,
    COUNT(product_name) AS refund_count,
    
  FROM core.order_status
  LEFT JOIN core.orders
    ON order_status.order_id = orders.id 
 WHERE EXTRACT(year from refund_ts) = 2020
 GROUP BY 1,2
 ORDER BY 3 desc
)

SELECT brand,
  month,
  refund_count
  FROM refunds
  QUALIFY (rank () over (partition by brand order by refund_count desc) = 1)
  ORDER BY refund_count DESC

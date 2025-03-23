-- Question 1
SELECT user_id,
       user_name,
       birth_date,
       count(order_id) AS order_count
FROM users u
LEFT JOIN orders o ON o.seller_id = u.user_id
WHERE to_char(birth_date, 'YYYYmm') = to_char(CURRENT_DATE, 'YYYYmm')
  AND o.created_at BETWEEN '2020-01-01'::date AND '2020-01-31'
GROUP BY 1, 2, 3
HAVING count(order_id) > 1500;


-- Question 2
WITH all_sellers AS (
    SELECT to_char(o.created_at, 'YYYY-mm') AS analysis_month,
          u.user_name,
          count(o.order_id) AS order_count,
          sum(o.item_quantity) AS items_sold,
          sum(o.order_amount) AS total_amount
   FROM orders o
   LEFT JOIN item i ON i.item_id = o.item_id
   LEFT JOIN users u ON u.user_id = o.seller_id
   LEFT JOIN category c ON c.category_id = i.category_id
   WHERE c.category_name = 'Celulares'
     AND o.created_at BETWEEN '2020-01-01'::date AND '2020-12-31'::date
   GROUP BY 1,2
), ranked AS (
    SELECT analysis_month,
          user_name,
          order_count,
          items_sold,
          total_amount,
          rank() OVER (PARTITION BY analysis_month ORDER BY total_amount DESC) AS rank_position
   FROM all_sellers
)
SELECT analysis_month,
       user_name,
       order_count,
       items_sold,
       total_amount
FROM ranked
WHERE rank_position <=5;



-- Question 3

-- Considering a history table defined as follows:
CREATE TABLE item_history(
    item_id int,
    item_price decimal(10,2),
    active boolean,
    processing_timestamp timestamp
);

CREATE PROCEDURE LoadItemHistory() LANGUAGE SQL
BEGIN ATOMIC
INSERT INTO item_history
SELECT item_id,
       unit_price,
       active,
       now() as processing_date
FROM item; END;

CALL LoadItemHistory();
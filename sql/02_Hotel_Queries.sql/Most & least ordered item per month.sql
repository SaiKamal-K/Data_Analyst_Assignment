WITH item_sales AS (
    SELECT strftime('%Y-%m', bill_date) AS month,
           item_id,
           SUM(item_quantity) AS total_qty
    FROM booking_commercials
    WHERE strftime('%Y', bill_date) = '2021'
    GROUP BY month, item_id
),
ranked AS (
    SELECT *,
           RANK() OVER (PARTITION BY month ORDER BY total_qty DESC) AS max_rank,
           RANK() OVER (PARTITION BY month ORDER BY total_qty ASC) AS min_rank
    FROM item_sales
)
SELECT *
FROM ranked
WHERE max_rank = 1 OR min_rank = 1;
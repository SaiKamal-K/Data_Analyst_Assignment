WITH bill_data AS (
    SELECT strftime('%Y-%m', bc.bill_date) AS month,
           b.user_id,
           bc.bill_id,
           SUM(bc.item_quantity * i.item_rate) AS bill_amount
    FROM booking_commercials bc
    JOIN items i ON bc.item_id = i.item_id
    JOIN bookings b ON bc.booking_id = b.booking_id
    WHERE strftime('%Y', bc.bill_date) = '2021'
    GROUP BY month, bc.bill_id
),
ranked AS (
    SELECT *,
           RANK() OVER (PARTITION BY month ORDER BY bill_amount DESC) AS rnk
    FROM bill_data
)
SELECT *
FROM ranked
WHERE rnk = 2;
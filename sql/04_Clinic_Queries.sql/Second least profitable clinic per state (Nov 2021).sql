WITH profit_data AS (
    SELECT c.state,
           c.cid,
           SUM(cs.amount) - IFNULL(SUM(e.amount), 0) AS profit
    FROM clinics c
    LEFT JOIN clinic_sales cs ON c.cid = cs.cid
    LEFT JOIN expenses e ON c.cid = e.cid
    WHERE strftime('%Y-%m', cs.datetime) = '2021-11'
    GROUP BY c.state, c.cid
),
ranked AS (
    SELECT *,
           RANK() OVER (PARTITION BY state ORDER BY profit ASC) AS rnk
    FROM profit_data
)
SELECT *
FROM ranked
WHERE rnk = 2;
SELECT sales_channel,
       SUM(amount) AS total_revenue
FROM clinic_sales
WHERE strftime('%Y', datetime) = '2021'
GROUP BY sales_channel;
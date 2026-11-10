SELECT
  PARSE_DATE('%Y%m%d', event_date) AS day,
  COUNT(*) as purchases,
  ROUND(SUM(ecommerce.purchase_revenue), 2) AS revenue
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name = 'purchase'
GROUP BY day
ORDER BY purchases DESC
LIMIT 10
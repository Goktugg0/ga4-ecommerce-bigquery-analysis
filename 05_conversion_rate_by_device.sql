SELECT
  device.category,
  COUNT(DISTINCT user_pseudo_id) AS users,
  COUNT(DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL)) AS purchasers,
  ROUND(100 * COUNT(DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL))
/ COUNT(DISTINCT user_pseudo_id), 2) AS conversion_rate
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
GROUP BY device.category
ORDER BY users DESC;
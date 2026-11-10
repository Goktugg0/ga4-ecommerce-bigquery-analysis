SELECT 
  item.item_name,
  COUNT(DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL)) AS bought,
  COUNT(DISTINCT IF(event_name = 'view_item', user_pseudo_id, NULL)) AS viewed,
  ROUND(100 * COUNT(DISTINCT IF(event_name = 'purchase', user_pseudo_id, NULL))
  / COUNT(DISTINCT IF(event_name = 'view_item', user_pseudo_id, NULL))
  , 2) AS ratio_bought_viewed
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
  UNNEST(items) AS item
GROUP BY item.item_name
HAVING viewed > 100
ORDER BY ratio_bought_viewed
LIMIT 40

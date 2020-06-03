select
  DATE(event_datetime) AS date,
  count(distinct user_id) as nb_users,
  ROUND(SUM(total_price),2) as daily_total,
  COUNT(product_id) as nb_products
from
  {{ref('purchases')}}
group by
  date

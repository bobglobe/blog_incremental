select
  PARSE_TIMESTAMP("%e/%m/%Y",event_datetime) AS event_datetime,
  user_id,
  sales_value as total_price,
  product_id as product_id
from
  {{source('raw_blog', 'purchases')}}

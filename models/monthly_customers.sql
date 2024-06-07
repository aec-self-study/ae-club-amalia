select 
  date_trunc(created_at, month) as month,
  count(distinct customer_id)
from analytics-engineers-club.coffee_shop.orders 
group by 1

limit 10
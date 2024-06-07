select 
  date_trunc(created_at, month),
  count(distinct customer_id)
from analytics-engineers-club.coffee_shop.orders 
group by 1
order by 1 asc
limit 10;
with customer_orders as (
    select 
        customer_id,
        count(id) as num_orders,
        min(created_at) as first_order_at
    from analytics-engineers-club.coffee_shop.orders
    group by 1
)

select 
    customers.id as customer_id, 
    customers.name as customer_name, 
    customers.email as customer_email, 
    customer_orders.first_order_at, 
    customer_orders.num_orders
from analytics-engineers-club.coffee_shop.customers
left join customer_orders on customers.id = customer_orders.customer_id
order by first_order_at
limit 5
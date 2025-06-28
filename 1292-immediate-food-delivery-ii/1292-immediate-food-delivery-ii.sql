# Write your MySQL query statement below

with cte1 as (select d.* from delivery d join(
    select customer_id, min(order_date)  as first_order from delivery
    group by customer_id
) cte2 on d.customer_id=cte2.customer_id and  d.order_date=cte2.first_order
)

select round((sum(case when order_date=customer_pref_delivery_date then 1 else 0 end)/count(customer_id))*100,2) as immediate_percentage
from cte1

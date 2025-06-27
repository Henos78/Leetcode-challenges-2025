# Write your MySQL query statement below
with cte1 as (select * from productpurchases join productinfo using(product_id)),

cte2 as (select * from productinfo join productpurchases using(product_id))

select p1.product_id as product1_id, p2.product_id as product2_id, 
p1.category as product1_category, p2.category as product2_category, count(p1.user_id) as customer_count
from cte1 p1 join cte2 p2 on p2.user_id=p1.user_id
where p1.product_id <p2.product_id 
group by p1.product_id, p2.product_id
having customer_count>=3
order by customer_count desc, p1.product_id asc, p2.product_id asc
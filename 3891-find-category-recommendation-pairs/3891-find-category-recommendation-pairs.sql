# Write your MySQL query statement below
with  cte1 as  (select * from productpurchases join productinfo using(product_id)),
cte2 as  (select * from productpurchases join productinfo using(product_id))

select p1.category as category1, p2.category as category2, count(distinct p1.user_id) as customer_count
from cte1 p1 join cte2 p2 on p2.user_id=p1.user_id
where p1.category<p2.category
group by category1,category2
having customer_count >= 3
order by customer_count desc, category1,category2

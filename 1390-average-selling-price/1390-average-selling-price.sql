# Write your MySQL query statement below

with cte as (
select product_id, round(sum(units*price)/sum(units),2) as average_price
from prices left join unitssold using(product_id)
where purchase_date between start_date and end_date
group by product_id)

select * from cte
union
select product_id, 0 as average_price from prices
where product_id not in (select product_id from unitssold)
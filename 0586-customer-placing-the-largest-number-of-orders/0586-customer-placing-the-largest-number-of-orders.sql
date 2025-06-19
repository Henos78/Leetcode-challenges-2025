# Write your MySQL query statement below
select customer_number from (
    select customer_number, count(customer_number) as total_count  from orders
group by customer_number
) as temp
order by total_count desc
limit 1



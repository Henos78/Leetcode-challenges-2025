# Write your MySQL query statement below
with cte as (select visited_on, 
sum(amount) over(order by visited_on range between interval 6 day preceding and current row) as amount from customer
order by visited_on)

select visited_on, amount, round((amount/7),2) as average_amount  from cte
where date_sub(visited_on, interval 6 day) in (select visited_on from cte)
group by visited_on
order by visited_on 


# Write your MySQL query statement below
select person_name from
(select turn, person_id, person_name, weight, sum(weight) over (order by turn) as total_sum from queue)  as cte
where total_sum <= 1000
group by turn
order by turn desc limit 1


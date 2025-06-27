# Write your MySQL query statement belowt


select contest_id,
round((count(distinct user_id)/(select count(distinct user_id) from users))*100,2) as percentage 
from users join register using(user_id) 
group by contest_id
order by percentage desc, contest_id
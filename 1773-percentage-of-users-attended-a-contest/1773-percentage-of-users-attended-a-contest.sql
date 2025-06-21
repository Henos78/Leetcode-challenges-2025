# Write your MySQL query statement belowt


select r.contest_id,round((count(distinct r.user_id)/(select count(distinct user_id) from users))*100,2) as percentage  from users u
join register r on r.user_id=u.user_id
group by r.contest_id
order by percentage desc, r.contest_id
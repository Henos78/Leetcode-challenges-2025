# Write your MySQL query statement below
with cte as (
    select player_id,  min(event_date) as first_login from activity
    group by player_id )
    
select
 round(sum(case when a.event_date=date_add(c.first_login, interval 1 day) then 1 else 0 end)/ 
 count(distinct c.player_id),2) as fraction from activity a join cte c on c.player_id=a.player_id


# Write your MySQL query statement below

select Request_at as Day, 
round(sum(Status in ('cancelled_by_driver','cancelled_by_client'))/count(*),2) as 'Cancellation Rate'
from Trips
where Request_at between '2013-10-01'  and '2013-10-03' and
Client_id not in (select Users_id from Users where Banned='Yes'and Role='client') and
Driver_id  not in (select Users_id from Users where Banned='Yes'and Role='driver')
group by Request_at
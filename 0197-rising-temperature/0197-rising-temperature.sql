# Write your MySQL query statement below
#First trail but didnt pass all the test case
/**with temp as (
    select id, temperature,
    lag(temperature) over ( order by recordDate) as prev_temp from weather
)

select id from temp
where temperature > prev_temp
**/

 select today.id  from weather today
 cross join weather yesterday 
 where datediff(today.recordDate, yesterday.recordDate)=1 and
 today.temperature > yesterday.temperature




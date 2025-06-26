# Write your MySQL query statement below
with cte as
 (select * from students
cross join subjects)

select c.student_id, c.student_name,c.subject_name, count(e.subject_name) as attended_exams from cte c
left join examinations e on e.student_id = c.student_id and e.subject_name=c.subject_name
group by student_name,subject_name
order by c.student_id, c.subject_name



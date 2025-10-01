-- joins with subquerry
/*
select 
from
join 
on 
where
 group by 
 having
 order by
 limit
 */
 
 SELECT 
    e1.*, dept_name, location
FROM
    employee e1
        JOIN
    department d ON e1.dept_id = e1.dept_id
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employee e2
        WHERE
            e2.dept_id = e1.dept_id)
ORDER BY salary;
 
 
 select e1.*, dept_name, location from employee e1
 join department d on e1.dept_id = d.dept_id
 where salary > 
 (
    select avg(salary) from employee e2
    where  e2. dept_id = e1.dept_id
 )
 order by salary;
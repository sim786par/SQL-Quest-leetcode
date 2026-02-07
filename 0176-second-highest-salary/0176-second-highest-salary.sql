# Write your MySQL query statement below
select(
SELECT distinct salary
from Employee
order by salary desc
limit 1 OFFSET 1
) as SecondHighestSalary;    
-- offset is used to skip rows and limit set boundary
-- wrapper is used inner block produces empty set but it should give null if not present 
-- so the outer loop generates the null of the empty set
-- dense_rank() set the rank of the values without skipping the number if multiple same value is present.
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select salary
      from(
        select salary , DENSE_RANK() OVER(order by salary desc) as rnk
        from Employee
      )t
      where rnk = N
      limit 1
  );
END

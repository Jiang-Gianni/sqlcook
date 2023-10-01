select
    sal
from(
    select
        sal,
        dense_rank() over (order by cnt desc) as rnk
    from(
        select
            sal,
            count(*) as cnt
        from emp
        where deptno = 20
        group by sal
    ) x
) y
where rnk = 1
;

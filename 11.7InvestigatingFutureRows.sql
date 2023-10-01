select
    ename,
    sal,
    next_sal,
    hiredate,
    next_hiredate
from(
    select
        ename,
        sal,
        hiredate,
        lead(sal) over (order by hiredate) as next_sal,
        lead(hiredate) over (order by hiredate) as next_hiredate
    from emp
)
where sal <= next_sal;

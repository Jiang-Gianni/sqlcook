select
 *,
 (empno + lag_1 + lag_2) / 3 as mv_avg
from (
    select
        hiredate,
        empno,
        lag(empno, 1) over (order by hiredate) as lag_1,
        lag(empno, 2) over (order by hiredate) as lag_2
    from emp
    order by hiredate
);
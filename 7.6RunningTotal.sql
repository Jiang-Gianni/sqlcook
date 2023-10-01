-- Order by sal, empno is needed because it will count dupes of sal if there are any
select
ename,
sal,
sum(sal) over (order by sal, empno) as running_sum,
avg(sal) over (order by sal, empno) as running_avg,
min(sal) over (order by sal, empno) as running_min,
max(sal) over (order by sal, empno) as running_max,
exp(sum(ln(sal))over(order by sal,empno)) as running_prod
from emp
order by 2
;
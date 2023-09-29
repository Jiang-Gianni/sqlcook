select
    ename,
    sal,
    job,
    comm
from emp
order by
    case job
    when 'SALESMAN' then comm
    else sal
    end
;


select
    ename,
    sal,
    job,
    comm,
    case job
    when 'SALESMAN' then comm
    else sal
    end as ordered
from emp
order by ordered
;
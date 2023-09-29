-- Sort by comm null first ascending
select ename,sal,comm
from emp
order by 3;

-- Sort by comm null last descending
select ename,sal,comm
from emp
order by 3 desc;

-- Sort by comm null last ascending
select ename,sal,comm
from (
    select
    ename,
    sal,
    comm,
    case
    when comm is null then 0
    else 1
    end as is_null
    from emp
)
order by is_null desc, comm;

-- Sort by comm null first descending
select ename,sal,comm
from (
    select
    ename,
    sal,
    comm,
    case
    when comm is null then 0
    else 1
    end as is_null
    from emp
)
order by is_null, comm desc;
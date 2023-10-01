select
substr(ename, pos, 1),
substr(ename, pos),
substr(ename, length(ename)-pos+1)
from (select ename from emp where ename = 'KING') e,
    (
        with recursive cnt(x) as (
            select 1 as pos
            union all
            select x+1 as pos from cnt
            limit 10
        ) select x as pos from cnt
    ) iter
where pos <= length(ename);



select
group_concat(a, '')
from (
    select
    ename,
    substr(ename, pos, 1) as a
from (select ename from emp ) e,
    (
        with recursive cnt(x) as (
            select 1 as pos
            union all
            select x+1 as pos from cnt
            limit 10
        ) select x as pos from cnt
    ) iter
where pos <= length(ename)
order by a
)
group by ename;

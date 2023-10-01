with recursive x(pos, ename, empno, mgr) as (
    select 1, ename, empno, mgr from emp where ename = 'KING'
    union all
    select x.pos + 1, e.ename || '-->' || x.ename, e.empno, e.mgr from emp e, x where (e.mgr = x.empno)
)
select * from x
where pos = (
    select max(pos) from x
);


with recursive tree(depth, emp_tree, empno) as (
   select 1, ename, empno from emp where mgr is null
   union all
   select depth+1, t.emp_tree || ' - ' || e.ename, e.empno from emp e, tree t where (t.empno = e.mgr)
) select * from tree
order by emp_tree;


with recursive tree(depth, ename, empno) as (
   select 1, ename, empno from emp where ename='JONES'
   union all
   select depth+1, e.ename, e.empno from emp e, tree t where (t.empno = e.mgr)
) select ename from tree;


with recursive workingTable ( fibNum, NextNumber, index1)
as
(select 0,1,1
union all
select fibNum+nextNumber,fibNum,index1+1
from workingTable
where index1<20)
select * from workingTable as fib;
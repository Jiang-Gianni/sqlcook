create view V
as
select ename||' '||deptno as data
from emp;
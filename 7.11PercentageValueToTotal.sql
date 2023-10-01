select
    sum(
        case
        when deptno = 10
        then sal
        end
    ) * 100 / sum(sal)
from emp;
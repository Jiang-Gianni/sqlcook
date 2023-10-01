select deptno from dept except select deptno from emp;

select deptno from dept
where deptno not in (select deptno from emp);

-- Careful, because if a row has deptno = null in emp then "not in (..., null)" won't return any values because (false or null) equal to null while (true or null) is true
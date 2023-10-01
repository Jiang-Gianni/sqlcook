merge into emp_commission ec
using (select * from emp) emp
    on emp.emp_no = ec.emp_no
when matched then
    update set ec.comm = 1000
    delete where (sal < 2000)
when not matched then
    insert (ec.empno, ec.ename, ec.deptno, ec.comm)
    values (emp.empno, emp.ename, emp.deptno, emp.comm)
    ;
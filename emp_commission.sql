drop table if exists emp_commission;

create table emp_commission(
    deptno int,
    empno int,
    ename text,
    comm int
);

insert into emp_commission(deptno, empno, ename, comm) values
(10, 7782, "CLARK", null),
(10, 7839, "KING", null),
(10, 7934, "MILLER", null);

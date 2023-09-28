drop table if exists dept;

create table dept(
    deptno int,
    dname text,
    loc text
);

insert into dept(deptno, dname, loc) values
(10, "ACCOUNTING", "NEW YORK"),
(20, "RESEARCH", "DALLAS"),
(30, "SALES", "CHICAGO"),
(40, "OPERATIONS", "BOSTON");
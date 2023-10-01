drop table if exists emp_bonus;

create table emp_bonus(
    empno int,
    received text,
    bonus_type int
);

insert into emp_bonus(empno, received, bonus_type) values
(7934, "17-MAR-2005", 1),
(7934, "15-FEB-2005", 2),
(7839, "17-MAR-2005", 3),
(7782, "17-MAR-2005", 1);

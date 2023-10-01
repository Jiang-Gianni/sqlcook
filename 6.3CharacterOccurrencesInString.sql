-- Number of commas
-- Division in case the searched stringo has a certain lenght
select
    (
        length('10,CLARK,MANAGER')- length(replace('10,CLARK,MANAGER',',',''))
    )/length(',')
    ;

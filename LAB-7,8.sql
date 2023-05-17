show databases;
use dbms_ce21_g11;
show tables;

create table EMP_TABLE (
	EMP_NO varchar(5) primary key,
	ENAME varchar(15),
    JOB varchar(15),
    MGR VARCHAR(6), 
    HIRE_DATE DATE, 
    SAL INTEGER, 
    COMM INTEGER, 
    DEPT_NO VARCHAR(5)
);
create table DEPT_TABLE (
	DEPT_NO varchar(5) primary key,
    DNAME varchar(15),
    LOC varchar(15)
);

desc EMP_TABLE;
desc DEPT_TABLE;

show tables;

insert into EMP_TABLE values("7369","SMITH","CLERK","7902","1980-12-17",500,800,"20");
insert into EMP_TABLE values("7499","ALLEN","SALESMAN","7698","1981-02-20",1600,300,"30");
insert into EMP_TABLE values("7521","WARD","SALESMAN","7698","1981-02-22",1250,500,"30");
insert into EMP_TABLE values("7566","JONES","MANAGER","7839","1981-04-02",2957,NULL,20);
insert into EMP_TABLE values("7654","MARTIN","SALESMAN","7698","1981-09-28",1250,1400,"30");
insert into EMP_TABLE values("7698","BLACKE","MANAGER","7839","1981-05-01",2850,NULL,30);
insert into EMP_TABLE values("7782","CLARK","MANAGER","7839","1981-06-09",2450,NULL,10);
insert into EMP_TABLE values("7788","SCOTT","ANALYST","7566","1982-12-09",3000,NULL,20);
insert into EMP_TABLE values("7839","KING","PRESIDENT",NULL,"1981-11-17",5000,NULL,10);
insert into EMP_TABLE values("7844","TURNER","SALESMAN","7698","1981-09-08",1500,0,"30");
insert into EMP_TABLE values("7876","ADAMS","CLERK","7788","1989-01-12",1100,NULL,20);

insert into EMP_TABLE values("7900","JAMES","CLERK","7698","1981-12-03",950,NULL,30);

insert into EMP_TABLE values("7902","FORD","ANALYST","7566","1981-12-03",3000,NULL,20);

insert into EMP_TABLE values("7934","MILLER","CLERK","7782","1982-01-23",1300,NULL,10);

insert into DEPT_TABLE values("10","ACCOUNTING","NEW YORK");

insert into DEPT_TABLE values("20","RESEARCH","DALLAS");

insert into DEPT_TABLE values("30","SALES","CHICAGO");

insert into DEPT_TABLE values("40","OPERATIONS","BOSTON");

delete from EMP_TABLE where EMP_NO=7934;

SHOW TABLES;

select * from EMP_TABLE;

select * from DEPT_TABLE;

select * from EMP_TABLE WHERE SAL >(SELECT SAL FROM EMP_TABLE WHERE ENAME="BLACKE");

select * from EMP_TABLE WHERE JOB IN (SELECT JOB FROM EMP_TABLE WHERE ENAME="ALLEN");

select * from EMP_TABLE WHERE SAL IN (SELECT SAL FROM EMP_TABLE WHERE ENAME="FORD"OR ENAME="SMITH")ORDER BY(ENAME)DESC;

select * from EMP_TABLE WHERE JOB IN (SELECT JOB FROM EMP_TABLE WHERE ENAME="MILLER") OR SAL > (SELECT SAL FROM EMP_TABLE WHERE ENAME="ALLEN");
-- 5
select ENAME from EMP_TABLE WHERE SAL IN (SELECT MAX(SAL) AS M  FROM EMP_TABLE WHERE DEPT_NO IN (SELECT DEPT_NO FROM DEPT_TABLE WHERE DNAME="SALES")) AND DEPT_NO IN(SELECT DEPT_NO FROM DEPT_TABLE WHERE DNAME="SALES");
-- 6
select * from EMP_TABLE WHERE HIRE_DATE < (SELECT MAX(HIRE_DATE) from EMP_TABLE WHERE MGR IN (SELECT EMP_NO FROM EMP_TABLE WHERE ENAME ="KING"));
-- 7 
select ename ,dname from emp_table e,dept_table d where sal in (select max(sal) from emp_table group by dept_no) and e.dept_no=d.dept_no; 
-- 8
select * from EMP_TABLE WHERE SAL IN (SELECT ( MAX(SAL) + MIN(SAL) ) / 2 FROM EMP_TABLE);
-- 9 
select * from EMP_TABLE e where HIRE_DATE IN (select HIRE_DATE from EMP_TABLE WHERE e.emp_no <> emp_no);
-- 10
select * from emp_table e where hire_date < (select hire_date from emp_table where emp_no=e.mgr);
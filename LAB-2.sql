show databases;
set sql_safe_updates=0;
use dbms_ce21_g11;
-- Q-1 
select NAME from CLIENT_MASTER;

-- Q2
select * from CLIENT_MASTER;

-- Q3
select NAME, CITY, STATE from CLIENT_MASTER;

-- Q4
select DESCRIPTION from PRODUCT_MASTER;

-- Q5 
select * from CLIENT_MASTER
WHERE CITY="Mumbai";

-- Q6 
select SALESMANNAME from SALESMAN_MASTER
WHERE SALAMT=3000;

-- Q7
 update CLIENT_MASTER
 set CITY="Banglore"
 where CLIENTNO="C00005";
 select * from CLIENT_MASTER;
 
 -- Q8
 update CLIENT_MASTER
 set BALDUE=1000
 where CLIENTNO="C00001";
 select * from CLIENT_MASTER;
 
 -- Q9
 update PRODUCT_MASTER
 set COSTPRICE=950
 where DESCRIPTION="Trousers";
 select * from PRODUCT_MASTER;
 
 -- Q10
 update SALESMAN_MASTER
 set CITY="Pune";
 select * from SALESMAN_MASTER;
 
 -- Q11
 delete from SALESMAN_MASTER 
 where SALAMT=3500;
 select * from SALESMAN_MASTER;
 
 -- Q12
 delete DESCRIPTION from SALESMAN_MASTER
 where QTYONHAND=100;
 select * from PRODUCT_MASTER;
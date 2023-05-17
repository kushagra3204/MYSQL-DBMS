show databases;

-- creating table 1 CLIENT_MASTER
use dbms_ce21_g11;
create table CLIENT_MASTER(
CLIENTNO varchar(6),
NAME varchar(20),
ADDRESS_1 varchar(30),
ADDRESS_2 varchar(30),
CITY varchar(15),
PINCODE int,
STATE varchar(15),
BALDUE decimal(10,2));
desc CLIENT_MASTER;

-- 2nd table PRODUCT_MASTER;
use dbms_ce21_g11;
create table PRODUCT_MASTER(
PRODUCTNO varchar(6),
DESCRIPTION varchar(15),
PROFITPERCENT decimal(4,2),
UNIT_MEASURE varchar(10),
QTYONHAND int,
REORDERL_VL int,
SELLPRICE decimal(8,2),
COSTPRICE decimal(8,2));
desc PRODUCT_MASTER;

-- 3rd table SALESMAN_MASTER
use dbms_ce21_g11;
create table SALESMAN_MASTER(
SALESMANNO varchar(6),
SALESMANNAME varchar(20),
ADDRESS_1 varchar(30),
ADDRESS_2 varchar(30),
CITY varchar(20),
PINCODE int,
STATE varchar(20),
SALAMT real,
TGTTOGET decimal,
YTDSALES decimal(6,2),
REMARKS varchar(60));
desc SALESMAN_MASTER;

-- Inserting elements in table 1 CLIENT_MASTER
insert into CLIENT_MASTER values("C00001","Ivan bayross",null,null,"Mumbai",400054,"Maharashtra",15000); 
insert into CLIENT_MASTER values("C00002","Mamta muzumdar",null,null,"Madras",780001,"Tamil nadu",0);
insert into CLIENT_MASTER values("C00003","Chhaya bankar",null,null,"Mumbai",400057,"Maharashtra",5000); 
insert into CLIENT_MASTER values("C00004","Ashwini  joshi",null,null,"Bangalore",560001,"Karnataka",0);
insert into CLIENT_MASTER values("C00005","Hansel colaco",null,null,"Mumbai",400060,"Maharashtra",2000);
insert into CLIENT_MASTER values("C00006","Deepak sharma",null,null,"Mangalore",560050,"Karnataka",0);
select * from CLIENT_MASTER;

-- inserting elements in table 2 PRODUCT_MASTER 
insert into PRODUCT_MASTER values("P00001","T-Shirt",5,"Piece",200,50,350,250);
insert into PRODUCT_MASTER values("P0345","Shirts",6,"Piece",150,50,500,350);
insert into PRODUCT_MASTER values("P06734","Cotton jeans",5,"Piece",100,20,600,450);
insert into PRODUCT_MASTER values("P07865","Jeans",5,"Piece",100,20,750,500);
insert into PRODUCT_MASTER values("P07868","Trousers",2,"Piece",150,50,850,550);
insert into PRODUCT_MASTER values("P07885","Pull Overs",2.5,"Piece",80,30,700,450);
insert into PRODUCT_MASTER values("P07965","Denim jeans",4,"Piece",100,40,350,250);
insert into PRODUCT_MASTER values("P07975","Lycra tops",5,"Piece",70,30,300,175);
insert into PRODUCT_MASTER values("P08865","Skirts",5,"Piece",75,30,450,300);
select * from PRODUCT_MASTER;

-- inserting elements in table 3 SALESMAN_MASTER 
insert into SALESMAN_MASTER values("S00001","Aman","A/14","Worli","Mumbai",400002,"Maharashtra",3000,100,50,"Good");
insert into SALESMAN_MASTER values("S00002","Omkar",65,"Nariman","Mumbai",400001,"Maharashtra",3000,200,100,"Good");
insert into SALESMAN_MASTER values("S00003","Raj","P-7","Bandra","Mumbai",400032,"Maharashtra",3000,200,100,"Good");
insert into SALESMAN_MASTER values("S00004","Ashish","A/5","Juhu","Mumbai",400044,"Maharashtra",3500,200,150,"Good");
select * from SALESMAN_MASTER;
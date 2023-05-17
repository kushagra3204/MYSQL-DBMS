show databases;
use dbms_ce21_g11;

create table Supplier(
scode varchar(10),
sname varchar(10),
scity varchar (10),
primary key (scode),
turnover int 
);
desc Supplier;

create table Part(
pcode varchar(10),
color varchar(10),
weight decimal(10, 2),
cost int,
sellingprice decimal(10, 2),
primary key(pcode)
);
desc Part;

create table Supplier_Part(
scode varchar(10),
pcode varchar(10),
primary key(scode,pcode),
foreign key(scode) references Supplier(scode),
foreign key(pcode) references Part(pcode),
qty int
);
desc Supplier_Part;

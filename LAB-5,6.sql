# Use of Inbuilt functions and relational algebra operation

# Q-1] (a) *****************************************************************************************************

show databases;
use dbms_ce21_g11;
show tables;

create table Supplier(
	SCODE varchar(5),
    SNAME varchar(20),
    SCITY varchar(20),
    TURNOVER int,
    PRIMARY KEY (SCODE)
);
desc Supplier;

create table Part(
	PCODE varchar(5),
    WEIGHT decimal(10, 2),
    COLOR varchar(10),
    COST decimal(10, 2),
    SELLING_PRICE decimal(10, 2),
    PRIMARY KEY (PCODE)
);

desc Part;

create table Supplier_Part(
	SCODE varchar(5),
    PCODE varchar(5),
    QTY varchar(20),
    PRIMARY KEY (SCODE, PCODE),
    FOREIGN KEY (SCODE) references Supplier(SCODE),
    FOREIGN KEY (PCODE) references Part(PCODE)
);
desc Supplier_Part;

-- Q-1] (b)
-- Inserting data in Supplier Table
insert into Supplier values("S0001", "Liam Paul", "Gandhinagar", 150000);
insert into Supplier values("S0002", "Mike Hatter", "Ahmedabad", 200000);
insert into Supplier values("S0003", "Jordan Smith", "Mumbai", 50000);
insert into Supplier values("S0004", "Luke Heyman", "Pune", 300000);
insert into Supplier values("S0005", "Chris Hemsworth", "Banglore", 175000);
select * from Supplier;


-- Inserting data in Part Table 
insert into Part values("P0001", 12, "Red", 1500, 1550.7);
insert into Part values("P0002", 30, "Green", 2000, 2250.88);
insert into Part values("P0003", 50, "Blue", 500, 1000.32);
insert into Part values("P0004", 17, "White", 3000, 3500.66);
insert into Part values("P0005", 80, "Black", 1750, 1800.12);
-- Inserting data in Supplier_Part Table
insert into Supplier_Part values("S0001", "P0001", 150);
insert into Supplier_Part values("S0002", "P0002", 200);
insert into Supplier_Part values("S0003", "P0003", 500);
insert into Supplier_Part values("S0004", "P0004", 300);
insert into Supplier_Part values("S0005", "P0005", 175);

select * from Supplier;
select * from Part;
select * from Supplier_Part;


-- Q-2]
-- 1 
SELECT scode, pcode FROM Supplier_part
ORDER BY scode ASC;

-- 2
SELECT * FROM SUPPLIER WHERE SCITY='BOMBAY' AND TURNOVER=50;

-- 3
SELECT COUNT(*) FROM SUPPLIER AS TOTAL;

-- 4
SELECT PCODE FROM PART WHERE WEIGHT BETWEEN 25 AND 35;

-- 5
SELECT SCODE FROM SUPPLIER WHERE TURNOVER IS NULL;

-- 6
SELECT PCODE FROM PART WHERE COST IN (20, 30, 40);
SELECT PCODE FROM PART WHERE COST = 20 OR COST = 30 OR COST = 40; 

-- 7
SELECT SUM(QTY) FROM SUPPLIER_PART WHERE PCODE='P0002';

-- 8
SELECT SNAME FROM SUPPLIER WHERE SCODE
IN (SELECT SCODE FROM SUPPLIER_PART WHERE PCODE='P0002');

-- 9
SELECT PCODE FROM PART WHERE COST > (SELECT AVG(COST) FROM PART);

-- 10
select scode, turnover from supplier order by turnover desc;

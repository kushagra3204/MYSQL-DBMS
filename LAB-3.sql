gshow databases;
use dbms_ce21_g11;
show tables;

create table CLIENT_MASTER_1(
	CLIENTNO varchar(6) PRIMARY KEY check(CLIENTNO like 'C%'),
    NAME varchar(20) NOT NULL,
    ADDRESS1 varchar (30),
    ADDRESS2 varchar (30),
    CITY varchar (15),
    PINCODE int,
    STATE varchar(15),
    BALDUE decimal(10, 2)
);

desc client_master_1;
select * from client_master_1;

# ************************************************************************************

create table PRODUCT_MASTER_1(
	PRODUCTNO varchar(6) PRIMARY KEY,
    DESCRIPTION varchar(15) NOT NULL,
    PROFITPERCENT decimal (4,2) NOT NULL,
    UNIT_MEASURE varchar (10) NOT NULL,
    QTYONHAND integer (8) NOT NULL,
    REORDERL_VL integer (8) NOT NULL,
    SELL_PRICE decimal(8, 2) NOT NULL,
    COST_PRICE decimal(8, 2) NOT NULL,
    
	CONSTRAINT CHK_PRODUCTNO CHECK (PRODUCTNO LIKE 'P%') 
);
desc product_master_1;
select * from product_master_1;

# ************************************************************************************

create table SALESMAN_MASTER_1(
	SALESMANNO varchar(6) PRIMARY KEY Check(SALESMANNO like 'S%'),
    SALESMANNAME varchar(20) NOT NULL,
    ADDRESS1 varchar (30) NOT NULL,
    ADDRESS2 varchar (30),
    CITY varchar (20),
    PINCODE integer,
    STATE varchar (20),
    SALAMT real NOT NULL,
    TGTTOGET decimal NOT NULL,
    YTDSALES double (6, 2) NOT NULL,
    REMARKS varchar(60),
    
    CONSTRAINT CHK_YTDSALES CHECK (SALAMT != 0),
    CONSTRAINT CHK_REMARKS CHECK (TGTTOGET != 0)
);
desc salesman_master_1;
select * from salesman_master_1;


# *********************** Inserting data in Client Table ***********************
insert into client_master_1 values("C00001", "Ivan Bayross", NULL, "", "Mumbai", 400054, "Maharastra", 15000);
insert into client_master_1 (clientno, name, city, pincode, state, baldue) values("C00002", "Mamta Muzumdar", "Madras", 780001, "Tamil Nadu", 0);
insert into client_master_1 (clientno, name, city, pincode, state, baldue) values("C00003", "Chhaya Bankar", "Mumbai", 400057, "Karnataka", 5000);
insert into client_master_1 (clientno, name, city, pincode, state, baldue) values("C00004", "Ashwini Joshi", "Banglore", 560001, "Tamil Nadu", 0);
insert into client_master_1 (clientno, name, city, pincode, state, baldue) values("C00005", "Hansel Colaco", "Mumbai", 400060, "Maharashtra", 2000);
insert into client_master_1 (clientno, name, city, pincode, state, baldue) values("P00006", "Deepak Sharma", "Manglore", 560050, "Karnataka", 0);

select * from client_master_1;

# *********************** Inserting data in Product Table ***********************
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P00001", "T-Shirt", 5, "Piece", 200, 50, 350, 250);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P0345", "Shirts", 6, "Piece", 150, 50, 500, 350);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P06734", "Cotton Jeans", 5, "Piece", 100, 20, 600, 450);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P07865", "Jeans", 5, "Piece", 100, 20, 750, 500);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P07868", "Trousers", 2, "Piece", 150, 50, 850, 550);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P07885", "Pull Overs", 2.5, "Piece", 80, 30, 700, 450);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P07965", "Denim Jeans", 4, "Piece", 100, 40, 350, 250);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P07975", "Lycra Tops", 5, "Piece", 70, 30, 300, 175);
insert into product_master_1 (productno, description, profitpercent, unit_measure, qtyonhand, reorderl_vl, sell_price, cost_price) values("P08865", "Skirts", 5, "Piece", 75, 30, 450, 300);

select * from product_master_1;

# *********************** Inserting data in Salesman Table ***********************
insert into salesman_master_1 (salesmanno, salesmanname, address1, address2, city, pincode, state, salamt, tgttoget, ytdsales, remarks) values("S00001", "Aman", "A/14", "Worli", "Mumbai", 400002, "Maharashtra", 3000, 100, 50, "Good");
insert into salesman_master_1 (salesmanno, salesmanname, address1, address2, city, pincode, state, salamt, tgttoget, ytdsales, remarks) values("S00002", "Omkar", "65", "Nariman", "Mumbai", 400001, "Maharashtra", 3000, 200, 100, "Good");
insert into salesman_master_1 (salesmanno, salesmanname, address1, address2, city, pincode, state, salamt, tgttoget, ytdsales, remarks) values("S00003", "Raj", "P-7", "Bandra", "Mumbai", 400032, "Maharashtra", 3000, 200, 100, "Good");
insert into salesman_master_1 (salesmanno, salesmanname, address1, address2, city, pincode, state, salamt, tgttoget, ytdsales, remarks) values("S00004", "Ashish", "A/5", "Juhu", "Mumbai", 400044, "Maharashtra", 3500, 200, 150, "Good");

select * from salesman_master_1;
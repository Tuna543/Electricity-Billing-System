drop table customers;
drop table bill;


--LAB 01:

CREATE TABLE CUSTOMERS(
    CUSTOMER_ID INTEGER PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(100),
    EMAIL VARCHAR(100) unique, --lab 03 (using unique key constraints)
    PASSWORD VARCHAR(100),
    ADDRESS VARCHAR(100)
);


CREATE TABLE BILL(
    BILL_ID INTEGER PRIMARY KEY,
    AMOUNT INTEGER,
    STATUS VARCHAR(100),
    CUSTOMER_ID INTEGER NOT NULL unique --lab 03 (using unique key constraints)
);

CREATE TABLE ELECTRICITY_BOARD (
  BOARD_ID int(14) NOT NULL,
  BOARD_NAME varchar(40) NOT NULL,
  PASSWORD varchar(20) NOT NULL
);

CREATE TABLE TRANSACTION(
	TRANSACTION_ID INT NOT NULL,
	DATE VARCHAR(100) NOT NULL,
	PAYABLE VARCHAR(100) NOT NULL
);

----------------------------------------------------------------
--lab 02
ALTER TABLE CUSTOMERS ADD CONSTRAINT pk_customers
PRIMARY KEY (customer_id);
ALTER TABLE bill ADD CONSTRAINT pk_bill
PRIMARY KEY (bill_id);
ALTER TABLE bill ADD CONSTRAINT fk_bill
FOREIGN KEY (CUSTOMER_ID) REFERENCES customers(CUSTOMER_ID);
----------------------------------------------------------------


----------------------------------------------------------------
--lab 03
ALTER TABLE CUSTOMERS ADD CONSTRAINT pk_customers
PRIMARY KEY (customer_id);
ALTER TABLE bill ADD CONSTRAINT pk_bill
PRIMARY KEY (bill_id);
ALTER TABLE bill ADD CONSTRAINT fk_bill
FOREIGN KEY (CUSTOMER_ID) REFERENCES customers(CUSTOMER_ID);
----------------------------------------------------------------


--inserting data into customers table
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (1, 'Ameen Khan', 'ameenkhan07@gmail.com', 'qwerty', 'Jamia nagar');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (2, 'Abhishek Bhatnagar', 'abhishek@gmail.com', 'qwerty', 'Ghaziabad');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (3, 'Anzal', 'anzal@gmail.com', 'qwerty', 'Batla House');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (4, 'Manaf', 'manaf@gmail.com', 'qwerty', 'Shaheen Bagh');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (5, 'abc', 'abc@gmail.com', 'qwerty', 'Jamia');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (6, 'xyz', 'xyz@gmail.com','qwerty', 'Dwarka');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (7, 'akshit', 'akshit@gmail.com', 'qwerty', 'Dhaka');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (8, 'akshita', 'akshita@gmail.com', 'qwerty', 'qwe');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (9, 'nakshit', 'nakshit@gmail.com', 'qwerty', 'California');
INSERT INTO CUSTOMERS (CUSTOMER_ID, CUSTOMER_NAME, EMAIL, PASSWORD, ADDRESS) VALUES (10, 'shita', 'shita@gmail.com', 'qwerty', 'New Mexico');

--inserting data into bill table
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (101, 1000, 'PAID', 1);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (102, 2000, 'PAID', 2);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (103, 3000, 'NOT PAID', 3);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (104, 4000, 'PAID', 4);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (105, 5000, 'NOT PAID', 5);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (106, 6000, 'NOT PAID', 6);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (107, 7000, 'PAID', 7);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (108, 8000, 'NOT PAID', 8);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (109, 9000, 'PAID', 9);
INSERT INTO BILL (BILL_ID, AMOUNT, STATUS, CUSTOMER_ID) VALUES (110, 1100, 'NOT PAID', 10);

--inserting data into electricity table
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(1, 'DHAKA BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(2, 'KHULNA BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(3, 'CHITTAGONG BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(4, 'RAJSHAHI BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(5, 'BARISAL BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(6, 'SYLHET BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(7, 'COMILLA BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(8, 'JESSORE BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(9, 'DINAJPUR BOARD','admin');
INSERT INTO ELECTRICITY_BOARD (BOARD_ID, BOARD_NAME, PASSWORD) VALUES(10, 'CHANDPUR BOARD','admin');

--


------------------------------------------------------------------------------------------
--lab 2

--describes table structure
desc customers;
desc bill;
DESC electricity_board;
desc transaction;

--showing all tables with data
select * from customers;
select * from bill;
select * from electricity_board;
select * from transaction;

----------alter command-------------------
--adding columns
alter table electricity_board
add(district varchar(100),
    country varchar(100));
desc electricity_board;

--modify
alter table electricity_board
modify(district varchar(10),
    country varchar(10));
desc electricity_board;

--rename
alter table electricity_board
rename column district to state;
desc electricity_board;

--drop a column
alter table electricity_board
drop column state;
alter table electricity_board
drop column country;
desc electricity_board;

--update
update electricity_board
set password='dhaka' where board_name='DHAKA BOARD';
select * from electricity_board;

--delete a whole row
delete from electricity_board where id=10;
select * from electricity_board;

-------------------------------------------------------------------------------------------
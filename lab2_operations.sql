------------------------------------------------------------------------------------------
--lab 2

--describes table structure
desc customers;
desc bill;
DESC board;
desc transactions;

--showing all tables with data
select * from customers;
select * from bill;
select * from board;
select * from transactions;

----------alter command-------------------
--adding columns
alter table board
add(district varchar(100),
    country varchar(100));
desc board;

--modify
alter table board
modify(district varchar(10),
    country varchar(10));
desc board;

--rename
alter table board
rename column district to state;
desc board;

--drop a column
alter table board
drop column state;
alter table board
drop column country;
desc board;

--update
update board
set pass='dhaka' where board_name='DHAKA BOARD';
select * from board;

--delete a whole row
delete from board where board_id=9;
select * from board;

-------------------------------------------------------------------------------------------
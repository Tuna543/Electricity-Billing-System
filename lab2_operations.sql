------------------------------------------------------------------------------------------
--lab 2

--describes table structure
desc customers;
desc bill;
DESC board;
desc transactions;
desc complaint;

--showing all tables with data
select * from customers;
select * from bill;
select * from board;
select * from transactions;
select * from complaint;

----------alter command-------------------
--adding columns
alter table board
add(statename varchar(100),
    country varchar(100));
desc board;

--modify
alter table board
modify(statename varchar(20),
    country varchar(10));
desc board;

--rename
alter table board
rename column statename to district;
desc board;


--show table
select district from board;

--drop a column
alter table board
drop column country;
desc board;

--update
update board
set pass='dhaka' where board_name='Agrabad SD';
select * from board;

--delete a whole row
delete from board where ADDRESS like '%India%';
select * from board;

-------------------------------------------------------------------------------------------
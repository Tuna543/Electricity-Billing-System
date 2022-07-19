-- loop+curse to show all board informations
SET SERVEROUTPUT ON
DECLARE
   cursor cur_row is select BOARD_NAME,ADDRESS,MAIL,CONTACT from BOARD;
   details cur_row%rowtype;

BEGIN
open cur_row;
   loop
      fetch cur_row into details;
      exit when cur_row%notfound;
      DBMS_OUTPUT.PUT_LINE('Board C_NAME: ' ||details.BOARD_NAME||'    Address: '||details.ADDRESS || '    Mail Address: ' ||details.MAIL||'   Contact Info '||details.CONTACT);
   end loop;
close cur_row;
end;
/

--while loop to show customers information
set serveroutput on
declare
cid CUSTOMERS.CUST_ID%type;
cname CUSTOMERS.C_NAME%type;
cmail CUSTOMERS.EMAIL%type;

begin
   cid:=1;
   while cid<=10
   loop
      select C_NAME,EMAIL into cname,cmail
      from CUSTOMERS
      where CUST_ID=cid;
      dbms_output.put_line('CUSTOMERS id: '||cid||'   CUSTOMER NAME is '||cname||'   EMAIL is '||cmail);
      cid:=cid+1;
   end loop;
end;
/

--for loop to show complaints
set serveroutput on
declare
comid COMPLAINT.COM_ID%type;
ccom COMPLAINT.COM%type;

begin
   for comid in 1..12
   loop
      select COM into ccom
      from COMPLAINT
      where COM_ID=comid;
      dbms_output.put_line('COMPLAINT id IS: '||comid||' AND THE COMPLAINT is '||ccom);
   end loop;
end;
/


--add a value using procedure
set serveroutput on
create or replace procedure add_CUSTOMERS(
id CUSTOMERS.CUST_ID%type,
cname CUSTOMERS.C_NAME%type,
mail CUSTOMERS.EMAIL%type,
pass CUSTOMERS.PASS%type,
addr CUSTOMERS.ADDRESS%type)
is
begin
insert into CUSTOMERS(CUST_ID,C_NAME,EMAIL,PASS,ADDRESS) values(id,cname,mail,pass,addr);
end add_CUSTOMERS;
/
show errors
set serveroutput on
declare
id CUSTOMERS.CUST_ID%type;
cname CUSTOMERS.C_NAME%type;
mail CUSTOMERS.EMAIL%type;
pass CUSTOMERS.PASS%type;
addr CUSTOMERS.ADDRESS%type;
begin
dbms_output.put_line('Enter values for adding CUSTOMERS');
id:=&id;
cname:=&cname;
mail:=&mail;
pass:=&pass;
addr:=&addr;
add_CUSTOMERS(id,cname,mail,pass,addr);
end;
/
select * from CUSTOMERS
order by CUST_ID;


-- show total bill amount using function

CREATE OR REPLACE FUNCTION total_bill RETURN NUMBER IS
 total_amount BILL.AMOUNT%type;
BEGIN
 SELECT SUM(AMOUNT) INTO total_amount
 FROM BILL;
 RETURN total_amount;
END;
/

set serveroutput on
begin
dbms_output.put_line('Total bill amount is '||total_bill);
end;
/


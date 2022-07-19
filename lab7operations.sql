--welcome message of electricity board
set serveroutput on
begin
dbms_output.put_line('Welcome to Electricity Board. Thanks for choosing us.');
end;
/


--find total no of boards
set serveroutput on

declare 
total_board BOARD.BOARD_ID%type;
begin
select count(BOARD_ID) into total_board
from BOARD;
dbms_output.put_line('Total no of boards: '||total_board);
end;
/

--no of processed transactions
set serveroutput on

declare 
total_trans TRANSACTIONS.T_ID%type;
pro_trans TRANSACTIONS.T_ID%type;

begin
select count(distinct(T_ID)) into total_trans
from TRANSACTIONS;
select count(distinct(T_ID)) into pro_trans
from TRANSACTIONS
WHERE PAYABLE='PROCESSED';
if(pro_trans=total_trans) then
dbms_output.put_line('ALL TRANSACTIONS HAS BEEN PROCESSED. ');
else
dbms_output.put_line('SOME TRANSACTIONS HAVE NOT BEEN PROCESSED!');
end if;
end;
/

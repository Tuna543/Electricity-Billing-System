-- trigger use, checking invalid bill amount
CREATE OR REPLACE TRIGGER bill_checking BEFORE INSERT OR UPDATE ON 
BILL
FOR EACH ROW
DECLARE
 c_min constant number(2,1) := 1.0;
 c_max constant number(9,2) := 9000000.0;
BEGIN
 IF :new.AMOUNT > c_max OR :new.AMOUNT < c_min THEN
 RAISE_APPLICATION_ERROR(-20000,'New bill amount is too small or large');
END IF;
END bill_checking;
/
-- checking trigger 
INSERT INTO BILL (BILL_ID, AMOUNT, STAT, CUST_ID) VALUES (111, 0, 'PAID', 1);
drop TRIGGER bill_checking;


--rollback
commit;
INSERT INTO COMPLAINT (COM_ID,CUST_ID,BOARD_ID,COM,STAT) VALUES (13, 1, 1, 'BILL Not Correct', 'NOT PROCESSED');
select * from COMPLAINT;
delete from COMPLAINT;
rollback;
select * from COMPLAINT;

--savepoint
savepoint first;
delete from COMPLAINT where STAT like '%PROCESSED';
savepoint second;
select * from COMPLAINT;
rollback to first;
select * from COMPLAINT;

--system time,date
select sysdate,current_date,systimestamp from dual;
SET SERVEROUTPUT ON
DECLARE
 bill_amount BILL.AMOUNT%type;
 customer_name VARCHAR(20);
 totalwithfine BILL.AMOUNT%type;
 bill_status VARCHAR(20);
BEGIN
 bill_status :='NOT PAID';
 SELECT AMOUNT INTO bill_amount
 FROM BILL
 WHERE STAT like bill_status;
 IF bill_amount <= 4000 THEN
    totalwithfine := bill_amount;
 ELSIF bill_amount > 4000 and bill_amount <= 5000 THEN 
    totalwithfine := bill_amount +(bill_amount*0.25);
 ELSIF bill_amount >5000 and bill_amount <6000 THEN
    totalwithfine := bill_amount + (bill_amount*0.4);
 ELSE
    totalwithfine := bill_amount + (bill_amount*0.5); 
 END IF;
DBMS_OUTPUT.PUT_LINE ('Actual Bill Amount : '||bill_amount||' Bill Amount With Fine: '|| ROUND(totalwithfine,2));
EXCEPTION
 WHEN others THEN
 DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/
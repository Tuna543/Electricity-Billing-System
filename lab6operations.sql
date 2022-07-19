--join operations

--customers who didn't pay bill (using natural join)
SELECT DISTINCT(C.C_NAME)
FROM CUSTOMERS C NATURAL JOIN BILL B
WHERE B.STAT='NOT PAID';

--CUSTOMER WHO DIDN'T PAY BILL BECAUSE THEIR BILL WAS INCORRECT(USING RIGHT OUTER JOIN)
SELECT C.C_NAME
FROM CUSTOMERS C 
WHERE C.CUST_ID IN(
SELECT DISTINCT(CUST_ID)
FROM COMPLAINT CM RIGHT OUTER JOIN BILL B
USING (CUST_ID) WHERE B.STAT='NOT PAID' AND CM.COM LIKE '%BILL%');

SELECT CM.COM,C.C_NAME
FROM CUSTOMERS C CROSS JOIN COMPLAINT CM;

-- CROSS JOIN
select * from CUSTOMERS cross join BILL;

--left outer join
select CUST_ID,C.C_NAME,B.AMOUNT from CUSTOMERS C left outer join BILL B
using(CUST_ID);

--FULL outer join
select CUST_ID,C.C_NAME,B.AMOUNT from CUSTOMERS C full outer join BILL B
using(CUST_ID);

--Self Join
--(max category no.)
select B.AMOUNT from BILL B MINUS
select B.AMOUNT from BILL B join BILL C on B.AMOUNT<C.AMOUNT;
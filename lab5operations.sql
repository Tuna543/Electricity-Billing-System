--lab 5 operations
--subquery search
SELECT CUST_ID, C_NAME 
FROM CUSTOMERS
WHERE CUST_ID IN ( SELECT CUST_ID 
FROM BILL 
WHERE STAT= 'PAID');


SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--UNION ALL OPERATION
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION ALL
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--UNION
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--INTERSECT
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
INTERSECT
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--MINUS
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Ghaziabad'
MINUS
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED');

--precedence of set operators
--without parentheses
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED')
INTERSECT
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Dhaka';

--with parentheses
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Rangamati'
UNION
(
SELECT C.CUST_ID, C.C_NAME
FROM CUSTOMERS C
WHERE C.CUST_ID IN (SELECT B.CUST_ID
FROM BILL B, TRANSACTIONS T
WHERE B.BILL_ID = T.BILL_ID
AND T.PAYABLE = 'PROCESSED')
INTERSECT
SELECT CUST_ID, C_NAME
FROM CUSTOMERS
WHERE ADDRESS = 'Kishoreganj'
);
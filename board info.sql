DROP TABLE BOARD;

CREATE TABLE BOARD(
  BOARD_ID INTEGER PRIMARY KEY,
  BOARD_NAME VARCHAR(40) NOT NULL,
  ADDRESS VARCHAR(100),
  MAIL VARCHAR(100),
  CONTACT VARCHAR(100),
  PASS VARCHAR(20) NOT NULL  
);

INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(1,'Agrabad S&D','Agrabad Industrial Area, ChittagonG','xenagra.ctg@bpdb.gov.bd','01755583007','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(2,'Ashugonj S&D','Ashugonj','xenbpdb.ashugonj@gmail.com','01841121245','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(3,'Bajitput S&D','Bajitpur, Kishoreganj','rebajitpur@bpdb.gov.bd','01755581377','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(4,'Bakalia S&D','Syed Shah Road, Chittagong','xenbak.ctg@bpdb.gov.bd','01755583005','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(5,'Bandarbon Distributin','Division	Bandarbon, Hilltrac District','xenban.ctg@bpdb.gov.bd','01755583035','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(6,'Barobkundu S&D','Shetakundu, Chittagong','xenbarob.ctg@bpdb.gov.bd','01755583014','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(7,'Basurhar Electricity Supply','Companiganj, Noakhali','bpdbasurhat@yahoo.com','01841121252','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(8,'Betbuniya Electricity Supply','Betbuniya, Kawkhaly, Rangamati','rebetbunia@yahoo.com','01755583027	SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(9,'Bhairab S&D','Bhairab, Kishoreganj','xen_bpdb.bhairb@yahoo.com','01755581383','SUL');
INSERT INTO BOARD(BOARD_ID, BOARD_NAME, ADDRESS, MAIL, CONTACT, PASS) VALUES(10,'Bhuapur S&D','Bhuapur, Tangail','bhuapursnd@gmail.com','01755581389','SUL');
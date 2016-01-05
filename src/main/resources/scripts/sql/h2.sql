CREATE TABLE IF NOT EXISTS CUSTOMER (
CUSTOMER_ID INT(10) auto_increment,
NAME VARCHAR(50),
ADDRESS VARCHAR(100),
TELEPHONE_NO VARCHAR(20),
PRIMARY KEY (CUSTOMER_ID),
UNIQUE (NAME)
);

CREATE TABLE IF NOT EXISTS INVENTORY(
ITEM_CODE VARCHAR(100),
NAME VARCHAR(100),
DESCRIPTION VARCHAR(200),
EACH_PRICE INT,
AMOUNT INT,
PRIMARY KEY (ITEM_CODE)
);

CREATE TABLE IF NOT EXISTS INVOICE(
INVOICE_NO INT (10) auto_increment,
CUSTOMER_ID INT(10),
ITEM_CODE VARCHAR(100),
QUANTITY INT,
PRIMARY KEY (INVOICE_NO),
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (ITEM_CODE) REFERENCES INVENTORY(ITEM_CODE) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE database RetailSalesData;
 USE RetailSalesData;


CREATE TABLE Sales_Data_Transactions ( 
customer_id VARCHAR(255) PRIMARY KEY,
trans_date DATETIME,
tran_amount INT);

CREATE TABLE Sales_Data_Response (
customer_id VARCHAR(255) PRIMARY KEY,
 response INT);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MYSQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by','
LINES terminated by '\n'
IGNORE 1 ROWS;

EXPLAIN SELECT * FROM Sales_Data_Transactions WHERE CUSTOMER_ID = 'CS5295';

CREATE INDEX idx_id ON Sales_Data_Transactions (CUSTOMER_ID);

Explain select * from Sales_Data_Transactions where CUSTOMER_ID='CS5295';
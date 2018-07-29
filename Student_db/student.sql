CREATE TABLE personal_detail 
( 
  id VARCHAR(14) NOT NULL 
, name VARCHAR(20) NOT NULL 
, email VARCHAR(25) NOT NULL 
, password VARCHAR(18) NOT NULL 
, gender VARCHAR(6) NOT NULL 
, phone_no VARCHAR(15) NOT NULL 
, year VARCHAR(6) NOT NULL 
, CONSTRAINT PRIMARY KEY ( id ) ) 
COMMENT = 'Student Details';

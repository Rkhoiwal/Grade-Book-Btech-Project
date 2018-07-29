CREATE TABLE address 
( 
  id VARCHAR(16) NOT NULL 
, city VARCHAR(20) NOT NULL 
, state VARCHAR(20) NOT NULL ) 
COMMENT = 'Address details';

ALTER TABLE address ADD CONSTRAINT address_FK1 FOREIGN KEY ( id )
 REFERENCES personal_detail ( id )
 ON DELETE CASCADE;

DROP TABLE ADDRESS CASCADE CONSTRAINTS;

CREATE TABLE ADDRESS(
		NO                            		NUMBER(10)		 NULL ,
		NAME                          		VARCHAR2(50)		 NULL ,
		PHONE                         		VARCHAR2(50)		 NOT NULL,
		ADDRESS                       		VARCHAR2(50)		 DEFAULT '서울시'		 NULL 
);

DROP SEQUENCE ADDRESS_NO_SEQ;

CREATE SEQUENCE ADDRESS_NO_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



ALTER TABLE ADDRESS ADD CONSTRAINT IDX_ADDRESS_PK PRIMARY KEY (NO);


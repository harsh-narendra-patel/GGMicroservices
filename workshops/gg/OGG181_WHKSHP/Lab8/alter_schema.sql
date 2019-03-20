

ALTER TABLE SOE.CUSTOMERS 
ADD (CUSTOMER_NAME VARCHAR2(40) );

CREATE TABLE "SOE"."LOGON_AUDIT"
   (    "LOGON_ID" NUMBER ,
        "CUSTOMER_ID" NUMBER,
        "LOGON_DATE" DATE,
	   "HOST" VARCHAR2(40),
	   "GG_GROUP" VARCHAR2(40),
	   "OSUSER" VARCHAR2(40),
         "DOMAIN" VARCHAR2(40),
         "BA_IND" VARCHAR2(40),
         "COMMIT" VARCHAR2(40),
	    "POS" VARCHAR2(40),
	    "RBA" VARCHAR2(40),
	    "TABLENAME" VARCHAR2(40),
	    "OPTYPE" VARCHAR2(40)
   ) ;
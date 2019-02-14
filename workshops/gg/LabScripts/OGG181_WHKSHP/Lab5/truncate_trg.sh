#!/bin/bash

function TruncTarget(){
    local TruncTarget=$(echo "set feed off
    set pages 0
		ALTER TABLE "SOE"."ADDRESSES" DISABLE CONSTRAINT ADD_CUST_FK;
		ALTER TABLE "SOE"."ORDER_ITEMS" DISABLE CONSTRAINT ORDER_ITEMS_ORDER_ID_FK;
		ALTER TABLE "SOE"."ORDER_ITEMS" DISABLE CONSTRAINT ORDER_ITEMS_PRODUCT_ID_FK;
		ALTER TABLE "SOE"."ORDERS" DISABLE CONSTRAINT ORDERS_CUSTOMER_ID_FK;
		ALTER TABLE "SOE"."INVENTORIES" DISABLE CONSTRAINT INVENTORIES_WAREHOUSES_FK;
		ALTER TABLE "SOE"."INVENTORIES" DISABLE CONSTRAINT INVENTORIES_PRODUCT_ID_FK;
		TRUNCATE TABLE SOE.CUSTOMERS;
		TRUNCATE TABLE SOE.ADDRESSES;
		TRUNCATE TABLE SOE.CARD_DETAILS;
		TRUNCATE TABLE SOE.WAREHOUSES;
		TRUNCATE TABLE SOE.ORDER_ITEMS;
		TRUNCATE TABLE SOE.ORDERS;
		TRUNCATE TABLE SOE.ORDERENTRY_METADATA;
		TRUNCATE TABLE SOE.INVENTORIES;
		TRUNCATE TABLE SOE.PRODUCT_INFORMATION;
		TRUNCATE TABLE SOE.PRODUCT_DESCRIPTIONS;
		TRUNCATE TABLE SOE.LOGON;
    exit" | sqlplus -s system/Welcome1@//localhost:1521/OGGOOW182.oracle.com
    )
    echo $TruncTarget
}

function _main() {
	v_result=$?
	if [ $v_result -eq 0 ];
	then
		echo "Truncate Target"
		TruncTarget
		echo "Truncate Successful"
	else
             	echo "Failed to run : TruncTarget"
	fi #endif - TruncTarget
}
#endFunction Main
#Program
_main

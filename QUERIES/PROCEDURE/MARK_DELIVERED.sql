CREATE OR REPLACE PROCEDURE MARK_DELIVERED (OID IN INTEGER,AID IN INTEGER) IS
BEGIN
	UPDATE ORDER_LIST SET RECEIVED_DATE = SYSDATE WHERE ORDER_ID = OID AND ADMIN_ID = AID;
EXCEPTION
	WHEN OTHERS THEN
		DBMS_OUTPUT.PUT_LINE('Some unknown error occurred.') ;
END;
/
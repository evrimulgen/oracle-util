FUNCTION IS_NUMBER (P_STRING IN VARCHAR2) RETURN BOOLEAN;

FUNCTION IS_NUMBER (P_STRING IN VARCHAR2)
   RETURN BOOLEAN
IS
   V_NEW_NUM NUMBER;
BEGIN
   V_NEW_NUM := TO_NUMBER(P_STRING);
   RETURN TRUE;
EXCEPTION
WHEN VALUE_ERROR THEN
   RETURN FALSE;
END IS_NUMBER;  
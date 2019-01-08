SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER tri_employee
BEFORE insert or update
ON EMPLOYEE_DETAIL
FOR EACH ROW
DECLARE
rec varchar2(10) ;
BEGIN
SELECT to_char(sysdate ,'Dy') INTO rec FROM dual;
IF rec = 'Thu' OR rec='Wed' THEN
dbms_output.put_line( rec);
raise_application_error (-20343, 'NOT ALLOWED TO ENTER');
END IF ;
END ;
/

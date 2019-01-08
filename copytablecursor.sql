SET SERVEROUTPUT ON
DECLARE
c_id employee_detail.ssn %type ;
c_name employee_detail.Name %type ;
c_salary employee_detail.salary %type ;
c_deptno employee_detail.deptno %typ e;
CURSOR c1
IS SELECT SSN ,NAME,SALARY,DEPTNO
FROM EMPLOYEE_DETAIL;
BEGIN
OPEN c1;
LOOP
FETCH c1 INTO c_id, c_name, c_salary,c_deptno;
EXIT WHEN c1 %notfound ;
INSERT INTO EMPLOYEE_DETAIL_COPY VALUES (c_id,c_name,c_salary,c_deptno);
END LOOP ;
CLOSE c1;
dbms_output.put_line (‘SUCCESSFULLY COPIED TO NEW TABLE');
END ;
/

DECLARE 
  a integer := 10;
  b integer := 20;
  c integer;
  f real;

BEGIN
	c:= a +b ;
	dbms_output.put_line('Value of C is  '  || c);
	f:= 70.0/3.0;
	dbms_output.put_line('Value of f is  '  || f);
END;
/



output:

SQL> @3
Value of C is  30
Value of f is  23.33333333333333333333333333333333333333


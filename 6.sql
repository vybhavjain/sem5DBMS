factorial program::

DECLARE 
	n number;
	fac number:=1;
	i number;

BEGIN
	n:=&n;

	for i in 1..n
	loop

		fac:=fac*i;
	end loop;

	dbms_output.put_line('factorial' ||fac);
END;
/



SQL> @6
Enter value for n: 12
old   7: 	n:=&n;
new   7: 	n:=12;
factorial479001600

PL/SQL procedure successfully completed.

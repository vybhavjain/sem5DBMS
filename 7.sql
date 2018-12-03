prime or not code::

DECLARE
 n number;
 i number;
 flag number;

BEGIN

 i:=2;
 flag:=1;
 n:=&n;
 
 for i in 2..n/2 loop
 	if mod(n,i)=0 then
		flag:=0;
		exit;
	end if;
 end loop; 

 if flag=1 then
  dbms_output.put_line(' is a prime number');
 else
  dbms_output.put_line(' is not a prime number');
 end if;
end;
/


SQL> @7
Enter value for n: 11
old  10:  n:=&n;
new  10:  n:=11;
is a prime number

PL/SQL procedure successfully completed.

SQL> @7
Enter value for n: 24
old  10:  n:=&n;
new  10:  n:=24;
is not a prime number

PL/SQL procedure successfully completed.


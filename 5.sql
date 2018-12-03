  << character_large object : clob>> 
  
  DECLARE 
name varchar2(20);
company varchar2(30);
introduction clob;  
choice char(1);

BEGIN
	name := 'John Smith';
	company := 'infotech';
	introduction := 'Hello , i am john smith from infotech';
	choice := 'y';
	IF choice = 'y' THEN
			dbms_output.put_line(name || company || introduction);
	END IF;
END;
/


output:

SQL> @5
John SmithinfotechHello , i am john smith from infotech

PL/SQL procedure successfully completed.


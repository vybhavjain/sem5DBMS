create gedit file with below syntax

BEGIN
dbms_output.put_line('hello world');
END;
/


login into sql using sp

first tijme call : 

SQL> set serveroutput on


then type @filename.sql


output :

SQL> @first
hello world

set serveroutput on
Declare
    t number(10);
    fact1 number(10);
    
PROCEDURE name(n in number,fact out number) is
i number;
Begin

    fact:=1;
    for i in 1..n loop
     fact:=fact*i;
    end loop;
end;

begin
t:=4;
name(t,fact1);
dbms_output.put_line('factorial is ' || fact1);
end;
/

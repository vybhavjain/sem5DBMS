Palindrome or not


Declare

    n number(10);
    i number(10);
    sum1 number(10); 
    k number(10);

Begin

    sum1:=0;
    n:=&n;
    k:=n;
    while (n>0) loop
     i:=mod(n,10);
     sum1:=(sum1*10)+i;
     n:=trunc(n/10);
    end loop;

    if(k=sum1) then
     dbms_output.put_line('Given Number is a Palindrome Number');
    else
     dbms_output.put_line('Given Number is not a Palindrome Number');
    end if;
end;
/

SQL> @8
Enter value for n: 12
old  11:     n:=&n;
new  11:     n:=12;
Given Number is not a Palindrome Number

PL/SQL procedure successfully completed.

SQL> @8
Enter value for n: 1313131
old  11:     n:=&n;
new  11:     n:=1313131;
Given Number is a Palindrome Number

PL/SQL procedure successfully completed.

SQL> 

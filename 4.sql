DECLARE 
  i number(1);
  j number(1);
BEGIN
	<< outer_loop>>
	FOR i IN 1..3 LOOP
		FOR j IN 1..3 LOOP
			dbms_output.put_line('Value of i is  '  || i || 'and j is : ' || j);
		END LOOP ;
	END LOOP ;
END;
/



SQL> @4
Value of i is  1and j is : 1
Value of i is  1and j is : 2
Value of i is  1and j is : 3
Value of i is  2and j is : 1
Value of i is  2and j is : 2
Value of i is  2and j is : 3
Value of i is  3and j is : 1
Value of i is  3and j is : 2
Value of i is  3and j is : 3

PL/SQL procedure successfully completed.

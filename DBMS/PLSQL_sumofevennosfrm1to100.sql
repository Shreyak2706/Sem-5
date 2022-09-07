DECLARE
	counter number := 1;
	sum1 number := 0;
BEGIN
	FOR counter IN 1..100 LOOP
	sum1 := sum1 + 2*counter;
	END LOOP;
dbms_output.put_line('sum is : ' ||sum1);
END;
/



SQL> edit loops.sql

SQL> @loops
sum is : 10100

PL/SQL procedure successfully completed.

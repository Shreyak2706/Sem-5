DECLARE
	num1 number:=1;
	sum2 number:=0;
BEGIN
	WHILE num1<=50 LOOP
			sum2 := sum2 + num1;
			num1 := num1 + 1;
	END LOOP;
dbms_output.put_line('sum is:= '||sum2);
END;
/

 edit loops.sql

SQL> @loops
sum is:= 1275

PL/SQL procedure successfully completed.

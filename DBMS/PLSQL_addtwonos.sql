DECLARE
	a integer := 20;
	b integer := 30;
	c integer;
	f real;
BEGIN
	c:=a+b;
	dbms_output.put_line('Value of c is:' ||c);
	f:=90.0/40.0;
	dbms_output.put_line('Value of f is:' ||f);
END;
/



SQL> @test
Value of c is:50
Value of f is:2.25

PL/SQL procedure successfully completed.

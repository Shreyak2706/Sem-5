DECLARE
	x number(3):=100;
BEGIN
	IF(x<70) THEN
	dbms_output.put_line('x is less than 70');
	ELSE
	dbms_output.put_line('x is greater than 70');
	END IF;
END;
/


SQL> @test
x is greater than 70

PL/SQL procedure successfully completed.


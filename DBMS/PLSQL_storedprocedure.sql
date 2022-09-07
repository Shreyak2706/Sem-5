//stored procedure
DECLARE
 	a number;
	b number;
	c number;
PROCEDURE FindMin(x IN number, y IN number, z OUT number)
IS
BEGIN
	IF(x<y)THEN
		z:=x;
	ELSE
		z:=y;
	END IF;
END FindMin;
BEGIN
	a:=25;
	b:=45;
	FindMin (a, b, c);
	dbms_output.put_line('Minimum value is: ' ||c);
END;
/
	
  

Minimum value is: 25

PL/SQL procedure successfully completed.
  

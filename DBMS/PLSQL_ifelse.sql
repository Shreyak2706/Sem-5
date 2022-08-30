DECLARE
	per number(3):=76;
BEGIN
	IF (per>=75) THEN
	dbms_output.put_line('Distinction');
	ELSIF (per>=60) THEN
	dbms_output.put_line('First Class');
	ELSIF (per>=50) THEN
	dbms_output.put_line('Second Class');
	ELSIF (per>=40) THEN
	dbms_output.put_line('Pass');
	ELSE
	dbms_output.put_line('Fail');
	END IF;
END;
/
	
  
  set serveroutput on
SQL> edit loop.sql

SQL> @loop
Distinction

PL/SQL procedure successfully completed.

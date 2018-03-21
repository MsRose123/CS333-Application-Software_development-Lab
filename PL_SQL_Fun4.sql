
DECLARE
	s varchar2(50);
        e varchar2(10);
FUNCTION ename ( e IN varchar)  
RETURN varchar2
IS 
 name varchar2(50); 
BEGIN 
   SELECT empname into name FROM employee where empid = ( SELECT manager from employee where empid=e); 
   RETURN name; 
END; 
BEGIN
 e:='&e';
 s := ename(e);
 dbms_output.put_line('name is: ' || s); 
END;
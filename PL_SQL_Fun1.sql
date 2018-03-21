
CREATE OR REPLACE FUNCTION totalEmployee
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM EMPLOYEE; 
    
   RETURN total; 
END; 



 
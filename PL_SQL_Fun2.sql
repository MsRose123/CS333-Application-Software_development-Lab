

DECLARE 
   c number(2); 
BEGIN 
   c := totalEmployee(); 
   dbms_output.put_line('Total no. of Employee: ' ||c); 
END; 



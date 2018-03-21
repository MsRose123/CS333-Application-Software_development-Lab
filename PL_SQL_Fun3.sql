DECLARE
	s varchar2(20);
	s_read varchar2(20);

	PROCEDURE increment(s IN varchar2)
	IS
		BEGIN
			update EMPLOYEE set COMMISSION=1.05*COMMISSION where EMPNAME=s;
		END;
	BEGIN
 		s_read:='&Name';
		increment(s_read);
	END;
    
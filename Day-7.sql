12. Implementation of various control structures using PL/SQL *

a. Write a PL/SQL code block to calculate the area of a circle for a value of radius varying from 5 to 15.Store the radius and the corresponding values of calculated area in an empty table named areas, consisting of two columns radius & area.





 CREATE TABLE AREAS

 (R NUMBER(10),AREA NUMBER(14,2));

 

DECLARE

 R NUMBER;

 AREA NUMBER(14,2);

 PI CONSTANT NUMBER(14,2):=3.14;

BEGIN

 R :=5;

 WHILE R<=15

 LOOP

  AREA:=PI*POWER(R,2);

  INSERT INTO AREAS

  VALUES (R,AREA);

  R:=R+1;

 END LOOP;

 END;



SELECT *

FROM AREAS;

 



b. Write a PL/SQL code block that will accept an account number from the user, check if the users balance is less than minimum balance, only then deduct Rs.100/ -from the balance. This process is fired on the acct table.





 CREATE TABLE ACCT

 (ACCNO VARCHAR2(20),BALANCE NUMBER(14,3));

 

 INSERT INTO ACCT

 VALUES('ABC100',1000);

 

 INSERT INTO ACCT

 VALUES('ABC101',5400);



 INSERT INTO ACCT

 VALUES('ABC102',510);



 INSERT INTO ACCT

 VALUES('ABC103',41);



DECLARE

 ACCNOO VARCHAR2(20);

 MINBAL NUMBER(14,3);

 UBAL NUMBER(14,3);

BEGIN

 MINBAL:=1000;

 DBMS_OUTPUT.PUT_LINE('ENTER THE ACCOUNT NUMBER :');

 ACCNOO:=&ACCNO;

 SELECT BALANCE INTO UBAL

 FROM ACCT

 WHERE ACCNO=ACCNOO;

 IF UBAL>=MINBAL

 THEN

  DBMS_OUTPUT.PUT_LINE('BALANCE OK');

 ELSE

  UBAL:=UBAL-100;

  UPDATE ACCT

  SET BALANCE=UBAL

  WHERE ACCNO=ACCNOO;

 END IF;

END;

/





SQL> DECLARE

  2   ACCNOO VARCHAR2(20);

  3   MINBAL NUMBER(14,3);

  4   UBAL NUMBER(14,3);

  5  BEGIN

  6   MINBAL:=1000;

  7   DBMS_OUTPUT.PUT_LINE('ENTER THE ACCOUNT NUMBER :');

  8   ACCNOO:=&ACCNO;

  9   SELECT BALANCE INTO UBAL

 10   FROM ACCT

 11   WHERE ACCNO=ACCNOO;

 12   IF UBAL>=MINBAL

 13   THEN

 14    DBMS_OUTPUT.PUT_LINE('BALANCE OK');

 15   ELSE

 16    UBAL:=UBAL-100;

 17    UPDATE ACCT

 18    SET BALANCE=UBAL

 19    WHERE ACCNO=ACCNOO;

 20   END IF;

 21  END;

 22  /

Enter value for accno: 'ABC104'

old   8:  ACCNOO:=&ACCNO;

new   8:  ACCNOO:='ABC104';



PL/SQL procedure successfully completed.



SQL> SELECT *

  2  FROM ACCT;



ACCNO                   BALANCE

-------------------- ----------

ABC100                     1000

ABC101                     5400

ABC102                      510

ABC103                      -59

ABC104                      500







DAY 8

-----



13. Creation of Procedures and Functions

 

(a) Create a procedure which increases the Commission of the given employee of the Employee table by 5%.





DECLARE



EMPLID EMPLOYEEE.EMPID%TYPE;

A EMPLOYEEE.COMMISSION%TYPE;

B EMPLOYEEE.COMMISSION%TYPE;



PROCEDURE INCCOMMISSION(X IN NUMBER,Y OUT NUMBER)

IS

BEGIN



Y:=X+X*5/100;



END;



BEGIN

 

DBMS_OUTPUT.PUT_LINE('ENTER EMPLOYEE ID :');

EMPLID:=&EMPID;



SELECT COMMISSION INTO A

FROM EMPLOYEEE

WHERE EMPID=EMPLID;



INCCOMMISSION(A,B);



UPDATE EMPLOYEEE

SET COMMISSION=B

WHERE EMPID=EMPLID;



DBMS_OUTPUT.PUT_LINE('UPDATED COMMISSION OF EMPLOYEE WITH EMPID '||EMPLID||' AND COMMISSION IS : '||B );



END;

/





Enter value for empid: 4

old  18: EMPLID:=&EMPID;

new  18: EMPLID:=4;

ENTER EMPLOYEE ID :

UPDATED COMMISSION OF EMPLOYEE WITH EMPID 4 AND COMMISSION IS : 26803



PL/SQL procedure successfully completed.



SQL> SELECT * FROM EMPLOYEEE;



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO HIREDATE      SALARY COMMISSION

---------- -------------------- -------------------- ---------- ---------- --------- ---------- ----

         1 Abey                 Tester                        4          4 15-DEC-12        500      30000

         2 Jesto                Analyst                       1          2 24-APR-11        650      25000

         3 Adarsh               Senior Clerk                  4          4 10-JAN-13        500      15000

         4 Kevin                Admin                         5          2 10-OCT-13       1750      26803

         5 Bony                 Manager                       1          1 11-APR-11       1000      50000

         6 Manu                 Supplier                      1          3 19-JUN-13        450       5000



6 rows selected.



(b) Create a function which returns the manager name of an employee, given the EmpId.





DECLARE



EMPLID EMPLOYEEE.EMPID%TYPE;

MANAGR NUMBER;

NAM EMPLOYEEE.EMPNAME%TYPE;



FUNCTION MANAGERNAME(X IN NUMBER)

RETURN NUMBER

IS

 NAME NUMBER;

BEGIN



SELECT MANAGER INTO NAME

FROM EMPLOYEEE

WHERE EMPID=X;



RETURN NAME;



END;



BEGIN



DBMS_OUTPUT.PUT_LINE('ENTER THE EMPLOYEE ID :');

EMPLID:=&EMPID;

MANAGR:=MANAGERNAME(EMPLID);



SELECT EMPNAME INTO NAM

FROM EMPLOYEEE

WHERE EMPID=MANAGR;



DBMS_OUTPUT.PUT_LINE('MANAGER NAME IS :'||NAM);



END;

/





Enter value for empid: 3

old  24: EMPLID:=&EMPID;

new  24: EMPLID:=3;

ENTER THE EMPLOYEE ID :

MANAGER NAME IS :Kevin



PL/SQL procedure successfully completed.



SQL> SELECT * FROM EMPLOYEEE;



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO HIREDATE      SALARY COMMISSION

---------- -------------------- -------------------- ---------- ---------- --------- ---------- ----

         1 Abey                 Tester                        4          4 15-DEC-12        500      30000

         2 Jesto                Analyst                       1          2 24-APR-11        650      25000

         3 Adarsh               Senior Clerk                  4          4 10-JAN-13        500      15000

         4 Kevin                Admin                         5          2 10-OCT-13       1750      26803

         5 Bony                 Manager                       1          1 11-APR-11       1000      50000

         6 Manu                 Supplier                      1          3 19-JUN-13        450       5000



6 rows selected.



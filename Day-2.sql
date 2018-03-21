CREATE TABLE DEPT

(

DeptNo	Number(5) Primary key,

DeptName Varchar2(20),	

Location Varchar2(20));	



create table CLIENT

(

Cno	Varchar2(6),

Name	Varchar2(20),

Address	Varchar2(30),

City	Varchar2(15),

PinCode	Number(8),

State	Varchar2(15),

Baldue	Number(10,2));



INSERT INTO EMPLOYEEE

VALUES (1,'Abey','Tester',04,4,'15-dec-12',500,30000);



INSERT INTO EMPLOYEEE

VALUES (2,'Jesto','Analyst',01,2,'24-april-11',650,25000);



INSERT INTO EMPLOYEEE

VALUES (3,'Adarsh','Clerk',04,4,'10-jan-13',500,15000);



INSERT INTO EMPLOYEEE

VALUES (4,'Kevin','Admin',05,2,'10-oct-13',1750,20000);



INSERT INTO EMPLOYEEE

VALUES (5,'Bony','Manager',01,1,'11-april-11',1000,50000);



INSERT INTO EMPLOYEEE

VALUES (6,'Manu','Supplier',01,3,'19-june-13',450,5000);

 

INSERT INTO EMPLOYEEE(EmpId,EmpName,Job,DeptNo,HireDate,Salary,commission)

VALUES (5,'Bone','Manage',01,'11-april-11',200,6000);







INSERT INTO DEPT

VALUES (

001,'DeptA','A block');

INSERT INTO DEPT

VALUES (

002,'DeptB','B block');

INSERT INTO DEPT

VALUES (

003,'DeptC','C block');

INSERT INTO DEPT

VALUES (

004,'DeptD','D block');



INSERT INTO CLIENT

VALUES ('C01','Nimmy','Cochin',680324,'Kerala',14000);

INSERT INTO CLIENT

VALUES ('C02','Susan','Cochin',680324,'Kerala',	0);

INSERT INTO CLIENT

VALUES ('C03','Anjana','Salem',680345,'TamilNadu',5000);

INSERT INTO CLIENT

VALUES ('C04','Sneha','Pune',680223,'Maharashtra',500);

INSERT INTO CLIENT

VALUES ('C05','Annet','Gandipuram',680321,'Karnataka',7600);

INSERT INTO CLIENT

VALUES ('C06','Ann','Bombay',682111,'Maharashtra',2055);



E.e.	Display the entire contents of the tables ?


selecte * from EMPLOYEEE;


selecte * from DEPT;


selecte * from CLIENT;



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

        11





         1 Abey                 Tester                        4          4

15-DEC-12        500      30000



         2 Jesto                Analyst                       1          2

24-APR-11        650      25000





     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

         3 Adarsh               Clerk                         4          4

10-JAN-13        500      15000



         4 Kevin                Admin                         5          2

10-OCT-13       1750      20000



         5 Bony                 Manager                       1          1

11-APR-11       1000      50000





     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

         6 Manu                 Supplier                      1          3

19-JUN-13        450       5000



         7 Bone                 Manage                                   1

11-APR-11        200       6000



8 rows selected.



G. Display the first 4 rows of the Client table ?



SQL> SELECT *

  2  FROM CLIENT

  3  WHERE ROWNUM<=4;



CNO    NAME                 ADDRESS                        CITY

------ -------------------- ------------------------------ ---------------

   PINCODE STATE               BALDUE

---------- --------------- ----------

C01    Nimmy                ABC                            Cochin

    680324 Kerala               14000



C02    Susan                ABCD                           Cochin

    680324 Kerala                   0



C03    Anjana               AB                             Salem

    680345 TamilNadu             5000





CNO    NAME                 ADDRESS                        CITY

------ -------------------- ------------------------------ ---------------

   PINCODE STATE               BALDUE

---------- --------------- ----------

C04    Sneha                A                              Pune

    680223 Maharashtra            500



H. Retrieve the names, Hire date and Salary of all employees ?



SQL> SELECT EMPNAME,HIREDATE,SALARY

  2  FROM EMPLOYEEE;



EMPNAME              HIREDATE      SALARY

-------------------- --------- ----------



Abey                 15-DEC-12        500

Jesto                24-APR-11        650

Adarsh               10-JAN-13        500

Kevin                10-OCT-13       1750

Bony                 11-APR-11       1000

Manu                 19-JUN-13        450

Bone                 11-APR-11        200



8 rows selected.



I. List all employees whose name starts with ëAí or ëKí ?



SQL> SELECT *

  2  FROM EMPLOYEEE

  3  WHERE EMPNAME LIKE 'A%' OR EMPNAME LIKE 'K%';



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

         1 Abey                 Tester                        4          4

15-DEC-12        500      30000



         3 Adarsh               Clerk                         4          4

10-JAN-13        500      15000



         4 Kevin                Admin                         5          2

10-OCT-13       1750      20000



J. Display the distinct cities to which the clients belong ?



SQL> SELECT DISTINCT CITY

  2  FROM CLIENT;



CITY

---------------

Bombay

Cochin

Salem

Gandipuram

Pune



SQL> COMMIT;



Commit complete.



K.List managers hired after 2012 and whose salary is more than 17500 ?



SQL> SELECT *

  2  FROM EMPLOYEEE

  3  WHERE HIREDATE > '1-JAN-2013' AND SALARY > 17500;



no rows selected







SQL> SELECT *

  2  FROM EMPLOYEEE

  3  WHERE HIREDATE > '1-JAN-2013' AND SALARY >500;



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

         4 Kevin                Admin                         5          2

10-OCT-13       1750      20000



L. List all employees whose name falls in the alphabetical range ëE to Lí ?



SQL> SELECT *

  2  FROM EMPLOYEEE

  3  WHERE EMPNAME BETWEEN 'E' AND 'L';



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

         2 Jesto                Analyst                       1          2

24-APR-11        650      25000



         4 Kevin                Admin                         5          2

10-OCT-13       1750      20000



M. Change the city of Client No: C03 from ëSalemí to ëDelhií ?



SQL> UPDATE CLIENT

  2  SET CITY='DELHI'

  3  WHERE CNO='C03';



1 row updated.

 

N.Change the Commission of employee ëManuí to 600 ?



SQL> UPDATE EMPLOYEEE

  2  SET COMMISSION = 600

  3  WHERE EMPNAME='SUSAN';



0 rows updated.



O. List all from employee table and display in the following format: ìAnnet from Gandhipuram has 0 Balance dueî ?

 

SQL> SELECT NAME|| ' FROM '||CITY||' HAS '||BALDUE||' BALANCE DUE '

  2  FROM CLIENT;



NAME                 'FROM' CITY            'HAS'     BALDUE 'BALANCEDUE'

-------------------- ------ --------------- ----- ---------- -------------

Nimmy                 FROM  Cochin           HAS       14000  BALANCE DUE

Susan                 FROM  Cochin           HAS           0  BALANCE DUE

Anjana                FROM  DELHI            HAS        5000  BALANCE DUE

Sneha                 FROM  Pune             HAS         500  BALANCE DUE

Annet                 FROM  Gandipuram       HAS        7600  BALANCE DUE

Ann                   FROM  Bombay           HAS        2055  BALANCE DUE



6 rows selected.



P.Display the column name ëBaldueí of Client table as ìDue Balanceî?



SQL> SELECT BALDUE AS "DUE BALANCE"

  2  FROM CLIENT;



DUE BALANCE

-----------

      14000

          0

       5000

        500

       7600

       2055



6 rows selected.



Q.List all clients who are not from ëKeralaí ?



SQL> SELECT *

  2  FROM CLIENT

  3  WHERE NOT STATE = 'Kerala';



CNO    NAME                 ADDRESS                        CITY

------ -------------------- ------------------------------ ---------------

   PINCODE STATE               BALDUE

---------- --------------- ----------

C03    Anjana               AB                             DELHI

    680345 TamilNadu             5000



C04    Sneha                A                              Pune

    680223 Maharashtra            500



C05    Annet                ABCDEF                         Gandipuram

    680321 Karnataka             7600





CNO    NAME                 ADDRESS                        CITY

------ -------------------- ------------------------------ ---------------

   PINCODE STATE               BALDUE

---------- --------------- ----------

C06    Ann                  ABCDE                          Bombay

    682111 Maharashtra           2055







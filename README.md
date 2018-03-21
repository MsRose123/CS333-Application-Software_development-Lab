# CS333-Application-Software_development-Lab



DAY 1

------



1.	Creation of a database using DDL commands and writes DQL queries to retrieve information from the database.

a.	Create a database of your choice and create the following tables in it.

(i).	Table Name: Employee

Column Name	Data Type	Constraint

EmpId	Number(5)	Primary Key

EmpName	Varchar2(20)	

Job	Varchar2(10)	

Manager	Number(5)	

DeptNo	Number(5)	

HireDate	Date	

Sal	Number(7,3)	



(ii).	Table Name: Dept

Column Name	Data Type	Constraint

DeptNo	Number(5)	Primary key

DeptName	Varchar2(20)	

Location	Varchar2(20)	



b.	Add a column Commission to the Employee table. The data type is numeric.

c.	Modify the column width of the Job field of Employee table.

d.	Remove column Location from Dept table. 

e.	Rename the column name Sal to Salary in Employee table.

f.	Delete the table Dept.

g.	Display your name and age using DUAL table.

h.	Display the current system date.

i.	Perform the following operations:15+10-5*2/5

j.	Display all the tables currently available to the user.









SQL> CREATE TABLE EMPLOYEEE

  2  (

  3  EmpId Number(5) Primary Key,

  4  EmpName Varchar2(20), 

  5  Job Varchar2(10), 

  6  Manager Number(5), 

  7  DeptNo Number(5), 

  8  HireDate Date,

  9  Sal Number(7,3) );



Table created.



SQL> CREATE TABLE DEPT

  2  (

  3  DeptNo Number(5) Primary key,

  4  DeptName Varchar2(20), 

  5  Location Varchar2(20)); 



Table created.



SQL> COMMIT

  2  ;



Commit complete.



A.SQL> ALTER TABLE EMPLOYEE

  2  ADD Commission Number(10);



Table altered.





B.SQL> ALTER TABLE EMPLOYEEE

  2  ADD Commission Number(10);



Table altered.



C.SQL> alter table EMPLOYEEE

  2  MODIFY Job varchar2(20);



Table altered.



D.SQL> ALTER TABLE DEPT

  2  DROP COLUMN Location;



Table altered.



E.SQL> alter table EMPLOYEEE

  2  RENAME COLUMN Sal TO Salary;



Table altered.



F.SQL> DROP TABLE DEPT;



Table dropped.



G.SQL> SELECT 'DIVYA ROSE RAJU',20

  2  FROM DUAL;



'DIVYAROSERAJU'         20

--------------- ----------

DIVYA ROSE RAJU         20



H.SQL> SELECT 15+10-5*2/5

  2  FROM DUAL;



15+10-5*2/5

-----------

         23



I.SQL> SELECT SYSDATE

  2  FROM DUAL;



SYSDATE

---------

02-AUG-17



SQL> COMMIT;



Commit complete.

 

J.SQL> SELECT TABLE_NAME FROM USER_TABLES;



TABLE_NAME

------------------------------

EMPLOYEEE

EMPLOYEE



SQL> COMMIT;



Commit complete.



SQL> DROP TABLE EMPLOYEE;



Table dropped.



SQL> SELECT TABLE_NAME FROM USER_TABLES;



TABLE_NAME

------------------------------

EMPLOYEEE



SQL> CREATE TABLE DEPT

  2  (

  3  DeptNo Number(5) Primary key,

  4  DeptName Varchar2(20), 

  5  Location Varchar2(20)); 



Table created.



SQL> create table CLIENT

  2  (

  3  Cno Varchar2(6),

  4  Name Varchar2(20),

  5  Address Varchar2(30),

  6  City Varchar2(15),

  7  PinCode Number(8),

  8  State Varchar2(15),

  9  Baldue Number(10,2));



Table created.













DAY 2

------





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







DAY 3

------



3.Creating relationship between the databases.



(A). Alter the client table to add Primary key constraint on Cno Column.



  ALTER TABLE CLIENT

  ADD PRIMARY KEY (CNO);



(B).Create foreign key constraint on Manager and Dept. No column of Employee table.



   ALTER TABLE EMPLOYEEE

   ADD CONSTRAINT FK_EMP

   FOREIGN KEY (MANAGER) REFERENCES EMPLOYEEE(EMPID);

 

   ALTER TABLE EMPLOYEEE

   ADD CONSTRAINT FK_DEPT

   FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO);



(C).Insert a new employee with DeptNo as D006

   

    INSERT INTO EMPLOYEEE (EmpId,DeptNo)

    VALUES (8,D006);   

 

    INSERT INTO EMPLOYEEE (DeptNo)

    VALUES (D006);





        VALUES (D006)

            *

   ERROR at line 2:

   ORA-00984: column not allowed here







4. Creating a database to set various constraints.



(A). Add a constraint to make the Job column unique.

  

   ALTER TABLE EMPLOYEEE

   ADD UNIQUE (Job);



(B). Add constraint to the Employee table to check if EmpId > 2000



  ALTER TABLE EMPLOYEEE

  ADD CHECK (COMMISSION > 400);





(C). Set Salary value by default as 25000, otherwise as the user enters

    

   ALTER TABLE EMPLOYEEE

   MODIFY Salary DEFAULT 2500;

   

  

(D). Remove the constraint from the column Job



  ALTER TABLE EMPLOYEEE

  DROP UNIQUE(JOB);





(E). Display all the constraints on the Employee table



  SELECT constraint_name, 

       constraint_type,

       search_condition

  FROM USER_CONSTRAINTS

  WHERE table_name = 'EMPLOYEEE';



  

   SELECT *

   FROM USER_CONSTRAINTS

   WHERE table_name = 'EMPLOYEEE';



   



DAY 4

------



5.Practice of SQL TCL commands like Rollback, Commit and Savepoint.



(A). Delete all clients whose Baldue is 0 or below.

    

     SAVEPONT A;

   

     DELETE FROM CLIENT 

     WHERE BALDUE <=0;



1 row deleted.



(B). Write a query to undo the above delete query.





     ROLLBACK TO A;



Rollback complete.



6. Practice of SQL DCL commands for granting and revoking user privileges.



(A). Write a query to grant all privileges of client table to nearby user.

    

     GRANT ALL ON CLIENT TO U1503068;



Grant succeeded.



     



(B). Write a query to grant some privileges of Employee table to nearby user.

    

    

      GRANT SELECT ON CLIENT TO U1503068;



Grant succeeded.





(C). Write a query to revoke all privileges of client table from the user.



      REVOKE ALL ON CLIENT FROM U1503068;



Revoke succeeded.



(D). Write a query to revoke some privileges of employees table from the user.



      REVOKE SELECT ON CLIENT FROM U1503068;



Revoke succeeded.





DAY 5 

------



7. Creation of Views and Assertions(study syntax only).



(A). Create a view CUST_VW of the Employee table with the following columns:

        EmpId

        EmpName

        Job

        Manager



 CREATE VIEW CUST_VW AS

 SELECT EmpId,EmpName,Job,Manager

 FROM EMPLOYEEE;



View created.



SQL> SELECT *

  2  FROM CUST_VW;



     EMPID EMPNAME              JOB                     MANAGER

---------- -------------------- -------------------- ----------

         1 Abey                 Tester                        4

         2 Jesto                Analyst                       1

         3 Adarsh               Clerk                         4

         4 Kevin                Admin                         5

         5 Bony                 Manager                       1

         6 Manu                 Supplier                      1



6 rows selected.



(B). Update CUST_VW by changing the Job=íClerkí to ëSenior Clerkí



     SQL> UPDATE CUST_VW

  2  SET Job='Senior Clerk'

  3  WHERE Job='Clerk';



1 row updated.



SQL> select *

  2  from cust_vw;



     EMPID EMPNAME              JOB                     MANAGER

---------- -------------------- -------------------- ----------

         1 Abey                 Tester                        4

         2 Jesto                Analyst                       1

         3 Adarsh               Senior Clerk                  4

         4 Kevin                Admin                         5

         5 Bony                 Manager                       1

         6 Manu                 Supplier                      1



6 rows selected.



(C). Delete from CUST_VW the Employee-Kevin.

     

     SQL> ALTER TABLE EMPLOYEEE

  2  DROP CONSTRAINT FK_EMP;



Table altered.



     DELETE FROM CUST_VW

     WHERE empName='Kevin';

     

(D). Delete the view created.

 

     SQL> DROP VIEW CUST_VW;



View dropped.



8. Implementation of Built in functions in RDBMS.



(A). Find the value of 16power5



     SQL> SELECT POWER(16,5)

  2  FROM DUAL;



POWER(16,5)

-----------

    1048576



(B). Find the length of the string ìApplicationî.



     SQL> SELECT LENGTH('Application')

  2  FROM DUAL;



LENGTH('APPLICATION')

---------------------

                   11



(C). What is the last date of the current month?



     SQL> SELECT LAST_DAY(SYSDATE)

  2  FROM DUAL;



LAST_DAY(

---------

31-AUG-17



(D). Convert the given number 65432 to $65432. Use format mask.

 

SQL> SELECT TO_CHAR(65432,'$99999')

  2  FROM DUAL;



TO_CHAR

-------

 $65432







(E). Display the current system date and time with fractional seconds with time zone.

   

     SQL> SELECT SYSTIMESTAMP

  2  FROM DUAL;



SYSTIMESTAMP

-------------------------------------------

23-AUG-17 02.38.15.998000 PM +05:30



  

(F). Display the year of the hiring of all the employees from the Employee table.

  

SQL> SELECT TO_CHAR(HIREDATE,'YYYY')HIREDATE

  2  FROM EMPLOYEEE;



HIRE

----

2012

2011

2013

2013

2011

2013



6 rows selected.





(G). Calculate the number of months the employees have been working in the Company.



     SQL>  SELECT TRUNC(MONTHS_BETWEEN(SYSDATE,TO_DATE(HIREDATE))) AS HIREDATE

  2  FROM EMPLOYEEE;



  HIREDATE

----------

        56

        75

        55

        76

        50



6 rows selected.





(H). Find the number of departments available.



     SQL> SELECT COUNT(DISTINCT(DEPTNAME))

  2  FROM DEPT;



COUNT(DISTINCT(DEPTNAME))

-------------------------

                        4



(I). Display the hire date of all employees in the following format:Friday, 11th August, 2017



     SQL>  SELECT TO_CHAR(HIREDATE,'DY,DDth MONTH,YYYY')

  2  FROM EMPLOYEEE;



TO_CHAR(HIREDATE,'DY,DD

-----------------------

SAT,15TH DECEMBER ,2012

SUN,24TH APRIL    ,2011

THU,10TH JANUARY  ,2013

THU,10TH OCTOBER  ,2013

MON,11TH APRIL    ,2011

WED,19TH JUNE     ,2013



6 rows selected.





9. Implementation of various aggregate functions in SQL.



(A). Calculate the total of Baldue from Client table.

  

     SQL> SELECT SUM(BalDue)

  2  FROM CLIENT;



SUM(BALDUE)

-----------

      29155

   

(B). Count the total records in Employee table.



     SQL> SELECT COUNT(*)

  2  FROM EMPLOYEEE;



  COUNT(*)

----------

         5



(C). Find the minimum and maximum Balance due from Client table.



     SQL> SELECT MIN(BalDue),MAX(BalDue)

  2  FROM CLIENT;



MIN(BALDUE) MAX(BALDUE)

----------- -----------

        500       14000



(D). Find the average salary in Employee table.



     SQL> SELECT AVG(Salary)

  2  FROM EMPLOYEEE;



AVG(SALARY)

-----------

 808.333333





DAY 6

-----



10. Implementation of Order By, Group by& Having clause.



(A). Display the client names in ascending order.



   SQL> SELECT NAME

  2  FROM CLIENT

  3  ORDER BY NAME;



NAME

--------------------

Anjana

Ann

Annet

Nimmy

Sneha





(B). Determine the maximum salary in each department.



   SQL> SELECT DEPTNO,MAX(SALARY)

  2  FROM EMPLOYEEE

  3  GROUP BY DEPTNO;



    DEPTNO MAX(SALARY)

---------- -----------

         1        1000

         2        1750

         4         500

         3         450



(C). Display the minimum salary of all departments except D001.



  SELECT DEPTNO,MIN(SALARY)

  FROM EMPLOYEEE

  WHERE DEPTNO !=01

  GROUP BY DEPTNO;



  

   DEPTNO MIN(SALARY)

--------- -----------

        2         650

        4         500

        3         450





11. Implementation of set operators, nested queries and Join queries.



(A). Display all the DeptNo available with the dept and employee tables.



     SQL> SELECT DEPTNO FROM EMPLOYEEE

  2  UNION ALL

  3  SELECT DEPTNO FROM DEPT

  4  ORDER BY DEPTNO;



    DEPTNO

----------

         1

         1

         2

         2

         3

         3

         4

         4

         4



9 rows selected.



(B). Display all the DeptNo available in employee and not in dept tables.



     

SQL> SELECT DEPTNO FROM EMPLOYEEE

  2  WHERE DEPTNO NOT IN (SELECT DEPTNO FROM DEPT);



no rows selected



(C). Write a nested query to select the employees who have got more salary than Adarsh.



     SELECT * FROM EMPLOYEEE

     WHERE SALARY > (SELECT SALARY FROM EMPLOYEEE WHERE EMPNAME='Adarsh');



     

      EMPID EMPNAME              JOB                     MANAGER     DEPTNO HIREDATE      SALARY COMMISSION

------ -------------------- -------------------- ---------- ---------- --------- ---------- ----

     2 Jesto                Analyst                       1          2 24-APR-11        650      25000

     4 Kevin                Admin                         5          2 10-OCT-13       1750      20000

     5 Bony                 Manager                       1          1 11-APR-11       1000      50000







(D). Write a nested query to select the employees who have less salary than any employees working in dept D004.



     SQL> SELECT * FROM EMPLOYEEE

  2  WHERE SALARY < ANY (SELECT SALARY FROM EMPLOYEEE WHERE DEPTNO='D004');



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO

---------- -------------------- -------------------- ---------- ----------

HIREDATE      SALARY COMMISSION

--------- ---------- ----------

         6 Manu                 Supplier                      1          3

19-JUN-13        450       5000

 



(E). Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with A.



     SQL> SELECT EMPNAME,SALARY FROM EMPLOYEEE

  2  WHERE SALARY > (SELECT MIN(SALARY) FROM EMPLOYEEE WHERE JOB LIKE 'A%');



EMPNAME                  SALARY

-------------------- ----------

Bony                       1000





(F). Display the employee details, departments that the departments are same in both the emp and dept.



    SELECT column-names

    FROM table-name1 JOIN table-name2 

    ON column-name1 = column-name2

    WHERE condition



   SELECT *

   FROM EMPLOYEEE

   JOIN DEPT

   ON EMPLOYEEE.DEPTNO=DEPT.DEPTNO;



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO HIREDATE      SALARY COMMISSION     DEPTNO DEPTNAME             LOC

---------- -------------------- -------------------- ---------- ---------- --------- ---------- ----

         5 Bony                 Manager                       1          1 11-APR-11       1000      50000          1 DeptA                A block

         2 Jesto                Analyst                       1          2 24-APR-11        650      25000          2 DeptB                B block

         4 Kevin                Admin                         5          2 10-OCT-13       1750      20000          2 DeptB                B block

         6 Manu                 Supplier                      1          3 19-JUN-13        450       5000          3 DeptC                C block

         1 Abey                 Tester                        4          4 15-DEC-12        500      30000          4 DeptD                D block

         3 Adarsh               Senior Clerk                  4          4 10-JAN-13        500      15000          4 DeptD                D block



6 rows selected. 





(G). Display the employee details, departments that the departments are not same in both the emp and dept.

 

     SELECT column-names

     FROM table-name1 JOIN table-name2 

     ON column-name1 = column-name2

     WHERE condition;

     

    SQL>  SELECT *

  2      FROM EMPLOYEEE

  3      JOIN DEPT

  4      ON EMPLOYEEE.DEPTNO != DEPT.DEPTNO;



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO HIREDATE      SALARY COMMISSION     DEPTNO DEPTNAME             LOC

---------- -------------------- -------------------- ---------- ---------- --------- ---------- ----

         1 Abey                 Tester                        4          4 15-DEC-12        500      30000          1 DeptA                A block

         2 Jesto                Analyst                       1          2 24-APR-11        650      25000          1 DeptA                A block

         3 Adarsh               Senior Clerk                  4          4 10-JAN-13        500      15000          1 DeptA                A block

         4 Kevin                Admin                         5          2 10-OCT-13       1750      20000          1 DeptA                A block

         6 Manu                 Supplier                      1          3 19-JUN-13        450       5000          1 DeptA                A block

         1 Abey                 Tester                        4          4 15-DEC-12        500      30000          2 DeptB                B block

         3 Adarsh               Senior Clerk                  4          4 10-JAN-13        500      15000          2 DeptB                B block

         5 Bony                 Manager                       1          1 11-APR-11       1000      50000          2 DeptB                B block

         6 Manu                 Supplier                      1          3 19-JUN-13        450       5000          2 DeptB                B block

         1 Abey                 Tester                        4          4 15-DEC-12        500      30000          3 DeptC                C block

         2 Jesto                Analyst                       1          2 24-APR-11        650      25000          3 DeptC                C block



     EMPID EMPNAME              JOB                     MANAGER     DEPTNO HIREDATE      SALARY COMMISSION     DEPTNO DEPTNAME             LOC

---------- -------------------- -------------------- ---------- ---------- --------- ---------- ----

         3 Adarsh               Senior Clerk                  4          4 10-JAN-13        500      15000          3 DeptC                C block

         4 Kevin                Admin                         5          2 10-OCT-13       1750      20000          3 DeptC                C block

         5 Bony                 Manager                       1          1 11-APR-11       1000      50000          3 DeptC                C block

         2 Jesto                Analyst                       1          2 24-APR-11        650      25000          4 DeptD                D block

         4 Kevin                Admin                         5          2 10-OCT-13       1750      20000          4 DeptD                D block

         5 Bony                 Manager                       1          1 11-APR-11       1000      50000          4 DeptD                D block

         6 Manu                 Supplier                      1          3 19-JUN-13        450       5000          4 DeptD                D block



18 rows selected.

     

     

(H). Display the Employee name, Job, Manager Name by implementing a left outer join.



     SELECT column_name(s)

     FROM table1

     LEFT JOIN table2 ON table1.column_name = table2.column_name;

 

  SELECT EMPNAME,JOB,MANAGER

  FROM EMPLOYEEE

  LEFT JOIN DEPT ON EMPLOYEEE.DEPTNO=DEPT.DEPTNO;



EMPNAME              JOB                     MANAGER

-------------------- -------------------- ----------

Abey                 Tester                        4

Jesto                Analyst                       1

Adarsh               Senior Clerk                  4

Bony                 Manager                       1

Manu                 Supplier                      1





(I). Display the Employee name, Job, Manager Name by implementing a right outer join.

  



  SELECT column_name(s)

  FROM table1

  RIGHT JOIN table2 ON table1.column_name = table2.column_name;





     SQL> SELECT EMPNAME,JOB,MANAGER

  2    FROM EMPLOYEEE

  3  RIGHT JOIN DEPT ON  EMPLOYEEE.DEPTNO=DEPT.DEPTNO;



EMPNAME              JOB                     MANAGER

-------------------- -------------------- ----------

Abey                 Tester                        4

Jesto                Analyst                       1

Adarsh               Senior Clerk                  4

Bony                 Manager                       1

Manu                 Supplier                      1



(J). Display the Employee name, Job, Manager Name by implementing a full outer join.



    SELECT column_name(s)

    FROM table1

    FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;  

   

   SELECT EMPNAME,JOB,MANAGER

   FROM EMPLOYEEE

   FULL OUTER JOIN DEPT ON  EMPLOYEEE.DEPTNO=DEPT.DEPTNO;



EMPNAME              JOB                     MANAGER

-------------------- -------------------- ----------

Abey                 Tester                        4

Jesto                Analyst                       1

Adarsh               Senior Clerk                  4

Bony                 Manager                       1

Manu                 Supplier                      1





DAY 7 :

------





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







DAY 8

-----



14. Creation of Packages.

(A). Create a package which contains:

  (i). A procedure to hire a new employee.

  (ii). A function to increase the commission of the employee.



CREATE OR REPLACE PACKAGE EMPLOYEE AS 

   -- hire a new employee

   PROCEDURE HIRE_EMPLOYEE(CID IN EMPLOYEEE.EMPID%TYPE,CNAME IN EMPLOYEEE.EMPNAME%TYPE ,CJOB IN EMPLOYEEE.JOB%TYPE ,CMANAGER IN EMPLOYEEE.MANAGER%TYPE ,CDEPTNO IN EMPLOYEEE.DEPTNO%TYPE,CDATE IN EMPLOYEEE.HIREDATE%TYPE,CSALARY IN EMPLOYEEE.SALARY%TYPE,CCOMMISSION IN EMPLOYEEE.COMMISSION%TYPE);

 

   --increment commission of given employee 

   FUNCTION INC_COMMISSION(ID IN EMPLOYEEE.EMPID%TYPE,INC EMPLOYEEE.COMMISSION%TYPE)

   RETURN NUMBER; 

  

END EMPLOYEE; 

/





CREATE OR REPLACE PACKAGE BODY EMPLOYEE AS



 PROCEDURE HIRE_EMPLOYEE(CID IN EMPLOYEEE.EMPID%TYPE,CNAME IN EMPLOYEEE.EMPNAME%TYPE ,CJOB IN EMPLOYEEE.JOB%TYPE ,CMANAGER IN EMPLOYEEE.MANAGER%TYPE ,CDEPTNO IN EMPLOYEEE.DEPTNO%TYPE,CDATE IN EMPLOYEEE.HIREDATE%TYPE,CSALARY IN EMPLOYEEE.SALARY%TYPE,CCOMMISSION IN EMPLOYEEE.COMMISSION%TYPE)

 IS 

 BEGIN

 INSERT INTO EMPLOYEEE

 VALUES (CID,CNAME,CJOB,CMANAGER,CDEPTNO,CDATE,CSALARY,CCOMMISSION);

 END HIRE_EMPLOYEE;



 FUNCTION INC_COMMISSION(ID IN EMPLOYEEE.EMPID%TYPE,INC EMPLOYEEE.COMMISSION%TYPE)

 RETURN NUMBER

 IS

   Z EMPLOYEEE.COMMISSION%TYPE;

 BEGIN

 SELECT COMMISSION INTO Z

 FROM EMPLOYEEE

 WHERE EMPID=ID;

 Z:=Z+INC;

 RETURN Z;

 END INC_COMMISSION;

  



END EMPLOYEE;

/



DECLARE



AID EMPLOYEEE.EMPID%TYPE;

ANAME EMPLOYEEE.EMPNAME%TYPE;

AJOB EMPLOYEEE.JOB%TYPE;

AMANAGER EMPLOYEEE.MANAGER%TYPE;

ADEPTNO EMPLOYEEE.DEPTNO%TYPE;

ADATE EMPLOYEEE.HIREDATE%TYPE;

ASALARY EMPLOYEEE.SALARY%TYPE;

ACOMMISSION EMPLOYEEE.COMMISSION%TYPE;

EMPLID EMPLOYEEE.EMPID%TYPE;

INCR EMPLOYEEE.COMMISSION%TYPE;

NEW EMPLOYEEE.COMMISSION%TYPE;



BEGIN

DBMS_OUTPUT.PUT_LINE('ENTER THE NEW EMPLOYEE DETAILS :');

AID:=&EMPID;

ANAME:=&EMPNAME;

AJOB:=&JOB;

AMANAGER:=&MANAGER;

ADEPTNO:=&DEPTNO;

ADATE:=&HIREDATE;

ASALARY:=&SALARY;

ACOMMISSION:=&COMMISSION;



EMPLOYEE.HIRE_EMPLOYEE(AID,ANAME,AJOB,AMANAGER,ADEPTNO,ADATE,ASALARY,ACOMMISSION); 



DBMS_OUTPUT.PUT_LINE('ENTER EMPLOYEE ID OF THE CUSTOMER WHOSE SALARY YOU NEED TO INCREMENT :');

EMPLID:=&EMPID;

DBMS_OUTPUT.PUT_LINE('ENTER THE AMOUNT TO BE INCREMENTED :');

INCR:=&INCR;

NEW:=EMPLOYEE.INC_COMMISSION(EMPLID,INCR);

UPDATE EMPLOYEEE

SET COMMISSION=NEW

WHERE EMPID=EMPLID;

END;

/





15. Creation of database Triggers and Cursors.

(A). Given the tables,

 

  MASTER (ACCNO, NAME, OPEN_DATE, BALANCE)

  TRANSACTION (TACCNO, TAMOUNT, TDATE, OPERATION)



CREATE TABLE MASTER

(ACCNO NUMBER,

 NAME VARCHAR2(20),

 OPEN_DATE DATE,

 BALANCE NUMBER);



INSERT INTO MASTER

VALUES (1,'DONZ','1-JAN-2001',5000);



INSERT INTO MASTER

VALUES (2,'DONA','2-MAR-2002',7000);



INSERT INTO MASTER

VALUES (3,'DELLA','16-OCT-2017',900);

INSERT INTO MASTER

VALUES (4,'DENO','1-NOV-2014',900);





CREATE TABLE TRANSACTION

(TACCNO NUMBER,

 TAMOUNT NUMBER,

 TDATE DATE,

 OPERATION VARCHAR2(20));



INSERT INTO TRANSACTION

VALUES (1,1000,'23-jan-2016','withdraw');

INSERT INTO TRANSACTION

VALUES (2,2000,'2-jan-2017','deposit');

INSERT INTO TRANSACTION

VALUES (1,3000,'30-may-2016','withdraw');

INSERT INTO TRANSACTION

VALUES (4,2500,'20-jan-2017','deposit');

OR

create table master(accno number, name varchar2(20), open_date date, balance number(10,3));
create table transaction(taccno number, tamount number(10, 3), tdate date, operation varchar2(20));

insert into master values(&accno, '&name', '&date', &balance);
insert into transaction values(&taccno, &tamount, '&tdate', '&operation');



i) Create a trigger to check whether withdrawal or deposit is possible or not. Withdrawal is possible only if the minimum balance after withdrawal is greater than or equal to 1000. 


SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER withdrawal
AFTER
DELETE OR INSERT OR UPDATE
ON MASTER
FOR EACH ROW
WHEN (NEW.balance<=1000)
BEGIN
	dbms_output.put_line('Insufficient Balance. Withdraw not possible');
END;
/

ii) Record each transaction in TRANSACTION table. Raise a trigger for each entry in the Transaction table.


SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER entry
AFTER
INSERT OR UPDATE
ON transaction
FOR EACH ROW
BEGIN
	dbms_output.put_line('Entry in Transaction table');
END;
/


iii) Update the balance in MASTER table accordingly.

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER entry
AFTER
INSERT OR UPDATE
ON TRANSACTION
FOR EACH ROW
BEGIN
	IF :new.operation = 'Withdraw'
	THEN
		update master set master.balance = master.balance-:new.tamount where accno=:new.taccno;
	ELSE
		update master set master.balance = master.balance+:new.tamount where accno=:new.taccno;
	END IF;
END;
/

select * from master;

insert into transaction values(1, 1000 ,'1-NOV-2017', 'Deposit');

select * from master;






(B).	Create a Cursor which updates the salaries of an Employee as follows.



i).	If salary < 10000 then update the salary to 15000.



ii).	If salary >= 10000 and < 30000 then update the salary to 35000.



iii).	If salary >= 30000 and < 60000 then update the salary to 65000.



iv).	Count the no: of records that have been updated

DECLARE
SAL EMPLOYEEE.SALARY%TYPE;
ROW_N0 NUMBER;
CURSOR SALARY_UPDATE IS
   SELECT SALARY FROM EMPLOYEEE;
BEGIN
 OPEN SALARY_UPDATE;
 LOOP
  FETCH SALARY_UPDATE INTO SAL;
   IF SAL<1000 THEN
     UPDATE EMPLOYEEE
     SET SALARY = 1500;
   ELSIF SAL>=1000 AND SAL<3000
     UPDATE EMPLOYEEE
     SET SALARY = 3500;
   ELSIF SAL>=3000 AND SAL<6000
     UPDATE EMPLOYEEE
     SET SALARY = 6500;
  END LOOP;
  CLOSE SALARY_UPDATE;
  ROW_NO := sql%rowcount; 
END;
/

i).	If salary < 10000 then update the salary to 15000.

DECLARE
	emp_name employeee.empname%type;
	emp_salary employeee.salary%type;
	emp_id employeee.empid%type;

	CURSOR update_sal IS
		select empid, empname, salary from employeee;

BEGIN
	OPEN update_sal;
	LOOP
		FETCH update_sal INTO emp_id, emp_name, emp_salary;
		IF emp_salary < 1000 THEN
			update employeee set salary = 1500 where empid=emp_id;
		ELSIF (emp_salary>=1000) AND (emp_salary<3000) THEN
			update employeee set salary = 3500 where empid=emp_id;
		ELSIF (emp_salary>=3000) AND (emp_salary<6000) THEN
			update employeee set salary = 6500 where empid=emp_id;
		END IF;
	END LOOP;
	CLOSE update_sal;
END;
/

ii).	If salary >= 10000 and < 30000 then update the salary to 35000.

DECLARE
	num_rows number(20);
BEGIN
	update employeee set salary = 15000 where salary<10000;
	
	IF sql%NOTFOUND THEN
		dbms_output.put_line('No employee selected');
	ELSIF sql%FOUND THEN
		dbms_output.put_line(sql%rowcount || ' employees selected');
	
 	END IF;
END;
/

iii).	If salary >= 30000 and < 60000 then update the salary to 65000.



DECLARE
	num_rows number(20);
BEGIN
	update employeee set salary = 35000 where salary>=10000 and salary<30000;
	
	IF sql%NOTFOUND THEN
		dbms_output.put_line('No employee selected');
	ELSIF sql%FOUND THEN
		dbms_output.put_line(sql%rowcount || ' employees selected');
	
 	END IF;
END;
/

iv).	Count the no: of records that have been updated

DECLARE
	num_rows number(5);
BEGIN
	update employeee set salary = 65000 where salary>=30000 and salary<60000;
	
	IF sql%NOTFOUND THEN
		dbms_output.put_line('No employee selected');
	ELSIF sql%FOUND THEN
		dbms_output.put_line(sql%rowcount || ' employees selected');
	
 	END IF;
END;
/



 


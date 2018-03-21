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





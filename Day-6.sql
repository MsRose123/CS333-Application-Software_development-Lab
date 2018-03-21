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



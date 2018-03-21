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



   



# CS333-Application-Software_development-Lab

               Rajagiri School of Engineering and Technology, Kakkanad
                 Department of Computer Science and Engineering

              CS333: Application Software Development Lab–2017
              S5 CSE(KTU)

Day 1
-----

Creation of a database using DDL commands and writes DQL queries to retrieve information from the database.
Create a database of your choice and create the following tables in it.
Table Name: Employee


Table Name: Dept


Add a column Commission to the Employee table. The data type is numeric.
Modify the column width of the Job field of Employee table.
Remove column Location from Dept table. 
Rename the column name Sal to Salary in Employee table.
Delete the table Dept.
Display your name and age using DUAL table.
Display the current system date.
Perform the following operations:15+10-5*2/5
Display all the tables currently available to the user.



Day 2
-----

Performing DML commands like Insertion, Deletion, Modifying, Altering, and Updating records based on conditions.
Insert the following values in Employee table.


Create and insert the following values in Department table.



Create a table as shown below and insert the values:
Table Name: Client

Insert the following values into the Client table


Display the entire contents of the tables.
Insert a new employee with EmpId=E0001.
Display the first 4 rows of the Client table.
Retrieve the names, Hire date and Salary of all employees.
List all employees whose name starts with ‘A’ or ‘K’.
Display the distinct cities to which the clients belong.
List managers hired after 2012 and whose salary is more than 17500.
List all employees whose name falls in the alphabetical range ‘E to L’.
Change the city of Client No: C03 from ‘Salem’ to ‘Delhi’.
Change the Commission of employee ‘Manu’ to 600.
List all from employee table and display in the following format: “Annet from Gandhipuram has 0 Balance due”.
Display the column name ‘Baldue’ of Client table as “Due Balance”
List all clients who are not from ‘Kerala’.



Day 3
-----


Creating relationship between the databases.
Alter the client table to add Primary key constraint on Cno Column.
Create foreign key constraint on Manager & EmpId and Dept. No column of Employee table & Dept No column of Department  table.
Insert a new employee with DeptNo as D006.

Creating a database to set various constraints.
Add a constraint to make the Job column unique.
Add constraint to the Employee table to check if Commission > 400.
Set Salary value by default as 25000, otherwise as the user enters.
Remove the constraint from the column Job.
Display all the constraints on the Employee table.



Day 4
-----


Practice of SQL TCL commands like Rollback, Commit and Savepoint.
Delete all clients whose Baldue is 0 or below.
Write a query to undo the above delete query.

Practice of SQL DCL commands for granting and revoking user privileges.
Write a query to grant all privileges of client table to nearby user.
Write a query to grant some privileges of Employee table to nearby user.
Write a query to revoke all privileges of client table from the user.
Write a query to revoke some privileges of employees table from the user.



Day 5
-----


Creation of Views and Assertions(study syntax only) *
Create a view CUST_VW of the Employee table with the following columns:


Update CUST_VW by changing the Job=’Clerk’ to ‘Senior Clerk’
Delete from CUST_VW the Employee-Kevin.
Delete the view created.

Implementation of Built in functions in RDBMS *
Find the value of 165
Find the length of the string “Application”
What is the last date of the current month?
Convert the given number 65432 to $65432. Use format mask.
Display the current system date and time with fractional seconds with time zone.
Display the year of the hiring of all the employees from the Employee table.
Calculate the number of months the employees have been working in the Company.
Find the number of departments available.
Display the hire date of all employees in the following format:Friday, 11th August, 2017

Implementation of various aggregate functions in SQL *
Calculate the total of Baldue from Client table.
Count the total records in Employee table.
Find the minimum and maximum Balance due from Client table.
Find the average salary in Employee table.



Day 6
-----


Implementation of Order By, Group by& Having clause. *
Display the client names in ascending order.
Determine the maximum salary in each department.
Display the minimum salary of all departments except D001.

Implementation of set operators, nested queries and Join queries *
Display all the DeptNo available with the dept and employee tables.
Display all the DeptNo available in employee and not in dept tables.
Write a nested query to select the employees who have got more salary than Ashok.
Write a nested query to select the employees who have less salary than any employees working in dept D004.
Display all employee names and salary whose salary is greater than minimum salary of the company and job title starts with A.
Display the employee details, departments that the departments are same in both the emp and dept.
Display the employee details, departments that the departments are not same in both the emp and dept.
Display the Employee name, Job, Manager Name by implementing a left outer join.
Display the Employee name, Job, Manager Name by implementing a right outer join.
Display the Employee name, Job, Manager Name by implementing a full outer join.



Day 7
-----


Implementation of various control structures using PL/SQL *
Write a PL/SQL code block to calculate the area of a circle for a value of radius varying from 5 to 15.Store the radius and the corresponding values of calculated area in an empty table named areas, consisting of two columns radius & area.

Write a PL/SQL code block that will accept an account number from the user, check if the users balance is less than minimum balance, only then                            deduct Rs.100/ -from the balance. This process is fired on the acct table.



Day 8
-----


Creation of Procedures and Functions *
Create a procedure which increases the Commission of the given employee of the Employee table by 5%.
Create a function which returns the manager name of an employee, given the EmpId.



Day 9
-----


Creation of Packages *
Create a package which contains:
A procedure to hire a new employee.
A function to increase the commission of the employee.

Creation of database Triggers and Cursors *
Given the tables,
MASTER (ACCNO, NAME, OPEN_DATE, BALANCE)
TRANSACTION (TACCNO, TAMOUNT, TDATE, OPERATION)
Create a trigger to check whether withdrawal or deposit is possible or not. Withdrawal is possible only if the minimum balance after withdrawal is greater than or equal to 1000. 
Record each transaction in TRANSACTION table. Raise a trigger for each entry in the Transaction table.
Update the balance in MASTER table accordingly.

Create a Cursor which updates the salaries of an Employee as follows.
If salary < 10000 then update the salary to 15000.
If salary >= 10000 and < 30000 then update the salary to 35000.
If salary >= 30000 and < 60000 then update the salary to 65000.
Count the no: of records that have been updated



Day 10
------


Mini project (Application Development using Oracle/ MySQL using Databaseconnectivity)* - group assignment.

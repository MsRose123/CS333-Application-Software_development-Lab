ALTER TABLE EMPLOYEE

ADD Commission Number(10);


ALTER TABLE EMPLOYEEE

ADD Commission Number(10);






alter table EMPLOYEEE

MODIFY Job varchar2(20);




ALTER TABLE DEPT

DROP COLUMN Location;



alter table EMPLOYEEE

RENAME COLUMN Sal TO Salary;



DROP TABLE DEPT;



SELECT 'DIVYA ROSE RAJU',20

FROM DUAL;



SELECT 15+10-5*2/5

FROM DUAL;



SELECT SYSDATE

FROM DUAL;



SELECT TABLE_NAME FROM USER_TABLES;



DROP TABLE EMPLOYEE;



SELECT TABLE_NAME FROM USER_TABLES;



CREATE TABLE DEPT

    (

    DeptNo Number(5) Primary key,

    DeptName Varchar2(20), 

    Location Varchar2(20)

    ); 

create table CLIENT

    (

    Cno Varchar2(6),

    Name Varchar2(20),

    Address Varchar2(30),

    City Varchar2(15),

    PinCode Number(8),

    State Varchar2(15),

    Baldue Number(10,2)

    );





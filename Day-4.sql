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





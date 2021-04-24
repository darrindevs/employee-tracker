-- We don't need these since each table has an auto increment ID

/*INSERT INTO DEPARTMENT (id)
VALUES (1), (2), (3);*/

/*INSERT INTO ROLE_ (id)
VALUES (100), (101), (103);*/

/*INSERT INTO EMPLOYEE (id)
VALUES (200), (201), (203);*/

-- Insert Values into tables 

INSERT INTO DEPARTMENT (DEPTNAME)
VALUES ("Mirth"), ("Pranks"), ("Silly Walks");

INSERT INTO ROLE_ (TITLE)
VALUES ("Minister"), ("Chieftain"), ("Jester");

INSERT INTO ROLE_ (SALARY)
VALUES (100.5), (75.3), (5);

INSERT INTO ROLE_ (DEPTID)
VALUES (1), (2), (3);

INSERT INTO EMPLOYEE (FIRSTNAME)
VALUES ("Graham"), ("Terry"), ("John");

INSERT INTO EMPLOYEE (LASTNAME)
VALUES ("Chapman"), ("Gilliam"), ("Cleese");

INSERT INTO EMPLOYEE (ROLEID)
VALUES (100), (101), (103);

INSERT INTO EMPLOYEE (MANAGERID)
VALUES (100), (100), (100);

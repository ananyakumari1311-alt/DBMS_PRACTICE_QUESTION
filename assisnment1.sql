CREATE TABLE Student5 (
RollNo INT,
Name VARCHAR2(50),
Dept VARCHAR2(20),
Age INT,
Phone VARCHAR2(15)
);

DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

 CREATE TABLE Course4 (
 CourseID INT,
 CourseName VARCHAR2(50),
 Credits INT
 );

 DESC COURSE4;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)
 ALTER TABLE STUDENT5 ADD City
 VARCHAR2(50);

 DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)

ALTER TABLE Student5 ADD Semester
VARCHAR2(50);

DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)
 ALTER TABLE Student5
 RENAME COLUMN Phone TO MobileNo;

DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

   DROP TABLE Course4;


 INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
 VALUES (100,'Ananya','CSE',21,9263363946,'BANGALORE',5);

 INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
 VALUES (101,'Asha','CSE',21,8765432154,'BIHAR',5);

 INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
 VALUES (102,'Aayushi','CSE',21,7654832145,'MUMBAI',5);

 INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
 VALUES (103,'Adira','CSE',22,9876543210,'PURNIA',5);

 INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  VALUES(104,'Rahul','CSE',23,8765432190,'Patna',5);

SELECT * FROM Student5;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
CSE                          21 9263363946
BANGALORE
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Ananya
CSE                          21 9263363946
BANGALORE
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       100 Ananya
CSE                          21 9263363946
BANGALORE
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       101 Asha
CSE                          21 8765432154
BIHAR
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       102 Aayushi
CSE                          21 7654832145
MUMBAI
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       103 Adira
CSE                          22 9876543210
PURNIA
5


    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY
--------------------------------------------------
SEMESTER
--------------------------------------------------
       104 Rahul
CSE                          23 8765432190
Patna
5


7 rows selected.
 UPDATE Student5
 SET Dept ='ECE'
 WHERE RollNo =101;

3 rows updated.

SQL> UPDATE Student5
  2  SET Dept ='Patna'
  3  WHERE Name='RAHUL';

0 rows updated.

SQL> UPDATE Student
  2  SET age = age+1;

0 rows updated.

SQL> DELETE FROM Student5
  2  WHERE RollNo=104;

1 row deleted.


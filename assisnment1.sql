SQL> CREATE TABLE Student5 (
  2    RollNo INT,
  3    Name VARCHAR2(50),
  4    Dept VARCHAR2(20),
  5    Age INT,
  6    Phone VARCHAR2(15)
  7  );

Table created.

SQL> DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE TABLE Course4 (
  2  CourseID INT,
  3  CourseName VARCHAR2(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC COURSE4;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE STUDENT5 ADD City
  2  VARCHAR2(50);

Table altered.

SQL> DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)

SQL> ALTER TABLE Student5 ADD Semester
  2  VARCHAR2(50);

Table altered.

SQL> DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

SQL> ALTER TABLE Student5
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Student5;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(50)
 SEMESTER                                           VARCHAR2(50)

SQL> DROP TABLE Course4;

Table dropped.
SQL> INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (100,'Ananya','CSE',21,9263363946,'BANGALORE',5);

1 row created.

SQL>  INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (101,'Asha','CSE',21,8765432154,'BIHAR',5);

1 row created.

SQL> INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (102,'Aayushi','CSE',21,7654832145,'MUMBAI',5);

1 row created.

SQL> INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES (103,'Adira','CSE',22,9876543210,'PURNIA',5);

1 row created.

SQL> INSERT INTO Student5 (RollNo,Name,Dept,Age,MobileNo,City,Semester)
  2  VALUES(104,'Rahul','CSE',23,8765432190,'Patna',5);

1 row created.

SQL> SELECT * FROM Student5;

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

SQL> UPDATE Student5
  2  SET Dept ='ECE'
  3  WHERE RollNo =101;

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

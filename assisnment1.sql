CREATE TABLE Student5 (
RollNo INT,
Name VARCHAR2(50),
Dept VARCHAR2(20),
Age INT,
Phone VARCHAR2(15)
);

 CREATE TABLE Course4 (
 CourseID INT,
 CourseName VARCHAR2(50),
 Credits INT
 );

ALTER TABLE Student5 ADD Semester
VARCHAR2(50);

 ALTER TABLE Student5
 RENAME COLUMN Phone TO MobileNo;

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


 UPDATE Student
 SET age = age+1;

DELETE FROM Student5
WHERE RollNo=104;




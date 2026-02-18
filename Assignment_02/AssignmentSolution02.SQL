CREATE TABLE Department
Dept_ID INT PRIMARY KEY,
Dept_Name VARCHAR(50) ,
Office_Location VARCHAR(100)
);

CREATE TABLE Students(
Student_ID INT PRIMARY KEY,
Name VARCHAR(50) ,
Date_of_Birth DATE,
Gender CHAR(1),
Contact_No VARCHAR(13),
Dept_ID INT,
FOREIGN KEY (Dept_ID) REFERENCES Department3(Dept_ID)
);

CREATE TABLE Faculty3 (
Faculty_ID INT PRIMARY KEY,
Name VARCHAR(50) ,
Designation VARCHAR(20),
Email VARCHAR(50),
Dept_ID INT,
FOREIGN KEY (Dept_ID) REFERENCES Department3(Dept_ID)
);

 CREATE TABLE Course4 (
 Course_ID INT PRIMARY KEY,
 Course_Name VARCHAR(30) ,
 Credits INT,
 Dept_ID INT,
 Faculty_ID INT,
 FOREIGN KEY (Dept_ID) REFERENCES Department3(Dept_ID),
 FOREIGN KEY (Faculty_ID) REFERENCES Faculty3(Faculty_ID)
 );

 CREATE TABLE Enrollment3 (
 Enrollment_ID INT PRIMARY KEY,
 Semester VARCHAR(10),
 Grade CHAR(2),
 Student_ID INT,
 Course_ID INT,
 FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
 FOREIGN KEY (Course_ID) REFERENCES Course4(Course_ID)
 );


SQL> CREATE TABLE Department3 (
  2      Dept_ID INT PRIMARY KEY,
  3      Dept_Name VARCHAR(50) ,
  4      Office_Location VARCHAR(100)
  5  );

Table created.

SQL> CREATE TABLE Students(
  2      Student_ID INT PRIMARY KEY,
  3      Name VARCHAR(50) ,
  4      Date_of_Birth DATE,
  5      Gender CHAR(1),
  6      Contact_No VARCHAR(13),
  7      Dept_ID INT,
  8      FOREIGN KEY (Dept_ID) REFERENCES Department3(Dept_ID)
  9  );

Table created.

SQL> CREATE TABLE Faculty3 (
  2      Faculty_ID INT PRIMARY KEY,
  3      Name VARCHAR(50) ,
  4      Designation VARCHAR(20),
  5      Email VARCHAR(50),
  6      Dept_ID INT,
  7      FOREIGN KEY (Dept_ID) REFERENCES Department3(Dept_ID)
  8  );

Table created.

SQL> CREATE TABLE Course4 (
  2      Course_ID INT PRIMARY KEY,
  3      Course_Name VARCHAR(30) ,
  4      Credits INT,
  5      Dept_ID INT,
  6      Faculty_ID INT,
  7      FOREIGN KEY (Dept_ID) REFERENCES Department3(Dept_ID),
  8      FOREIGN KEY (Faculty_ID) REFERENCES Faculty3(Faculty_ID)
  9  );

Table created.

SQL> CREATE TABLE Enrollment3 (
  2      Enrollment_ID INT PRIMARY KEY,
  3      Semester VARCHAR(10),
  4      Grade CHAR(2),
  5      Student_ID INT,
  6      Course_ID INT,
  7      FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
  8      FOREIGN KEY (Course_ID) REFERENCES Course4(Course_ID)
  9  );

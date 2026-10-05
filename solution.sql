use collegeDBbca;
CREATE TABLE Department2(
     deptID INT PRIMARY KEY,
     deptname VARCHAR(50),
);
CREATE TABLE course2(
     courseID INT PRIMARY KEY,
     coursename VARCHAR(50),
     deptID INT,
     FOREIGN KEY (deptID)
     REFERENCES Department2(deptID)
);
CREATE TABLE faculty(
     facultyID INT PRIMARY KEY,
     facultyname VARCHAR(50)
     deptID INT,
     FOREIGN KEY(DeptID)
     REFERENCES Department2(deptID)
);
CREATE TABLE student2(
     studID INT PRIMARY KEY,
     studname VARCHAR(50),
     courseID INT,
     facultyID INT,
     FOREIGN KEY (courseID)
     REFERENCES course (courseID)
     FOREIGN KEY (facultyID)
     REFERENCES faculty (facultyID)
);
INSERT INTO department2 VALUES
(1,"computer science"),
(2,"commerce");
INSERT INTO course2 VALUES
(101,"bca",1),
(102,"bcom",2):
INSERT INTO faculty VALUES
(201,"de.kumar",1),
(202,"dr.ravi",2);
INSERT INTO student2 VALUES
(1,"arun",101,201),
(2,"priya",101,201),
(3,"rahul",102,202);
SELECT
s.studentID,
s.studentname,
c.coursename,
f.facultyname,
d.departmentname
FROM student s
JOIN course c
on s.courseID = c.courseID
join faculty f
on s.facultyID=f.facultyID
join department d 
on c.departmentID =d.departmentID;
DROP TABLE Department;

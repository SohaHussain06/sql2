Create database Paper;
Create TABLE Department(
    DeptNO int , -- PRIMARY KEY 
	DeptName VARCHAR (20),
	Location VARCHAR (30)
);
--inserting into department
 INSERT INTO Department(DeptNo, DeptName , Location)
 VALUES 
 (23 , 'Computer Science ', 'Street2 township'),
 (26 , 'Physics ', 'Street4 township'),
 (01 , 'English ', 'Street10 township'),
 (24 , 'Computer Science ', 'Street3 township')


Create table Teacher(
    TeacherID int , --PRIMARY KEY 
	TeacherName VARCHAR (20),
	DeptNO int 
);

 INSERT INTO  Teacher (TeacherID, TeacherName, DeptNO)
 VALUES
 (02 ,'Ali ', 23),
 (47 ,'Ahmed', 24),
 (101, 'hanif', 01)

  SELECT* FROM Department;
 SELECT * FROM Teacher;

 -- Task 1.JOIN
SELECT Teacher.TeacherName, Department.DeptName
 From Teacher
 JOIN Department
 ON Teacher.DeptNO = Department.DeptNO;

 --  Task 2 .inserting into teacher
  INSERT INTO  Teacher (TeacherID, TeacherName, DeptNO)
 VALUES
 (12 ,'Muhammad ', 30)

 -- Task 3. update
 UPDATE Teacher SET DeptNo = 5 where TeacherID = 101;

 
 -- Task 4.view
 create view CS_NEWTeachers AS
 SELECT 
      Teacher.TeacherName 
From Teacher 
 Join Department 
  ON Teacher. DeptNO = Department.  DeptNo
  Where Department.DeptName = 'computer Science';
  SELECT * FROM CS_NEWTeachers;
   SELECT* FROM Department;
 SELECT * FROM Teacher;
 

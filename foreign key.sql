
CREATE DATABASE aptechDB;
GO


USE aptechDB;
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL
);

CREATE TABLE StudentCourseFaculty (
    SCF_ID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT,
    FacultyID INT,
    CourseID INT,

    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(FacultyID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students VALUES
(1, 'Ali'),
(2, 'Hamza'),
(3, 'Sara'),
(4, 'umer'),
(5, 'Ayan')

INSERT INTO Faculty VALUES
(101, 'Sir yousuf'),
(102, 'sir laman'),
(103, 'sir Atizaz')

INSERT INTO Courses VALUES
(1001, 'Computer Science'),
(1002, 'Mathematics'),
(1003, 'Data Science'),
(1004, 'Artificial intelligence');


INSERT INTO StudentCourseFaculty (StudentID, FacultyID, CourseID) VALUES
(1, 102, 1001),
(2, 101, 1002),
(3, 103, 1001),
(4, 101, 1003),
(5, 101, 1004);


SELECT 
    S.StudentName,
    F.FacultyName,
    C.CourseName
FROM StudentCourseFaculty SCF
JOIN Students S ON SCF.StudentID = S.StudentID
JOIN Faculty F ON SCF.FacultyID = F.FacultyID
JOIN Courses C ON SCF.CourseID = C.CourseID;

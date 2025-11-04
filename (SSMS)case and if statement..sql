CREATE DATABASE CaseIfPractice;
GO

USE CaseIfPractice;
GO

CREATE TABLE Employees (
    Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
('Ali', 80000),
('Sara', 45000),
('Usman', 20000);

SELECT 
    Name,
    Salary,
    CASE 
        WHEN Salary >= 60000 THEN 'High'
        WHEN Salary BETWEEN 30000 AND 59999 THEN 'Average'
        ELSE 'Low'
    END AS SalaryLevel
FROM Employees;

CREATE TABLE EmpBonus (
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO EmpBonus VALUES
('Ali', 'IT', 80000),
('Sara', 'HR', 40000),
('Usman', 'Sales', 25000);

SELECT 
    Name,
    Department,
    Salary,
    CASE 
        WHEN Department = 'IT' THEN Salary * 0.15
        WHEN Department = 'HR' THEN Salary * 0.10
        ELSE Salary * 0.05
    END AS Bonus
FROM EmpBonus;

DECLARE @Present INT = 20, @Total INT = 30;

IF (@Present * 100 / @Total) >= 75
    PRINT 'Good Attendance';
ELSE
    PRINT 'Poor Attendance';

CREATE TABLE Results (
    Name VARCHAR(50),
    Percentage INT
);

INSERT INTO Results VALUES
('Ali', 85),
('Sara', 65),
('Usman', 40),
('Bilal', 25);

SELECT 
    Name,
    Percentage,
    CASE 
        WHEN Percentage >= 80 THEN 'Excellent'
        WHEN Percentage >= 60 THEN 'Good'
        WHEN Percentage >= 40 THEN 'Pass'
        ELSE 'Fail'
    END AS ResultStatus
FROM Results;

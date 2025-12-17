CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(10, 'HR', 'Delhi'),
(20, 'IT', 'Mumbai'),
(30, 'Finance', 'Pune'),
(50, 'Marketing', 'Chennai');

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary) VALUES
(1, 'Akash', 10, 50000),
(2, 'Nisha', 20, 60000),
(4, 'Simran', 30, 70000),
(5, 'Meena', 30, 55000);


SELECT 
  DeptName,
  COUNT(EmpID) AS NumEmployees,
  AVG(Salary) AS AvgSalary,
  CASE
    WHEN AVG(Salary) >= 60000 THEN 'High Avg'
    WHEN AVG(Salary) BETWEEN 50000 AND 59999 THEN 'Medium Avg' 
    WHEN AVG(Salary) < 50000 THEN 'Low Avg'
    ELSE 'No Employees'
  END AS SalaryCategory
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
GROUP BY DeptName;



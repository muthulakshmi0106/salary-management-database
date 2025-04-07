CREATE TABLE Employee (
  Employee_ID INT AUTO_INCREMENT,
  Name VARCHAR(50),
  Department VARCHAR(50),
  Designation VARCHAR(50),
  Date_of_Joining DATE,
  Email VARCHAR(100),
  Phone VARCHAR(20),
  PRIMARY KEY (Employee_ID)
);
select*from Employee
INSERT INTO Employee (Employee_ID, Name, Department, Designation, Date_of_Joining, Email, Phone)
VALUES
  (1, 'John Smith', 'HR', 'Manager', '2020-01-01', 'john.smith@example.com', '1234567890'),
  (2, 'Jane Doe', 'Marketing', 'Executive', '2020-02-01', 'jane.doe@example.com', '9876543210'),
  (3, 'Bob Brown', 'IT', 'Developer', '2020-03-01', 'bob.brown@example.com', '5551234567'),
  (4, 'Alice Johnson', 'Sales', 'Representative', '2020-04-01', 'alice.johnson@example.com', '9012345678'),
  (5, 'Mike Davis', 'Finance', 'Accountant', '2020-05-01', 'mike.davis@example.com', '1112223333'),
  (6, 'Emma Taylor', 'Operations', 'Coordinator', '2020-06-01', 'emma.taylor@example.com', '4445556666'),
  (7, 'David Lee', 'HR', 'Recruiter', '2020-07-01', 'david.lee@example.com', '7778889999'),
  (8, 'Sophia Patel', 'Marketing', 'Specialist', '2020-08-01', 'sophia.patel@example.com', '2223334444'),
  (9, 'Oliver Kim', 'IT', 'Engineer', '2020-09-01', 'oliver.kim@example.com', '6667778888'),
  (10, 'Ava Chen', 'Sales', 'Manager', '2020-10-01', 'ava.chen@example.com', '3334445555');
   CREATE TABLE Salary (
  Salary_ID INT AUTO_INCREMENT,
  Employee_ID INT,
  Basic_Salary DECIMAL(10, 2),
  Allowances DECIMAL(10, 2),
  Deductions DECIMAL(10, 2),
  Net_Salary DECIMAL(10, 2),
  Salary_Date DATE,
  PRIMARY KEY (Salary_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
select*from Salary
INSERT INTO Salary (Salary_ID, Employee_ID, Basic_Salary, Allowances, Deductions, Net_Salary, Salary_Date)
VALUES
  (1, 1, 50000.00, 10000.00, 5000.00, 45000.00, '2022-01-01'),
  (2, 2, 60000.00, 12000.00, 6000.00, 54000.00, '2022-01-01'),
  (3, 3, 70000.00, 14000.00, 7000.00, 63000.00, '2022-01-01'),
  (4, 4, 80000.00, 16000.00, 8000.00, 72000.00, '2022-01-01'),
  (5, 5, 90000.00, 18000.00, 9000.00, 81000.00, '2022-01-01'),
  (6, 6, 100000.00, 20000.00, 10000.00, 90000.00, '2022-01-01'),
  (7, 7, 110000.00, 22000.00, 11000.00, 99000.00, '2022-01-01'),
  (8, 8, 120000.00, 24000.00, 12000.00, 108000.00, '2022-01-01'),
  (9, 9, 130000.00, 26000.00, 13000.00, 117000.00, '2022-01-01'),
  (10, 10, 140000.00, 28000.00, 14000.00, 126000.00, '2022-01-01');
  CREATE TABLE Allowance (
  Allowance_ID INT AUTO_INCREMENT,
  Salary_ID INT,
  Allowance_Type VARCHAR(50),
  Allowance_Amount DECIMAL(10, 2),
  PRIMARY KEY (Allowance_ID),
  FOREIGN KEY (Salary_ID) REFERENCES Salary(Salary_ID)
);
select*from Allowance

INSERT INTO Allowance (Allowance_ID, Salary_ID, Allowance_Type, Allowance_Amount)
VALUES
  (1, 1, 'Housing Allowance', 5000.00),
  (2, 1, 'Transportation Allowance', 2000.00),
  (3, 2, 'Housing Allowance', 6000.00),
  (4, 2, 'Transportation Allowance', 2500.00),
  (5, 3, 'Housing Allowance', 7000.00),
  (6, 3, 'Transportation Allowance', 3000.00),
  (7, 4, 'Housing Allowance', 8000.00),
  (8, 4, 'Transportation Allowance', 3500.00),
  (9, 5, 'Housing Allowance', 9000.00),
  (10, 5, 'Transportation Allowance', 4000.00),
  (11, 6, 'Housing Allowance', 10000.00),
  (12, 6, 'Transportation Allowance', 4500.00),
  (13, 7, 'Housing Allowance', 11000.00),
  (14, 7, 'Transportation Allowance', 5000.00),
  (15, 8, 'Housing Allowance', 12000.00),
  (16, 8, 'Transportation Allowance', 5500.00),
  (17, 9, 'Housing Allowance', 13000.00),
  (18, 9, 'Transportation Allowance', 6000.00),
  (19, 10, 'Housing Allowance', 14000.00),
  (20, 10, 'Transportation Allowance', 6500.00);
  Deduction Table

CREATE TABLE Deduction (
  Deduction_ID INT AUTO_INCREMENT,
  Salary_ID INT,
  Deduction_Type VARCHAR(50),
  Deduction_Amount DECIMAL(10, 2),
  PRIMARY KEY (Deduction_ID),
  FOREIGN KEY (Salary_ID) REFERENCES Salary(Salary_ID)
);
select*from  Deduction
INSERT INTO Deduction (Deduction_ID, Salary_ID, Deduction_Type, Deduction_Amount)
VALUES
  (1, 1, 'Income Tax', 2000.00),
  (2, 1, 'Health Insurance', 500.00),
  (3, 2, 'Income Tax', 2500.00),
  (4, 2, 'Health Insurance', 600.00),
  (5, 3, 'Income Tax', 3000.00),
  (6, 3, 'Health Insurance', 700.00),
  (7, 4, 'Income Tax', 3500.00),
  (8, 4, 'Health Insurance', 800.00),
  (9, 5, 'Income Tax', 4000.00),
  (10, 5, 'Health Insurance', 900.00),
  (11, 6, 'Income Tax', 4500.00),
  (12, 6, 'Health Insurance', 1000.00),
  (13, 7, 'Income Tax', 5000.00),
  (14, 7, 'Health Insurance', 1100.00),
  (15, 8, 'Income Tax', 5500.00),
  (16, 8, 'Health Insurance', 1200.00),
  (17, 9, 'Income Tax', 6000.00),
  (18, 9, 'Health Insurance', 1300.00),
  (19, 10, 'Income Tax', 6500.00),
  (20, 10, 'Health Insurance', 1400.00);
  CREATE TABLE Payroll (
  Payroll_ID INT AUTO_INCREMENT,
  Employee_ID INT,
  Salary_ID INT,
  Payroll_Date DATE,
  Payroll_Amount DECIMAL(10, 2),
  PRIMARY KEY (Payroll_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
  FOREIGN KEY (Salary_ID) REFERENCES Salary(Salary_ID)
);
select*from PayrollINSERT INTO Payroll (Payroll_ID, Employee_ID, Salary_ID, Payroll_Date, Payroll_Amount)
VALUES
  (1, 1, 1, '2022-01-15', 45000.00),
  (2, 2, 2, '2022-01-15', 54000.00),
  (3, 3, 3, '2022-01-15', 63000.00),
  (4, 4, 4, '2022-01-15', 72000.00),
  (5, 5, 5, '2022-01-15', 81000.00),
  (6, 6, 6, '2022-01-15', 90000.00),
  (7, 7, 7, '2022-01-15', 99000.00),
  (8, 8, 8, '2022-01-15', 108000.00),
  (9, 9, 9, '2022-01-15', 117000.00),
  (10, 10, 10, '2022-01-15', 126000.00),
  (11, 1, 1, '2022-02-15', 45000.00),
  (12, 2, 2, '2022-02-15', 54000.00),
  (13, 3, 3, '2022-02-15', 63000.00),
  (14, 4, 4, '2022-02-15', 72000.00),
  (15, 5, 5, '2022-02-15', 81000.00),
  (16, 6, 6, '2022-02-15', 90000.00),
  (17, 7, 7, '2022-02-15', 99000.00),
  (18, 8, 8, '2022-02-15', 108000.00),
  (19, 9, 9, '2022-02-15', 117000.00),
  (20, 10, 10, '2022-02-15', 126000.00);
  CREATE TABLE Tax (
  Tax_ID INT AUTO_INCREMENT,
  Employee_ID INT,
  Tax_Type VARCHAR(50),
  Tax_Amount DECIMAL(10, 2),
  PRIMARY KEY (Tax_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
select*from Tax
INSERT INTO Tax (Tax_ID, Employee_ID, Tax_Type, Tax_Amount)
VALUES
  (1, 1, 'Income Tax', 2000.00),
  (2, 1, 'Social Security Tax', 1000.00),
  (3, 2, 'Income Tax', 2500.00),
  (4, 2, 'Social Security Tax', 1200.00),
  (5, 3, 'Income Tax', 3000.00),
  (6, 3, 'Social Security Tax', 1500.00),
  (7, 4, 'Income Tax', 3500.00),
  (8, 4, 'Social Security Tax', 1800.00),
  (9, 5, 'Income Tax', 4000.00),
  (10, 5, 'Social Security Tax', 2000.00),
  (11, 6, 'Income Tax', 4500.00),
  (12, 6, 'Social Security Tax', 2200.00),
  (13, 7, 'Income Tax', 5000.00),
  (14, 7, 'Social Security Tax', 2500.00),
  (15, 8, 'Income Tax', 5500.00),
  (16, 8, 'Social Security Tax', 2800.00),
  (17, 9, 'Income Tax', 6000.00),
  (18, 9, 'Social Security Tax', 3000.00),
  (19, 10, 'Income Tax', 6500.00),
  (20, 10, 'Social Security Tax', 3200.00);
  CREATE TABLE Benefits (
  Benefit_ID INT AUTO_INCREMENT,
  Employee_ID INT,
  Benefit_Type VARCHAR(50),
  Benefit_Amount DECIMAL(10, 2),
  PRIMARY KEY (Benefit_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);
select*from Benefits

INSERT INTO Benefits (Benefit_ID, Employee_ID, Benefit_Type, Benefit_Amount)
VALUES
  (1, 1, 'Health Insurance', 500.00),
  (2, 1, 'Retirement Plan', 1000.00),
  (3, 2, 'Health Insurance', 600.00),
  (4, 2, 'Retirement Plan', 1200.00),
  (5, 3, 'Health Insurance', 700.00),
  (6, 3, 'Retirement Plan', 1500.00),
  (7, 4, 'Health Insurance', 800.00),
  (8, 4, 'Retirement Plan', 1800.00),
  (9, 5, 'Health Insurance', 900.00),
  (10, 5, 'Retirement Plan', 2000.00),
  (11, 6, 'Health Insurance', 1000.00),
  (12, 6, 'Retirement Plan', 2200.00),
  (13, 7, 'Health Insurance', 1100.00),
  (14, 7, 'Retirement Plan', 2500.00),
  (15, 8, 'Health Insurance', 1200.00),
  (16, 8, 'Retirement Plan', 2800.00),
  (17, 9, 'Health Insurance', 1300.00),
  (18, 9, 'Retirement Plan', 3000.00),
  (19, 10, 'Health Insurance', 1400.00),
  (20, 10, 'Retirement Plan', 3200.00);
  # Employee Salary View
CREATE VIEW EmployeeSalary AS
SELECT 
  E.Name, 
  E.Department, 
  E.Designation, 
  S.Basic_Salary, 
  S.Allowances, 
  S.Deductions, 
  S.Net_Salary
FROM 
  Employee E
  INNER JOIN Salary S ON E.Employee_ID = S.Employee_ID;
  #Employee Allowance View
CREATE VIEW EmployeeAllowance AS
SELECT 
  E.Name, 
  A.Allowance_Type, 
  A.Allowance_Amount
FROM 
  Employee E
  INNER JOIN Salary S ON E.Employee_ID = S.Employee_ID
  INNER JOIN Allowance A ON S.Salary_ID = A.Salary_ID;
# Employee Deduction View
CREATE VIEW EmployeeDeduction AS
SELECT 
  E.Name, 
  D.Deduction_Type, 
  D.Deduction_Amount
FROM 
  Employee E
  INNER JOIN Salary S ON E.Employee_ID = S.Employee_ID
  INNER JOIN Deduction D ON S.Salary_ID = D.Salary_ID;
# Payroll Summary View
CREATE VIEW PayrollSummary AS
SELECT 
  E.Name, 
  P.Payroll_Date, 
  P.Payroll_Amount
FROM 
  Employee E
  INNER JOIN Payroll P ON E.Employee_ID = P.Employee_ID;
# Salary Breakdown View
CREATE VIEW SalaryBreakdown AS
SELECT 
  E.Name, 
  S.Basic_Salary, 
  S.Allowances, 
  S.Deductions, 
  S.Net_Salary
FROM 
  Employee E
  INNER JOIN Salary S ON E.Employee_ID = S.Employee_ID;
  DELIMITER $$

CREATE PROCEDURE sp_InsertNewEmployee(
  IN p_Name VARCHAR(50),
  IN p_Department VARCHAR(50),
  IN p_Designation VARCHAR(50),
  IN p_Date_of_Joining DATE,
  IN p_Email VARCHAR(100),
  IN p_Phone VARCHAR(20)
)
BEGIN
  INSERT INTO Employee (Name, Department, Designation, Date_of_Joining, Email, Phone)
  VALUES (p_Name, p_Department, p_Designation, p_Date_of_Joining, p_Email, p_Phone);
END$$

DELIMITER ;


DELIMITER $$

CREATE PROCEDURE sp_UpdateEmployeeSalary(
  IN p_Employee_ID INT,
  IN p_Basic_Salary DECIMAL(10, 2),
  IN p_Allowances DECIMAL(10, 2),
  IN p_Deductions DECIMAL(10, 2),
  IN p_Net_Salary DECIMAL(10, 2)
)
BEGIN
  UPDATE Salary
  SET Basic_Salary = p_Basic_Salary,
      Allowances = p_Allowances,
      Deductions = p_Deductions,
      Net_Salary = p_Net_Salary
  WHERE Employee_ID = p_Employee_ID;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_DeleteEmployee(
  IN p_Employee_ID INT
)
BEGIN
  DELETE FROM Employee
  WHERE Employee_ID = p_Employee_ID;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_GetEmployeeSalary(
  IN p_Employee_ID INT
)
BEGIN
  SELECT Basic_Salary, Allowances, Deductions, Net_Salary
  FROM Salary
  WHERE Employee_ID = p_Employee_ID;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_GetPayrollSummary()
BEGIN
  SELECT E.Name, P.Payroll_Date, P.Payroll_Amount
  FROM Employee E
  INNER JOIN Payroll P ON E.Employee_ID = P.Employee_ID;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_InsertNewPayroll(
  IN p_Employee_ID INT,
  IN p_Payroll_Date DATE,
  IN p_Payroll_Amount DECIMAL(10, 2)
)
BEGIN
  INSERT INTO Payroll (Employee_ID, Payroll_Date, Payroll_Amount)
  VALUES (p_Employee_ID, p_Payroll_Date, p_Payroll_Amount);
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_UpdatePayroll(
  IN p_Payroll_ID INT,
  IN p_Payroll_Date DATE,
  IN p_Payroll_Amount DECIMAL(10, 2)
)
BEGIN
  UPDATE Payroll
  SET Payroll_Date = p_Payroll_Date,
      Payroll_Amount = p_Payroll_Amount
  WHERE Payroll_ID = p_Payroll_ID;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_DeletePayroll(
  IN p_Payroll_ID INT
)
BEGIN
  DELETE FROM Payroll
  WHERE Payroll_ID = p_Payroll_ID;
END$$

DELIMITER ;















  






  





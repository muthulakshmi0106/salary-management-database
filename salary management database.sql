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
  (2, 'Jane Doe', 'Marketing', 'Executive', '2020-01-02', 'jane.doe@example.com', '9876543210'),  
  (3, 'Bob Brown', 'IT', 'Developer', '2020-01-03', 'bob.brown@example.com', '5551234567'),  
  (4, 'Alice Johnson', 'Sales', 'Representative', '2020-01-04', 'alice.johnson@example.com', '9012345678'),  
  (5, 'Mike Davis', 'Finance', 'Accountant', '2020-01-05', 'mike.davis@example.com', '1112223333');
  
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
  (5, 5, 90000.00, 18000.00, 9000.00, 81000.00, '2022-01-01');
  
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
  (5, 3, 'Housing Allowance', 7000.00)
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
  CREATE TABLE Deduction (
  Deduction_ID INT AUTO_INCREMENT,
  Salary_ID INT,
  Deduction_Type VARCHAR(50),
  Deduction_Amount DECIMAL(10, 2),
  PRIMARY KEY (Deduction_ID),
  FOREIGN KEY (Salary_ID) REFERENCES Salary(Salary_ID)
);
select*from Deduction
INSERT INTO Deduction (Deduction_ID, Employee_ID, Deduction_Type, Deduction_Amount)
VALUES
  (1, 1, 'Income Tax', 2000.00),
  (2, 1, 'Health Insurance Premium', 500.00),
  (3, 1, 'Retirement Plan Contribution', 1000.00),
  (4, 2, 'Income Tax', 2500.00),
  (5, 2, 'Health Insurance Premium', 600.00),
  (6, 2, 'Retirement Plan Contribution', 1200.00),
  (7, 3, 'Income Tax', 3000.00),
  (8, 3, 'Health Insurance Premium', 700.00),
  (9, 3, 'Retirement Plan Contribution', 1500.00),
  (10, 4, 'Income Tax', 3500.00),
  (11, 4, 'Health Insurance Premium', 800.00),
  (12, 4, 'Retirement Plan Contribution', 1800.00),
  (13, 5, 'Income Tax', 4000.00),
  (14, 5, 'Health Insurance Premium', 900.00),
  (15, 5, 'Retirement Plan Contribution', 2000.00),
  (16, 6, 'Income Tax', 4500.00),
  (17, 6, 'Health Insurance Premium', 1000.00),
  (18, 6, 'Retirement Plan Contribution', 2200.00),
  (19, 7, 'Income Tax', 5000.00),
  (20, 7, 'Health Insurance Premium', 1100.00);
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
select*from Payroll
INSERT INTO Payroll (Payroll_ID, Employee_ID, Salary_ID, Payroll_Date, Payroll_Amount)
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
INSERT INTO Tax (Tax_ID, Employee_ID, Tax_Type, Tax_Amount) VALUES
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




  
  


  
  
  
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
  
  


  
  
  
Create table TemporaryStaff
(
StaffID INT,
StaffName Varchar(50),
HireDate Date,
);

Drop Table TemporaryStaff

Create Table Department(
DepartmentID int PRIMARY KEY,
DepartmentName varchar(50) UNIQUE NOT NULL, 
);
INSERT INTO Department (DepartmentID, DepartmentName) 
VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');





Create Table Employee
(
EmployeeID int PRIMARY Key,
FullName  VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE,
Salary DECIMAL(10,2),
DepartmentID INT
);

ALTER TABLE employee 
ADD PhoneNumber VARCHAR(20);

INSERT INTO employee (EmployeeID, FullName,Email,Salary,DepartmentID,PhoneNumber) 
VALUES 
(1, 'Ahmad Ali','ahmad@techworld.com',1200.00,1,'0791111111'),
(2, 'Sara Hassan','sara@techworld.com',950.00 ,2,'0792222222'),
(3, 'Zaid Omar','zaid@techworld.com', 1500.00 ,1,'0793333333'),
(4, 'Mona Khaled','mona@techworld.com', 800.00 ,3,'0794444444');

Update employee set Salary=1350.00 where EmployeeID=1;

Delete employee where EmployeeID=4;

select * from Employee

Select FullName,Email from Employee

select sum(Salary) as TotalSalarie from Employee

select Avg(Salary) as AverageSalary from Employee

select MAX(Salary) as HighestSalary,Min(Salary) as LowestSalary from employee

select Count(*) as TotalEmployees from Employee
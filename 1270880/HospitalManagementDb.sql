CREATE TABLE Departments
(
	DepartmentId INT IDENTITY PRIMARY KEY,
	DepartmentName NVARCHAR(50) NOT NULL,
	DepartmentHead NVARCHAR(50) NOT NULL,
)
GO
CREATE TABLE Hospitals
(
	HospitalId INT IDENTITY PRIMARY KEY,
	HospitalName NVARCHAR(50) NOT NULL,
	Aria NVARCHAR(50) NOT NULL,
	Country NVARCHAR(70) NOT NULL
)
GO
CREATE TABLE Employees
(
	EmployeeId int IDENTITY PRIMARY KEY,
	EmployeeName NVARCHAR(60) NOT NULL,
	JoinningDate DATE NOT NULL,
	EmpType NVARCHAR(50) NOT NULL,
	[Address] NVARCHAR(70) NOT NULL,
	Salary MONEY NOT NULL,
	EmpImage NVARCHAR(50) NOT NULL,
	DepartmentId int NOT NULL REFERENCES Departments(DepartmentId)
)
GO
CREATE TABLE Patients
(
	PatientId INT IDENTITY PRIMARY KEY,
	PatientName NVARCHAR(50) NOT NULL,
	Phone Char(11) NOT NULL,
	BloodGroup NVARCHAR(50) NOT NULL,
	[Address] NVARCHAR(100) NOT NULL,
	ArrivalDate DATE NOT NULL,
	Gender NVARCHAR(50) NOT NULL,
	HospitalId int NOT NULL REFERENCES Hospitals(HospitalId)
)
GO
CREATE TABLE Bill
(  
 	PaymentId IDENTITY PRIMARY KEY,
	BillDate DATE NOT NULL,
	RoomCost MONEY NOT NULL,
	OtherCharge MONEY NULL,
	PatientId int NOT NULL REFERENCES Patients(PatientId)
)
GO
CREATE TABLE Doctors
(
	DoctorId INT IDENTITY PRIMARY KEY,
	DoctorName NVARCHAR(50) NOT NULL,
	Qualification NVARCHAR(50) NOT NULL,
	PatientId int NOT NULL REFERENCES Patients(PatientId),
	EmployeeId int NOT NULL REFERENCES Employees(EmployeeId)
)

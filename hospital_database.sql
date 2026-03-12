create table PatientsTable(
PatientID INT primary key identity(1,1),
PatientName varchar(50),
Date_of_Birth DATE,
Phone_Number INT,
PatientAddress varchar(150));

create table DoctorsTable(
DoctorID INT primary key identity(1,1),
DoctorName varchar(50),
Specialization varchar(75),
Department varchar(50));

create table AppointmentsTable(
AppointmentID INT primary key identity(1,1),
App_PatientID INT,
foreign key(App_PatientID) references PatientsTable(PatientID),
App_DoctorID INT,
foreign key(App_DoctorID) references DoctorsTable(DoctorID),
Appointment_Date DATE,
Appointment_Time TIME
);


create table Medical_Services_Table(
ServiceID INT primary key identity(1,1),
Service_Name varchar(75),
Service_Description varchar(100),
Cost INT
);

create table Payment_Table(
PaymentID INT primary key identity(1,1),
Payment_PatientID INT 
foreign key(Payment_PatientID) references PatientsTable(PatientID),
Payment_ServiceID INT
foreign key(Payment_ServiceID) references Medical_Services_Table(ServiceID),
Payment_Date DATE,
Amount INT
);


create table Prescription_Table(
PrescriptionID INT primary key identity(1,1),
Prs_PatientID INT 
foreign key(Prs_PatientID) references PatientsTable(PatientID),
Prs_DoctorID INT,
foreign key(Prs_DoctorID) references DoctorsTable(DoctorID),
Prescription_Date DATE,
Medication varchar(50),
Dosage INT,
Instructions varchar(50)
);

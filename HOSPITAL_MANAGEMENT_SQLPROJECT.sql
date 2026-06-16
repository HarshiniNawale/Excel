CREATE DATABASE hospital_management;
USE hospital_management;

CREATE TABLE patients (
    patient_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    contact_number BIGINT,
    address VARCHAR(100),
    registration_date DATE,
    insurance_provider VARCHAR(50),
    insurance_number VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE doctors (
    doctor_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),
    phone_number BIGINT,
    years_experience INT,
    hospital_branch VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE appointments (
    appointment_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    doctor_id VARCHAR(10),
    appointment_date DATE,
    appointment_time TIME,
    reason_for_visit VARCHAR(100),
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE treatments (
    treatment_id VARCHAR(10) PRIMARY KEY,
    appointment_id VARCHAR(10),
    treatment_type VARCHAR(50),
    description_ VARCHAR(100),
    cost DECIMAL(10,2),
    treatment_date DATE,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);


CREATE TABLE billing (
    bill_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    treatment_id VARCHAR(10),
    bill_date DATE,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (treatment_id) REFERENCES treatments(treatment_id)
);




INSERT INTO patients VALUES
('P001','Aarav','Sharma','M','1998-01-12',9876500001,'Mumbai','2023-01-01','HealthPlus','INS1001','aarav1@mail.com'),
('P002','Vivaan','Patel','M','1997-02-15',9876500002,'Pune','2023-01-02','MediCare','INS1002','vivaan2@mail.com'),
('P003','Anaya','Joshi','F','1999-03-18',9876500003,'Delhi','2023-01-03','WellCare','INS1003','anaya3@mail.com'),
('P004','Diya','Rao','F','1996-04-20',9876500004,'Chennai','2023-01-04','PulseSecure','INS1004','diya4@mail.com'),
('P005','Arjun','Mehta','M','1995-05-22',9876500005,'Nashik','2023-01-05','HealthPlus','INS1005','arjun5@mail.com'),
('P006','Kabir','Nair','M','1994-06-25',9876500006,'Nagpur','2023-01-06','MediCare','INS1006','kabir6@mail.com'),
('P007','Isha','Kapoor','F','1993-07-28',9876500007,'Surat','2023-01-07','WellCare','INS1007','isha7@mail.com'),
('P008','Riya','Verma','F','1992-08-30',9876500008,'Indore','2023-01-08','HealthPlus','INS1008','riya8@mail.com'),
('P009','Yash','Kulkarni','M','1991-09-10',9876500009,'Jaipur','2023-01-09','PulseSecure','INS1009','yash9@mail.com'),
('P010','Sneha','Iyer','F','1990-10-12',9876500010,'Bhopal','2023-01-10','MediCare','INS1010','sneha10@mail.com'),

('P011','Rahul','Deshmukh','M','1998-11-15',9876500011,'Mumbai','2023-01-11','HealthPlus','INS1011','rahul11@mail.com'),
('P012','Priya','Shinde','F','1997-12-18',9876500012,'Pune','2023-01-12','WellCare','INS1012','priya12@mail.com'),
('P013','Karan','Patil','M','1996-01-20',9876500013,'Delhi','2023-01-13','PulseSecure','INS1013','karan13@mail.com'),
('P014','Neha','Yadav','F','1995-02-22',9876500014,'Nagpur','2023-01-14','MediCare','INS1014','neha14@mail.com'),
('P015','Rohan','Singh','M','1994-03-25',9876500015,'Surat','2023-01-15','HealthPlus','INS1015','rohan15@mail.com'),
('P016','Pooja','Gupta','F','1993-04-28',9876500016,'Indore','2023-01-16','WellCare','INS1016','pooja16@mail.com'),
('P017','Aditya','Mishra','M','1992-05-30',9876500017,'Jaipur','2023-01-17','PulseSecure','INS1017','aditya17@mail.com'),
('P018','Meera','Nair','F','1991-06-11',9876500018,'Bhopal','2023-01-18','MediCare','INS1018','meera18@mail.com'),
('P019','Siddharth','Reddy','M','1990-07-13',9876500019,'Mumbai','2023-01-19','HealthPlus','INS1019','sid19@mail.com'),
('P020','Anjali','Kulkarni','F','1989-08-15',9876500020,'Pune','2023-01-20','WellCare','INS1020','anjali20@mail.com'),

('P021','Harsh','Joshi','M','1998-09-18',9876500021,'Delhi','2023-01-21','PulseSecure','INS1021','harsh21@mail.com'),
('P022','Nikita','Patel','F','1997-10-20',9876500022,'Nagpur','2023-01-22','MediCare','INS1022','nikita22@mail.com'),
('P023','Aryan','Verma','M','1996-11-22',9876500023,'Surat','2023-01-23','HealthPlus','INS1023','aryan23@mail.com'),
('P024','Simran','Kaur','F','1995-12-25',9876500024,'Indore','2023-01-24','WellCare','INS1024','simran24@mail.com'),
('P025','Dev','Shah','M','1994-01-28',9876500025,'Jaipur','2023-01-25','PulseSecure','INS1025','dev25@mail.com'),
('P026','Aisha','Khan','F','1993-02-10',9876500026,'Bhopal','2023-01-26','MediCare','INS1026','aisha26@mail.com'),
('P027','Manav','Rao','M','1992-03-12',9876500027,'Mumbai','2023-01-27','HealthPlus','INS1027','manav27@mail.com'),
('P028','Tanya','Sharma','F','1991-04-14',9876500028,'Pune','2023-01-28','WellCare','INS1028','tanya28@mail.com'),
('P029','Krishna','Patil','M','1990-05-16',9876500029,'Delhi','2023-01-29','PulseSecure','INS1029','krishna29@mail.com'),
('P030','Ritika','Mehta','F','1989-06-18',9876500030,'Nagpur','2023-01-30','MediCare','INS1030','ritika30@mail.com'),

('P031','Om','Kulkarni','M','1998-07-20',9876500031,'Surat','2023-01-31','HealthPlus','INS1031','om31@mail.com'),
('P032','Kavya','Iyer','F','1997-08-22',9876500032,'Indore','2023-02-01','WellCare','INS1032','kavya32@mail.com'),
('P033','Dhruv','Singh','M','1996-09-24',9876500033,'Jaipur','2023-02-02','PulseSecure','INS1033','dhruv33@mail.com'),
('P034','Sanya','Gupta','F','1995-10-26',9876500034,'Bhopal','2023-02-03','MediCare','INS1034','sanya34@mail.com'),
('P035','Atharv','Nair','M','1994-11-28',9876500035,'Mumbai','2023-02-04','HealthPlus','INS1035','atharv35@mail.com'),
('P036','Mahi','Reddy','F','1993-12-30',9876500036,'Pune','2023-02-05','WellCare','INS1036','mahi36@mail.com'),
('P037','Parth','Yadav','M','1992-01-11',9876500037,'Delhi','2023-02-06','PulseSecure','INS1037','parth37@mail.com'),
('P038','Zoya','Khan','F','1991-02-13',9876500038,'Nagpur','2023-02-07','MediCare','INS1038','zoya38@mail.com'),
('P039','Reyansh','Joshi','M','1990-03-15',9876500039,'Surat','2023-02-08','HealthPlus','INS1039','reyansh39@mail.com'),
('P040','Palak','Shinde','F','1989-04-17',9876500040,'Indore','2023-02-09','WellCare','INS1040','palak40@mail.com'),

('P041','Vihaan','Patel','M','1998-05-19',9876500041,'Jaipur','2023-02-10','PulseSecure','INS1041','vihaan41@mail.com'),
('P042','Kiara','Sharma','F','1997-06-21',9876500042,'Bhopal','2023-02-11','MediCare','INS1042','kiara42@mail.com'),
('P043','Ayaan','Gupta','M','1996-07-23',9876500043,'Mumbai','2023-02-12','HealthPlus','INS1043','ayaan43@mail.com'),
('P044','Myra','Singh','F','1995-08-25',9876500044,'Pune','2023-02-13','WellCare','INS1044','myra44@mail.com'),
('P045','Ishaan','Patil','M','1994-09-27',9876500045,'Delhi','2023-02-14','PulseSecure','INS1045','ishaan45@mail.com'),
('P046','Sara','Rao','F','1993-10-29',9876500046,'Nagpur','2023-02-15','MediCare','INS1046','sara46@mail.com'),
('P047','Arnav','Desai','M','1992-11-10',9876500047,'Surat','2023-02-16','HealthPlus','INS1047','arnav47@mail.com'),
('P048','Navya','Mishra','F','1991-12-12',9876500048,'Indore','2023-02-17','WellCare','INS1048','navya48@mail.com'),
('P049','Laksh','Kulkarni','M','1990-01-14',9876500049,'Jaipur','2023-02-18','PulseSecure','INS1049','laksh49@mail.com'),
('P050','Avni','Nair','F','1989-02-16',9876500050,'Bhopal','2023-02-19','MediCare','INS1050','avni50@mail.com');



INSERT INTO doctors VALUES
('D001','Rahul','Shah','Cardiology',9988000001,12,'Mumbai Branch','rahul1@hospital.com'),
('D002','Priya','Patil','Neurology',9988000002,9,'Pune Branch','priya2@hospital.com'),
('D003','Amit','Singh','Orthopedics',9988000003,15,'Delhi Branch','amit3@hospital.com'),
('D004','Neha','Reddy','Pediatrics',9988000004,8,'Nagpur Branch','neha4@hospital.com'),
('D005','Karan','Gupta','Dermatology',9988000005,14,'Nashik Branch','karan5@hospital.com'),
('D006','Snehal','Joshi','Cardiology',9988000006,11,'Surat Branch','snehal6@hospital.com'),
('D007','Vikas','Mehta','Neurology',9988000007,10,'Indore Branch','vikas7@hospital.com'),
('D008','Pooja','Iyer','Orthopedics',9988000008,7,'Jaipur Branch','pooja8@hospital.com'),
('D009','Arjun','Kulkarni','Pediatrics',9988000009,13,'Bhopal Branch','arjun9@hospital.com'),
('D010','Meera','Nair','Dermatology',9988000010,6,'Mumbai Branch','meera10@hospital.com'),

('D011','Rohan','Sharma','Cardiology',9988000011,16,'Pune Branch','rohan11@hospital.com'),
('D012','Anjali','Patel','Neurology',9988000012,12,'Delhi Branch','anjali12@hospital.com'),
('D013','Yash','Verma','Orthopedics',9988000013,9,'Nagpur Branch','yash13@hospital.com'),
('D014','Simran','Kaur','Pediatrics',9988000014,5,'Nashik Branch','simran14@hospital.com'),
('D015','Harsh','Deshmukh','Dermatology',9988000015,18,'Surat Branch','harsh15@hospital.com'),
('D016','Aisha','Khan','Cardiology',9988000016,20,'Indore Branch','aisha16@hospital.com'),
('D017','Dev','Rao','Neurology',9988000017,8,'Jaipur Branch','dev17@hospital.com'),
('D018','Nikita','Shinde','Orthopedics',9988000018,11,'Bhopal Branch','nikita18@hospital.com'),
('D019','Aryan','Mishra','Pediatrics',9988000019,14,'Mumbai Branch','aryan19@hospital.com'),
('D020','Ritika','Gupta','Dermatology',9988000020,7,'Pune Branch','ritika20@hospital.com'),

('D021','Dhruv','Patil','Cardiology',9988000021,19,'Delhi Branch','dhruv21@hospital.com'),
('D022','Kavya','Reddy','Neurology',9988000022,13,'Nagpur Branch','kavya22@hospital.com'),
('D023','Atharv','Singh','Orthopedics',9988000023,10,'Nashik Branch','atharv23@hospital.com'),
('D024','Palak','Joshi','Pediatrics',9988000024,6,'Surat Branch','palak24@hospital.com'),
('D025','Ishaan','Mehta','Dermatology',9988000025,15,'Indore Branch','ishaan25@hospital.com'),
('D026','Sara','Kulkarni','Cardiology',9988000026,17,'Jaipur Branch','sara26@hospital.com'),
('D027','Laksh','Nair','Neurology',9988000027,12,'Bhopal Branch','laksh27@hospital.com'),
('D028','Myra','Patel','Orthopedics',9988000028,9,'Mumbai Branch','myra28@hospital.com'),
('D029','Vihaan','Rao','Pediatrics',9988000029,5,'Pune Branch','vihaan29@hospital.com'),
('D030','Navya','Sharma','Dermatology',9988000030,14,'Delhi Branch','navya30@hospital.com'),

('D031','Krishna','Gupta','Cardiology',9988000031,18,'Nagpur Branch','krishna31@hospital.com'),
('D032','Zoya','Iyer','Neurology',9988000032,7,'Nashik Branch','zoya32@hospital.com'),
('D033','Parth','Singh','Orthopedics',9988000033,11,'Surat Branch','parth33@hospital.com'),
('D034','Kiara','Desai','Pediatrics',9988000034,8,'Indore Branch','kiara34@hospital.com'),
('D035','Om','Shinde','Dermatology',9988000035,16,'Jaipur Branch','om35@hospital.com'),
('D036','Tanya','Mishra','Cardiology',9988000036,20,'Bhopal Branch','tanya36@hospital.com'),
('D037','Aditya','Patel','Neurology',9988000037,9,'Mumbai Branch','aditya37@hospital.com'),
('D038','Sanya','Rao','Orthopedics',9988000038,13,'Pune Branch','sanya38@hospital.com'),
('D039','Reyansh','Kulkarni','Pediatrics',9988000039,6,'Delhi Branch','reyansh39@hospital.com'),
('D040','Mahi','Khan','Dermatology',9988000040,15,'Nagpur Branch','mahi40@hospital.com'),

('D041','Manav','Verma','Cardiology',9988000041,12,'Nashik Branch','manav41@hospital.com'),
('D042','Anaya','Shah','Neurology',9988000042,10,'Surat Branch','anaya42@hospital.com'),
('D043','Kabir','Joshi','Orthopedics',9988000043,14,'Indore Branch','kabir43@hospital.com'),
('D044','Diya','Reddy','Pediatrics',9988000044,7,'Jaipur Branch','diya44@hospital.com'),
('D045','Ayaan','Singh','Dermatology',9988000045,18,'Bhopal Branch','ayaan45@hospital.com'),
('D046','Sneha','Patil','Cardiology',9988000046,11,'Mumbai Branch','sneha46@hospital.com'),
('D047','Arya','Nair','Neurology',9988000047,8,'Pune Branch','arya47@hospital.com'),
('D048','Riya','Gupta','Orthopedics',9988000048,13,'Delhi Branch','riya48@hospital.com'),
('D049','Vivaan','Sharma','Pediatrics',9988000049,5,'Nagpur Branch','vivaan49@hospital.com'),
('D050','Avni','Mehta','Dermatology',9988000050,17,'Nashik Branch','avni50@hospital.com');



INSERT INTO appointments VALUES
('A001','P001','D001','2024-01-01','09:00:00','Heart Checkup','Completed'),
('A002','P002','D002','2024-01-02','10:00:00','Headache','Scheduled'),
('A003','P003','D003','2024-01-03','11:00:00','Bone Pain','Pending'),
('A004','P004','D004','2024-01-04','12:00:00','Fever','Completed'),
('A005','P005','D005','2024-01-05','01:00:00','Skin Allergy','Scheduled'),
('A006','P006','D006','2024-01-06','02:00:00','Chest Pain','Completed'),
('A007','P007','D007','2024-01-07','03:00:00','Migraine','Pending'),
('A008','P008','D008','2024-01-08','04:00:00','Fracture','Completed'),
('A009','P009','D009','2024-01-09','09:30:00','Cold and Cough','Scheduled'),
('A010','P010','D010','2024-01-10','10:30:00','Skin Rash','Pending'),

('A011','P011','D011','2024-01-11','11:30:00','Heart Checkup','Completed'),
('A012','P012','D012','2024-01-12','12:30:00','Dizziness','Scheduled'),
('A013','P013','D013','2024-01-13','01:30:00','Knee Pain','Pending'),
('A014','P014','D014','2024-01-14','02:30:00','Fever','Completed'),
('A015','P015','D015','2024-01-15','03:30:00','Acne','Scheduled'),
('A016','P016','D016','2024-01-16','09:15:00','Chest Pain','Completed'),
('A017','P017','D017','2024-01-17','10:15:00','Brain Scan','Pending'),
('A018','P018','D018','2024-01-18','11:15:00','Back Pain','Completed'),
('A019','P019','D019','2024-01-19','12:15:00','Vaccination','Scheduled'),
('A020','P020','D020','2024-01-20','01:15:00','Allergy','Pending'),

('A021','P021','D021','2024-01-21','02:15:00','Heart Checkup','Completed'),
('A022','P022','D022','2024-01-22','03:15:00','Head Injury','Scheduled'),
('A023','P023','D023','2024-01-23','04:15:00','Joint Pain','Pending'),
('A024','P024','D024','2024-01-24','09:45:00','Flu','Completed'),
('A025','P025','D025','2024-01-25','10:45:00','Skin Infection','Scheduled'),
('A026','P026','D026','2024-01-26','11:45:00','Chest Pain','Completed'),
('A027','P027','D027','2024-01-27','12:45:00','Migraine','Pending'),
('A028','P028','D028','2024-01-28','01:45:00','Shoulder Pain','Completed'),
('A029','P029','D029','2024-01-29','02:45:00','Vaccination','Scheduled'),
('A030','P030','D030','2024-01-30','03:45:00','Eczema','Pending'),

('A031','P031','D031','2024-01-31','04:45:00','Heart Checkup','Completed'),
('A032','P032','D032','2024-02-01','09:20:00','Vertigo','Scheduled'),
('A033','P033','D033','2024-02-02','10:20:00','Leg Fracture','Pending'),
('A034','P034','D034','2024-02-03','11:20:00','Cold','Completed'),
('A035','P035','D035','2024-02-04','12:20:00','Skin Allergy','Scheduled'),
('A036','P036','D036','2024-02-05','01:20:00','Heart Pain','Completed'),
('A037','P037','D037','2024-02-06','02:20:00','Memory Loss','Pending'),
('A038','P038','D038','2024-02-07','03:20:00','Neck Pain','Completed'),
('A039','P039','D039','2024-02-08','04:20:00','Fever','Scheduled'),
('A040','P040','D040','2024-02-09','09:50:00','Rashes','Pending'),

('A041','P041','D041','2024-02-10','10:50:00','Heart Checkup','Completed'),
('A042','P042','D042','2024-02-11','11:50:00','Headache','Scheduled'),
('A043','P043','D043','2024-02-12','12:50:00','Arm Fracture','Pending'),
('A044','P044','D044','2024-02-13','01:50:00','Child Fever','Completed'),
('A045','P045','D045','2024-02-14','02:50:00','Skin Problem','Scheduled'),
('A046','P046','D046','2024-02-15','03:50:00','Chest Pain','Completed'),
('A047','P047','D047','2024-02-16','04:50:00','Brain Checkup','Pending'),
('A048','P048','D048','2024-02-17','09:10:00','Back Pain','Completed'),
('A049','P049','D049','2024-02-18','10:10:00','Vaccination','Scheduled'),
('A050','P050','D050','2024-02-19','11:10:00','Allergy','Pending');



INSERT INTO treatments VALUES
('T001','A001','ECG','Heart Monitoring Test',3500.00,'2024-01-01'),
('T002','A002','MRI','Brain MRI Scan',5000.00,'2024-01-02'),
('T003','A003','Physiotherapy','Bone Therapy Session',2200.00,'2024-01-03'),
('T004','A004','Vaccination','Flu Vaccination',1800.00,'2024-01-04'),
('T005','A005','Skin Treatment','Allergy Medication',2700.00,'2024-01-05'),
('T006','A006','Angiography','Heart Vessel Check',8500.00,'2024-01-06'),
('T007','A007','CT Scan','Brain CT Scan',4200.00,'2024-01-07'),
('T008','A008','Fracture Care','Arm Cast Treatment',3900.00,'2024-01-08'),
('T009','A009','Pediatric Care','Child Fever Treatment',1600.00,'2024-01-09'),
('T010','A010','Dermatology','Skin Cream Therapy',2400.00,'2024-01-10'),

('T011','A011','ECG','Cardiac Health Check',3600.00,'2024-01-11'),
('T012','A012','Neurology','Migraine Treatment',4100.00,'2024-01-12'),
('T013','A013','Orthopedic','Knee Pain Therapy',3300.00,'2024-01-13'),
('T014','A014','Vaccination','Viral Fever Injection',1700.00,'2024-01-14'),
('T015','A015','Skin Treatment','Acne Removal',2900.00,'2024-01-15'),
('T016','A016','Angioplasty','Heart Surgery Prep',12000.00,'2024-01-16'),
('T017','A017','Brain Scan','Neurological Scan',5600.00,'2024-01-17'),
('T018','A018','Physiotherapy','Back Pain Session',2600.00,'2024-01-18'),
('T019','A019','Vaccination','Child Immunization',1900.00,'2024-01-19'),
('T020','A020','Skin Care','Allergy Skin Test',2300.00,'2024-01-20'),

('T021','A021','ECG','Heart Beat Monitoring',3400.00,'2024-01-21'),
('T022','A022','CT Scan','Head Injury Scan',6100.00,'2024-01-22'),
('T023','A023','Orthopedic','Joint Pain Therapy',3700.00,'2024-01-23'),
('T024','A024','General Checkup','Flu Treatment',1500.00,'2024-01-24'),
('T025','A025','Dermatology','Skin Infection Care',2800.00,'2024-01-25'),
('T026','A026','Cardiology','Chest Pain Analysis',7900.00,'2024-01-26'),
('T027','A027','Neurology','Migraine Medicine',3200.00,'2024-01-27'),
('T028','A028','Physiotherapy','Shoulder Therapy',2500.00,'2024-01-28'),
('T029','A029','Vaccination','Booster Dose',1750.00,'2024-01-29'),
('T030','A030','Dermatology','Eczema Treatment',3100.00,'2024-01-30'),

('T031','A031','ECG','Heart Monitoring',3650.00,'2024-01-31'),
('T032','A032','Neurology','Vertigo Treatment',4300.00,'2024-02-01'),
('T033','A033','Fracture Care','Leg Fracture Support',4700.00,'2024-02-02'),
('T034','A034','General Medicine','Cold and Fever Care',1450.00,'2024-02-03'),
('T035','A035','Skin Treatment','Allergy Removal',2950.00,'2024-02-04'),
('T036','A036','Cardiology','Heart Pain Diagnosis',9100.00,'2024-02-05'),
('T037','A037','Brain Scan','Memory Checkup',5800.00,'2024-02-06'),
('T038','A038','Physiotherapy','Neck Pain Relief',2550.00,'2024-02-07'),
('T039','A039','Pediatric Care','Fever Treatment',1650.00,'2024-02-08'),
('T040','A040','Dermatology','Rash Treatment',2750.00,'2024-02-09'),

('T041','A041','ECG','Heart Stress Test',3900.00,'2024-02-10'),
('T042','A042','MRI','Headache Diagnosis',5200.00,'2024-02-11'),
('T043','A043','Orthopedic','Arm Fracture Treatment',4400.00,'2024-02-12'),
('T044','A044','Pediatric Care','Child Fever Care',1850.00,'2024-02-13'),
('T045','A045','Dermatology','Skin Infection Therapy',3000.00,'2024-02-14'),
('T046','A046','Cardiology','Chest Scan',8300.00,'2024-02-15'),
('T047','A047','Neurology','Brain Function Test',6200.00,'2024-02-16'),
('T048','A048','Physiotherapy','Back Muscle Therapy',2450.00,'2024-02-17'),
('T049','A049','Vaccination','Routine Vaccine',1700.00,'2024-02-18'),
('T050','A050','Skin Care','Allergy Consultation',2600.00,'2024-02-19');



INSERT INTO billing VALUES
('B001','P001','T001','2024-01-01',3500.00,'UPI','Paid'),
('B002','P002','T002','2024-01-02',5000.00,'Card','Pending'),
('B003','P003','T003','2024-01-03',2200.00,'Cash','Paid'),
('B004','P004','T004','2024-01-04',1800.00,'Insurance','Paid'),
('B005','P005','T005','2024-01-05',2700.00,'UPI','Pending'),
('B006','P006','T006','2024-01-06',8500.00,'Card','Paid'),
('B007','P007','T007','2024-01-07',4200.00,'Cash','Pending'),
('B008','P008','T008','2024-01-08',3900.00,'Insurance','Paid'),
('B009','P009','T009','2024-01-09',1600.00,'UPI','Paid'),
('B010','P010','T010','2024-01-10',2400.00,'Card','Pending'),

('B011','P011','T011','2024-01-11',3600.00,'Cash','Paid'),
('B012','P012','T012','2024-01-12',4100.00,'Insurance','Pending'),
('B013','P013','T013','2024-01-13',3300.00,'UPI','Paid'),
('B014','P014','T014','2024-01-14',1700.00,'Card','Paid'),
('B015','P015','T015','2024-01-15',2900.00,'Cash','Pending'),
('B016','P016','T016','2024-01-16',12000.00,'Insurance','Paid'),
('B017','P017','T017','2024-01-17',5600.00,'UPI','Pending'),
('B018','P018','T018','2024-01-18',2600.00,'Card','Paid'),
('B019','P019','T019','2024-01-19',1900.00,'Cash','Paid'),
('B020','P020','T020','2024-01-20',2300.00,'Insurance','Pending'),

('B021','P021','T021','2024-01-21',3400.00,'UPI','Paid'),
('B022','P022','T022','2024-01-22',6100.00,'Card','Pending'),
('B023','P023','T023','2024-01-23',3700.00,'Cash','Paid'),
('B024','P024','T024','2024-01-24',1500.00,'Insurance','Paid'),
('B025','P025','T025','2024-01-25',2800.00,'UPI','Pending'),
('B026','P026','T026','2024-01-26',7900.00,'Card','Paid'),
('B027','P027','T027','2024-01-27',3200.00,'Cash','Pending'),
('B028','P028','T028','2024-01-28',2500.00,'Insurance','Paid'),
('B029','P029','T029','2024-01-29',1750.00,'UPI','Paid'),
('B030','P030','T030','2024-01-30',3100.00,'Card','Pending'),

('B031','P031','T031','2024-01-31',3650.00,'Cash','Paid'),
('B032','P032','T032','2024-02-01',4300.00,'Insurance','Pending'),
('B033','P033','T033','2024-02-02',4700.00,'UPI','Paid'),
('B034','P034','T034','2024-02-03',1450.00,'Card','Paid'),
('B035','P035','T035','2024-02-04',2950.00,'Cash','Pending'),
('B036','P036','T036','2024-02-05',9100.00,'Insurance','Paid'),
('B037','P037','T037','2024-02-06',5800.00,'UPI','Pending'),
('B038','P038','T038','2024-02-07',2550.00,'Card','Paid'),
('B039','P039','T039','2024-02-08',1650.00,'Cash','Paid'),
('B040','P040','T040','2024-02-09',2750.00,'Insurance','Pending'),

('B041','P041','T041','2024-02-10',3900.00,'UPI','Paid'),
('B042','P042','T042','2024-02-11',5200.00,'Card','Pending'),
('B043','P043','T043','2024-02-12',4400.00,'Cash','Paid'),
('B044','P044','T044','2024-02-13',1850.00,'Insurance','Paid'),
('B045','P045','T045','2024-02-14',3000.00,'UPI','Pending'),
('B046','P046','T046','2024-02-15',8300.00,'Card','Paid'),
('B047','P047','T047','2024-02-16',6200.00,'Cash','Pending'),
('B048','P048','T048','2024-02-17',2450.00,'Insurance','Paid'),
('B049','P049','T049','2024-02-18',1700.00,'UPI','Paid'),
('B050','P050','T050','2024-02-19',2600.00,'Card','Pending');

SELECT * FROM PATIENTS;

 -- FINDING-(PATIENTS.) --
-- A) PATIENTS ANALYSIS --

--  BUSINESS PROBLEM - (1 HOW MANY PATEINTS REGISTERED IN 2023.) --
--  BUSINESS INSIGHT - (1.Majority of patients were registered in the year 2023. .) --
--  BUSINESS SOLUTION -(1 Analyze yearly registrations to monitor hospital growth.)--

SELECT *FROM 
PATIENTS
WHERE YEAR (REGISTRATION_DATE)= 2023 ;


--  BUSINESS PROBLEM - (2 COUNT NUMBER OF MALES AND FEMALES.) --
--  BUSINESS INSIGHT - (2.Male and female patient distribution is almost balanced. .) --
--  BUSINESS SOLUTION -(2 Understand gender distribution for better healthcare planning..)--

SELECT GENDER ,COUNT(*) AS TOTAL_PATIENTS
FROM PATIENTS
GROUP BY GENDER;


--  BUSINESS PROBLEM - (3 FIND PATIENTS FROM MUMBAI.) --
--  BUSINESS INSIGHT - (3.Mumbai and Pune branches had higher patient registrations. .) --
--  BUSINESS SOLUTION -(3 Identify city-wise patient concentration for targeted services.)--

SELECT FIRST_NAME,LAST_NAME,EMAIL
FROM PATIENTS
WHERE ADDRESS ='MUMBAI';


--  BUSINESS PROBLEM - (4 FIND PATIENTS WITH HEALTH PLUS INSURANCE.) --
--  BUSINESS INSIGHT - (4 HealthPlus insurance was the most commonly used insurance provider..) --
--  BUSINESS SOLUTION -(4 Track insurance provider usage for partnership management..)--

SELECT FIRST_NAME , LAST_NAME ,GENDER,EMAIL
FROM PATIENTS
WHERE INSURANCE_PROVIDER = 'HealthPlus';


--  BUSINESS PROBLEM - (5 FIND PATIENTS WITH DOB ABOVE 1995.) --
--  BUSINESS INSIGHT - (5 Most patients were born after 1995, indicating younger patient records..) --
--  BUSINESS SOLUTION -(5. Analyze age groups to design suitable healthcare programs..)--

SELECT fIRST_NAME ,LAST_NAME, ADDRESS
FROM PATIENTS
WHERE DATE_OF_BIRTH > '1995-01-01';


SELECT*FROM DOCTORS;



-- FINDING-(DOCTORS.) --
-- B) DOCTORS ANALYSIS --

--  BUSINESS PROBLEM - (1 DOCTORS WITH MORE THAN 15YEARS OF EXPERIENCE.) --
--  BUSINESS INSIGHT - (1.Several doctors have more than 15 years of experience .) --
--  BUSINESS SOLUTION -(1.Identify senior doctors for critical treatments and leadership roles..)--


SELECT FIRST_NAME, DOCTOR_ID,SPECIALIZATION,HOSPITAL_BRANCH,Years_experience
FROM DOCTORS
WHERE YEARS_EXPERIENCE >15;

--  BUSINESS PROBLEM - (2 COUNT DOCTORS DEPARTMENT WISE.) --
--  BUSINESS INSIGHT - (2.Cardiology and Neurology departments had experienced specialists.. .) --
--  BUSINESS SOLUTION -(2.Evaluate overall treatment expenditure patterns..)--


SELECT SPECIALIZATION,COUNT(*)
FROM DOCTORS
GROUP BY SPECIALIZATION;

--  BUSINESS PROBLEM - ( 3. HIGHEST EXPERIENCED DOCTOR.) --
--  BUSINESS INSIGHT - (3.Mumbai branch had a higher experienced number of doctors. .) --
--  BUSINESS SOLUTION -(3.Recognize the most experienced medical professional..)--


SELECT* FROM DOCTORS
ORDER BY YEARS_EXPERIENCE DESC LIMIT 1;

--  BUSINESS PROBLEM - (4 DOCTORS IN MUMBAI BRANCH.) --
--  BUSINESS INSIGHT - (4.mumbai branch had a higher experienced number of doctors .) --
--  BUSINESS SOLUTION -(4.Monitor doctor availability at specific branches. .)--


SELECT *
FROM DOCTORS
WHERE HOSPITAL_BRANCH ='MUMBAI BRANCH';

--  BUSINESS PROBLEM - (5 AVERAGE EXPERIENCE DOCTORS.) --
--  BUSINESS INSIGHT - (5.Average doctor experience across departments was above 10 years. .) --
--  BUSINESS SOLUTION -(5.Assess expertise levels within each department. .)--


SELECT SPECIALIZATION ,AVG(YEARS_EXPERIENCE) AS AVG_EXPERIENCE
FROM DOCTORS
GROUP BY SPECIALIZATION;

-- FINDING-(APPOINTMENTS.) --
-- C) APPOINTMENTS ANALYSIS --

--  BUSINESS PROBLEM - ( 1. Count appointments by status.) --
--  BUSINESS INSIGHT - (1.Completed appointments were having the greater count than other two.. .) --
--  BUSINESS SOLUTION -(1.Track appointment completion and pending workloads..)--


SELECT status, COUNT(*) AS total
FROM appointments
GROUP BY status;

--  BUSINESS PROBLEM - ( 2. FIND COMLETED DOCUMENTS.) --
--  BUSINESS INSIGHT - (2.Completed appointments were higher than pending appointments.. .) --
--  BUSINESS SOLUTION -(2.Measure successful patient consultations..)--


SELECT *
FROM appointments
WHERE status = 'Completed';

--  BUSINESS PROBLEM - ( 3. APPOINTMENTS IN FEB 2024.) --
--  BUSINESS INSIGHT - (3.February 2024 showed consistent appointment bookings. .) --
--  BUSINESS SOLUTION -(3.Analyze monthly patient visit trends..)--


SELECT *
FROM appointments
WHERE MONTH(appointment_date) = 2;

--  BUSINESS PROBLEM - ( 4.LESS APPOINTMENTS DATE.) --
--  BUSINESS INSIGHT - (4.Some appointment dates had significantly lower patient traffic.. .) --
--  BUSINESS SOLUTION -(4.Identify low-traffic days for resource optimization..)--


SELECT appointment_date, COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_date
ORDER BY total_appointments asc
LIMIT 1;

--  BUSINESS PROBLEM - ( 5. PENDING APPOINTMENTS.) --
--  BUSINESS INSIGHT - (5.Pending appointments indicate future patient visits.. .) --
--  BUSINESS SOLUTION -(5.Monitor upcoming patient visits and scheduling needs. ..)--


SELECT *
FROM appointments
WHERE status = 'Pending';
 SELECT * FROM APPOINTMENTS;


-- FINDING-(TREATMENTS.) --
-- D) TREATMENTS ANALYSIS -- 


--  BUSINESS PROBLEM - ( 1. Find highest treatment cost.) --
--  BUSINESS INSIGHT - (1.Cardiology treatments had the highest treatment cost. .) --
--  BUSINESS SOLUTION -(1.Identify expensive procedures for cost management.)--


SELECT *
FROM treatments
ORDER BY cost DESC
LIMIT 1;

--  BUSINESS PROBLEM - (2 .AVEGRAGE TREATMENT COST .) --
--  BUSINESS INSIGHT - (2. average treatment cost is above 3000.. .) --
--  BUSINESS SOLUTION -(2.Evaluate overall treatment expenditure patterns.)--


SELECT AVG(cost) AS average_cost
FROM treatments;

--  BUSINESS PROBLEM - (3 .COUNT TREATMENT TYPES.) --
--  BUSINESS INSIGHT - (3 .ECG and physiotherapy treatments were frequently performed. .) --
--  BUSINESS SOLUTION -(3.Determine the most frequently performed treatments..)--


SELECT treatment_type, COUNT(*) AS total
FROM treatments
GROUP BY treatment_type;


--  BUSINESS PROBLEM - (4 .TREATMENT WHICH COSTS ABOVE 5000.) --
--  BUSINESS INSIGHT - (4.Vaccination and pediatric care treatments were comparatively low cost... .) --
--  BUSINESS SOLUTION -(4.Track high-value medical services.)--


SELECT *
FROM treatments
WHERE cost > 5000;

--  BUSINESS PROBLEM - (5.TOTAL REVENUE OF TREATMENT.) --
--  BUSINESS INSIGHT - (5.Total treatment revenue showed strong hospital operational performance .) --
--  BUSINESS SOLUTION -(5.Measure revenue generated from treatments .)--


SELECT SUM(cost) AS total_revenue
FROM treatments;



-- FINDING-(BILLINGS.) --
-- E) BILLING ANALYSIS --

-- BUSINESS PROBLEM - (1. Find total hospital revenue)
--  BUSINESS INSIGHT - (1.Majority of payments were successfully completed .) --
--  BUSINESS SOLUTION -(1.Calculate overall hospital earnings..)--


SELECT SUM(amount) AS total_revenue
FROM billing;

-- BUSINESS PROBLEM -( 2. Find pending payments)
--  BUSINESS INSIGHT - (2.UPI and Card payments were commonly used payment methods .) --
--  BUSINESS SOLUTION -(2.Track outstanding payments for collection follow-up.)--


SELECT *
FROM billing
WHERE payment_status = 'Pending';

-- BUSINESS PROBLEM -( 3. Find revenue by payment method)
--  BUSINESS INSIGHT - (3.Insurance payments covered several expensive treatments. .) --
--  BUSINESS SOLUTION -(3.Analyze preferred payment options among patients.)--


SELECT payment_method, SUM(amount) AS total_amount
FROM billing
GROUP BY payment_method;

-- BUSINESS PROBLEM -( 4. Find highest bill amount)
--  BUSINESS INSIGHT - (4.Highest bill amount was generated from heart-related treatments. .) --
--  BUSINESS SOLUTION -(4.Identify treatments generating maximum billing revenue.)--


SELECT MAX(amount) AS highest_bill
FROM billing;

--  BUSINESS PROBLEM -(5. Count paid and pending bills)
--  BUSINESS INSIGHT - (5.Pending bills indicate opportunities for payment follow-up. .) --
--  BUSINESS SOLUTION -(5.Monitor payment completion status...)--


SELECT payment_status, COUNT(*) AS total
FROM billing
GROUP BY payment_status;

SELECT * FROM BILLING;



-- FINDING-(DIFFERENT CATEGORIES/ join anaylsis.) --

--  BUSINESS PROBLEM (1. Show patient names with doctor names)
--  BUSINESS INSIGHT - (1.Multi-table analysis improved accuracy in hospital record management... .) --
--  BUSINESS SOLUTION -(1.Maintain accurate patient-doctor relationship records.)--

SELECT 
p.first_name AS patient_name,
d.first_name AS doctor_name,
a.appointment_date
FROM appointments a
JOIN patients p
ON a.patient_id = p.patient_id
JOIN doctors d
ON a.doctor_id = d.doctor_id;

-- BUSINESS PROBLEM( 2. Show patient treatment details)
--  BUSINESS INSIGHT - (2.SQL JOIN operations reduced duplicate data and improved data connectivity.. .) --
--  BUSINESS SOLUTION -(2.Access complete treatment history for each patient..)--

SELECT 
p.first_name,
t.treatment_type,
t.cost
FROM patients p
JOIN appointments a
ON p.patient_id = a.patient_id
JOIN treatments t
ON a.appointment_id = t.appointment_id;

-- BUSINESS PROBLEM ( 3. Find total revenue generated by each doctor)
--  BUSINESS INSIGHT - (3.Doctor-wise revenue analysis identified high-performing doctors. .) --
--  BUSINESS SOLUTION -(3.Evaluate doctor-wise financial contribution..)--

SELECT 
d.first_name,
SUM(b.amount) AS total_revenue
FROM doctors d
JOIN appointments a
ON d.doctor_id = a.doctor_id
JOIN treatments t
ON a.appointment_id = t.appointment_id
JOIN billing b
ON t.treatment_id = b.treatment_id
GROUP BY d.first_name;

-- BUSINESS PROBLEM( 4. Find patients with unpaid bills)
--  BUSINESS INSIGHT - (4. Patients with pending bills were easily tracked using JOIN operations..) --
--  BUSINESS SOLUTION -(4.Identify patients requiring payment follow-up..)--


SELECT 
p.first_name,
b.amount,
b.payment_status
FROM patients p
JOIN billing b
ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Pending';

-- BUSINESS PROBLEM (5. Find most visited department)
--  BUSINESS INSIGHT - (5.Cardiology department had the highest patient visits. .) --
--  BUSINESS SOLUTION -(5.Determine departments with highest patient demand. ..)--


SELECT 
d.specialization,
COUNT(a.appointment_id) AS total_visits
FROM doctors d
JOIN appointments a
ON d.doctor_id = a.doctor_id
GROUP BY d.specialization
ORDER BY total_visits DESC;


-- BUSINESS PROBLEM (6. WHICH PATIENT IS SEEING WHICH DOCTOR)
--  BUSINESS INSIGHT - (6.The project successfully showed which patient consulted which doctor. .) --
--  BUSINESS SOLUTION -(6Improve appointment and consultation tracking...)--


SELECT PATIENTS.FIRST_NAME AS PATIENTS_NAME,
DOCTORS.FIRST_NAME  AS DOCTORS_NAME ,APPOINTMENT_DATE AS APPOINTMENTS
FROM APPOINTMENTS
JOIN PATIENTS ON APPOINTMENTS.PATIENT_ID = PATIENTS. PATIENT_ID
JOIN DOCTORS ON DOCTORS.DOCTOR_ID = APPOINTMENTS. DOCTOR_ID;

-- BUSINESS PROBLEM (7.Rank doctors based on treatment revenue generated.)
-- BUSINESS PROBLEM (7.Doctors handling expensive treatments contributed higher hospital revenue.)
--  BUSINESS SOLUTION -(7.Identify senior medical professionals based on experience..)--


SELECT 
first_name,
specialization,
years_experience,
RANK() OVER(ORDER BY years_experience DESC) AS doctor_rank
FROM doctors;

-- BUSINESS PROBLEM (8.Rank doctors based on treatment revenue generated..)
-- BUSINESS PROBLEM (8.Highly experienced doctors generated higher hospital revenue..)
--  BUSINESS SOLUTION -(8.Evaluate doctors based on revenue contribution..)--


SELECT 
d.first_name,
d.specialization,
SUM(b.amount) AS total_revenue,
RANK() OVER(
ORDER BY SUM(b.amount) DESC
) AS revenue_rank
FROM doctors d
JOIN appointments a
ON d.doctor_id = a.doctor_id
JOIN treatments t
ON a.appointment_id = t.appointment_id
JOIN billing b
ON t.treatment_id = b.treatment_id
GROUP BY d.first_name,d.specialization;



--  OVER ALL BUSINESS INSIGHT  --

--  BUSINESS INSIGHT  --(Cardiology department was the most visited department.)
--  BUSINESS INSIGHT - (Doctors handling heart-related treatments generated maximum revenue).
--  BUSINESS INSIGHT - (JOIN operations helped combine patient, doctor, treatment, and billing data effectively).
--  BUSINESS INSIGHT - (The database structure improved hospital data organization and management.)
--  BUSINESS INSIGHT - (SQL analysis helped identify revenue trends, patient behavior, and operational efficiency).; 


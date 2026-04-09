drop table if exists clinics;
drop table if exists customer;
drop table if exists clinic_sales;
drop table if exists expenses;

CREATE TABLE clinics (
    cid TEXT,
    clinic_name TEXT,
    city TEXT,
    state TEXT,
    country TEXT
);

INSERT INTO clinics VALUES
('C1', 'Apollo Clinic', 'Hyderabad', 'Telangana', 'India'),
('C2', 'Care Clinic', 'Hyderabad', 'Telangana', 'India'),
('C3', 'Fortis Clinic', 'Mumbai', 'Maharashtra', 'India'),
('C4', 'MedPlus Clinic', 'Mumbai', 'Maharashtra', 'India'),
('C5', 'City Health', 'Bangalore', 'Karnataka', 'India');

CREATE TABLE customer (
    uid TEXT,
    name TEXT,
    mobile TEXT
);

INSERT INTO customer VALUES
('U1', 'Rahul', '9000000001'),
('U2', 'Sneha', '9000000002'),
('U3', 'Kiran', '9000000003'),
('U4', 'Anjali', '9000000004'),
('U5', 'Vikram', '9000000005');

CREATE TABLE clinic_sales (
    oid TEXT,
    uid TEXT,
    cid TEXT,
    amount INT,
    datetime DATETIME,
    sales_channel TEXT
);

INSERT INTO clinic_sales VALUES

-- OCT
('O1', 'U1', 'C1', 5000, '2021-10-05 10:00:00', 'Online'),
('O2', 'U2', 'C2', 7000, '2021-10-10 12:00:00', 'Offline'),
('O3', 'U3', 'C3', 9000, '2021-10-15 14:00:00', 'Online'),

-- NOV
('O4', 'U1', 'C1', 8000, '2021-11-05 11:00:00', 'Online'),
('O5', 'U2', 'C2', 6000, '2021-11-08 13:00:00', 'Offline'),
('O6', 'U3', 'C3', 10000, '2021-11-12 15:00:00', 'Online'),
('O7', 'U4', 'C4', 12000, '2021-11-18 17:00:00', 'Offline'),
('O8', 'U5', 'C5', 7000, '2021-11-20 18:00:00', 'Online'),

-- DEC
('O9', 'U1', 'C1', 9000, '2021-12-01 10:00:00', 'Online'),
('O10', 'U2', 'C2', 5000, '2021-12-05 12:00:00', 'Offline'),
('O11', 'U3', 'C3', 11000, '2021-12-10 14:00:00', 'Online');

CREATE TABLE expenses (
    eid TEXT,
    cid TEXT,
    description TEXT,
    amount INT,
    datetime DATETIME
);

INSERT INTO expenses VALUES

-- OCT
('E1', 'C1', 'Medicines', 2000, '2021-10-05 08:00:00'),
('E2', 'C2', 'Equipment', 3000, '2021-10-10 09:00:00'),
('E3', 'C3', 'Staff', 4000, '2021-10-15 10:00:00'),

-- NOV
('E4', 'C1', 'Salary', 3000, '2021-11-05 09:00:00'),
('E5', 'C2', 'Rent', 2500, '2021-11-08 10:00:00'),
('E6', 'C3', 'Maintenance', 5000, '2021-11-12 11:00:00'),
('E7', 'C4', 'Utilities', 6000, '2021-11-18 12:00:00'),
('E8', 'C5', 'Supplies', 2000, '2021-11-20 13:00:00'),

-- DEC
('E9', 'C1', 'Salary', 3500, '2021-12-01 09:00:00'),
('E10', 'C2', 'Rent', 3000, '2021-12-05 10:00:00'),
('E11', 'C3', 'Maintenance', 4500, '2021-12-10 11:00:00');
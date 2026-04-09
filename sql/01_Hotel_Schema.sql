drop TABLE users;
drop TABLE bookings;
drop TABLE items;
drop TABLE booking_commercials;

CREATE TABLE users (
    user_id TEXT,
    name TEXT,
    phone_number TEXT,
    mail_id TEXT,
    billing_address TEXT
);

INSERT INTO users VALUES
('U1', 'John', '9000000001', 'john@mail.com', 'City A'),
('U2', 'Alice', '9000000002', 'alice@mail.com', 'City B'),
('U3', 'Bob', '9000000003', 'bob@mail.com', 'City C'),
('U4', 'David', '9000000004', 'david@mail.com', 'City D'),
('U5', 'Emma', '9000000005', 'emma@mail.com', 'City E');

CREATE TABLE bookings (
    booking_id TEXT,
    booking_date DATETIME,
    room_no TEXT,
    user_id TEXT
);

INSERT INTO bookings VALUES
('B1', '2021-10-01 10:00:00', 'R101', 'U1'),
('B2', '2021-10-05 12:00:00', 'R102', 'U2'),
('B3', '2021-10-10 14:00:00', 'R103', 'U3'),

('B4', '2021-11-02 11:00:00', 'R104', 'U1'),
('B5', '2021-11-08 15:00:00', 'R105', 'U2'),
('B6', '2021-11-15 16:00:00', 'R106', 'U3'),
('B7', '2021-11-20 18:00:00', 'R107', 'U4'),

('B8', '2021-12-01 09:00:00', 'R108', 'U5'),
('B9', '2021-12-10 13:00:00', 'R109', 'U1');

CREATE TABLE items (
    item_id TEXT,
    item_name TEXT,
    item_rate INTEGER
);

INSERT INTO items VALUES
('I1', 'Tawa Paratha', 20),
('I2', 'Mix Veg', 80),
('I3', 'Paneer', 150),
('I4', 'Biryani', 200),
('I5', 'Tea', 10),
('I6', 'Coffee', 15);

CREATE TABLE booking_commercials (
    id TEXT,
    booking_id TEXT,
    bill_id TEXT,
    bill_date DATETIME,
    item_id TEXT,
    item_quantity REAL
);

INSERT INTO booking_commercials VALUES

-- OCTOBER
('C1', 'B1', 'BL1', '2021-10-01 12:00:00', 'I1', 10),
('C2', 'B1', 'BL1', '2021-10-01 12:00:00', 'I4', 5),

('C3', 'B2', 'BL2', '2021-10-05 14:00:00', 'I2', 8),
('C4', 'B2', 'BL2', '2021-10-05 14:00:00', 'I3', 4),

('C5', 'B3', 'BL3', '2021-10-10 16:00:00', 'I5', 20),
('C6', 'B3', 'BL3', '2021-10-10 16:00:00', 'I6', 10),

-- NOVEMBER
('C7', 'B4', 'BL4', '2021-11-02 13:00:00', 'I1', 15),
('C8', 'B4', 'BL4', '2021-11-02 13:00:00', 'I3', 5),

('C9', 'B5', 'BL5', '2021-11-08 17:00:00', 'I2', 10),
('C10', 'B5', 'BL5', '2021-11-08 17:00:00', 'I4', 6),

('C11', 'B6', 'BL6', '2021-11-15 18:00:00', 'I3', 8),
('C12', 'B6', 'BL6', '2021-11-15 18:00:00', 'I4', 4),

('C13', 'B7', 'BL7', '2021-11-20 20:00:00', 'I5', 25),
('C14', 'B7', 'BL7', '2021-11-20 20:00:00', 'I6', 15),

-- DECEMBER
('C15', 'B8', 'BL8', '2021-12-01 11:00:00', 'I1', 12),
('C16', 'B8', 'BL8', '2021-12-01 11:00:00', 'I2', 6),

('C17', 'B9', 'BL9', '2021-12-10 15:00:00', 'I3', 7),
('C18', 'B9', 'BL9', '2021-12-10 15:00:00', 'I4', 3);


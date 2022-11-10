INSERT INTO Amenities(ameID, ameType) VALUES
(1, "Microwave"),
(2, "Jacuzzi"),
(3, "Refrigerator"),
(4, "Oven");

-- Import data from local file: WE-Java_Training/Databases/Guest.csv

INSERT INTO Guests(guestID, guestName, address, city, state, zip, phone) VALUES
        (1,	'Mack Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', 51501, '(291) 553-0508'),
        (2,	'Bettyann Seery', '750 Wintergreen Dr.',	'Wasilla',	'AK',	99654,	'(478) 277-9632'),
        (3,	'Duane Cullison',	'9662 Foxrun Lane',	'Harlingen',	'TX',	78552,	'(308) 494-0198'),
        (4,	'Karie Yang',	'9378 W. Augusta Ave.',	'West Deptford',	'NJ',	8096,	'(214) 730-0298'),
        (5,	'Aurore Lipton',	'762 Wild Rose Street',	'Saginaw',	'MI',	48601,	'(377) 507-0974'),
        (6,	'Zachery Luechtefeld',	'7 Poplar Dr.',	'Arvada',	'CO',	80003,	'(814) 485-2615'),
        (7,	'Jeremiah Pendergrass',	'70 Oakwood St.',	'Zion',	'IL',	60099,	'(279) 491-0960'),
        (8,	'Walter Holaway',	'7556 Arrowhead St.',	'Cumberland',	'RI',	2864,	'(446) 396-6785'),
        (9,	'Wilfred Vise',	'77 West Surrey Street',	'Oswego',	'NY',	13126,	'(834) 727-1001'),
        (10, 'Maritza Tilton',	'939 Linda Rd.',	'Burke',	'VA',	22015,	'(446) 351-6860'),
        (11, 'Joleen Tison',	'87 Queen St.',	'Drexel Hill',	'PA',	19026,	'(231) 893-2755'),
        (12,	'Thu Phan', '12700 Preston Rd.', 'Dallas', 'TX', 75230,	'(972) 701-1000');


INSERT INTO Rooms(roomID, roomType, adaAccess, standardOcc, maxOcc, basePrice, extraPerson) VALUES
        (201, 'Double',	FALSE, 2, 4, 199.99, 10.00),
        (202, 'Double',	TRUE, 2, 4, 174.99, 10.00),
        (203, 'Double',	FALSE, 2, 4, 199.99, 10.00),
        (204, 'Double',	TRUE, 2, 4, 174.99, 10.00),
        (205, 'Single',	FALSE, 2, 2, 174.99, NULL),
        (206, 'Single',	TRUE, 2, 2, 149.99, NULL),
        (207, 'Single',	FALSE, 2, 2, 174.99, NULL),
        (208, 'Single',	TRUE, 2, 2, 149.99, NULL),
        (301, 'Double',	FALSE, 2, 4, 199.99, 10.00),
        (302, 'Double',	TRUE, 2, 4, 174.99, 10.00),
        (303, 'Double',	FALSE, 2, 4, 199.99, 10.00),
        (304, 'Double',	TRUE, 2, 4, 174.99, 10.00),
        (305, 'Single',	FALSE, 2, 2, 174.99, NULL),
        (306, 'Single',	TRUE, 2, 2, 149.99, NULL),
        (307, 'Single',	FALSE, 2, 2, 174.99, NULL),
        (308, 'Single',	TRUE, 2, 2, 149.99, NULL),
        (401, 'Suite', TRUE, 3,	8, 399.99, 20.00),
        (402, 'Suite', TRUE, 3,	8, 399.99, 20.00);


INSERT INTO Room_Amenity(roomID, ameID) VALUES
        (201, 1),
        (201, 2),
        (202, 3),
        (203, 1),
        (203, 2),
        (204, 3),
        (205, 1),
        (205, 3),
        (205, 2),
        (206, 1),
        (206, 3),
        (207, 1),
        (207, 2),
        (207, 3),
        (208, 1),
        (208, 3),
        (301, 1),
        (301, 2),
        (302, 3),
        (303, 1),
        (303, 2),
        (304, 3),
        (305, 1),
        (305, 3),
        (305, 2),
        (306, 1),
        (306, 3),
        (307, 1),
        (307, 2),
        (307, 3),
        (308, 1),
        (308, 3),
        (401, 1),
        (401, 3),
        (401, 4),
        (402, 1),
        (402, 3),
        (402, 4);


INSERT INTO Reservations(reservID, roomID, guestID, numAdults, numChildren, startDate, endDate, totalCost) VALUES
        (1, 308, 1, 1, 0, '2023-02-02',	'2023-02-04', 299.98),
        (2, 203, 2, 2, 1, '2023-02-05',	'2023-02-10', 999.95),
        (3, 305, 3, 2, 0, '2023-02-22',	'2023-02-24', 349.98),
        (4, 201, 4, 2, 2, '2023-03-06',	'2023-03-07', 199.99),
        (5, 307, 12, 1,	1, '2023-03-17', '2023-03-20', 524.97),
        (6, 302, 5, 3, 0, '2023-03-18',	'2023-03-23', 924.95),
        (7, 202, 6, 2, 2, '2023-03-29',	'2023-03-31', 349.98),
        (8, 304, 7, 2, 0, '2023-03-31',	'2023-04-05', 874.95),
        (9, 301, 8, 1, 0, '2023-04-09',	'2023-04-13', 799.96),
        (10, 207, 9, 1,	1, '2023-04-23', '2023-04-24', 174.99),
        (11, 401, 10, 2, 4, '2023-05-30', '2023-06-02',	1199.97),
        (12, 206, 11, 2, 0, '2023-06-10', '2023-06-14',	599.96),
        (13, 208, 11, 1, 0, '2023-06-10', '2023-06-14',	599.96),
        (14, 304, 5, 3, 0, '2023-06-17', '2023-06-18', 184.99),
        (15, 205, 12, 2, 0, '2023-06-28', '2023-07-02', 699.96),
        (16, 204, 8, 3,	1, '2023-07-13', '2023-07-14', 184.99),
        (17, 401, 9, 4,	2, '2023-07-18', '2023-07-21', 1259.97),
        (18, 303, 2, 2,	1, '2023-07-28', '2023-07-29', 199.99),
        (19, 305, 2, 1,	0, '2023-08-30', '2023-09-01', 349.98),
        (20, 208, 1, 2,	0, '2023-09-16', '2023-09-17', 149.99),
        (21, 203, 4, 2,	2, '2023-09-13', '2023-09-15', 399.98),
        (22, 401, 3, 2,	2, '2023-11-22', '2023-11-25', 1199.97),
        (23, 206, 1, 2,	0, '2023-11-22', '2023-11-25', 449.97),
        (24, 301, 1, 2,	2, '2023-11-22', '2023-11-25', 599.97),
        (25, 302, 10, 2, 0, '2023-12-24', '2023-12-28', 699.96);

-- Deleting data related to Jeremiah Pendergrass
-- Deleting data should start with records that reference Jeremiah Pendergrass using a foreign key and then delete the record from the guest table as the last step

DELETE FROM Reservations
WHERE guestID = 7;

DELETE FROM Guests
WHERE guestID = 7;
-- 1. Write a query that returns a list of reservations that end in July 2023, including the name of the guest, the room numbers, and the reservation dates
/*
returned 4 records:

Thu Phan	205	2023-06-28	2023-07-02
Walter Holaway	204	2023-07-13	2023-07-14
Wilfred Vise	401	2023-07-18	2023-07-21
Bettyann Seery	303	2023-07-28	2023-07-29
*/
USE afloralhotelinprovence;

SELECT * FROM afloralhotelinprovence;
SELECT guestName GUEST_NAME, roomID ROOM_NUMBER, startDate BEGIN_DATE, endDate END_DATE
FROM  Reservations r
JOIN Guests g
ON r.guestID = g.guestID
WHERE endDate between '2023-07-01' and '2023-07-31' ;


-- 2. Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservations

/*
This query returned 11 rows (records)

Karie Yang,	201, 2023-03-06, 2023-03-07
Bettyann Seery,	203, 2023-02-05, 2023-02-10
Karie Yang,	203, 2023-09-13, 2023-09-15
Thu Phan, 205, 2023-06-28, 2023-07-02
Wilfred Vise, 207, 2023-04-23, 2023-04-24
Walter Holaway,	301, 2023-04-09, 2023-04-13
Mack Simmer, 301, 2023-11-22, 2023-11-25
Bettyann Seery,	303, 2023-07-28, 2023-07-29
Duane Cullison,	305, 2023-02-22, 2023-02-24
Bettyann Seery,	305, 2023-08-30, 2023-09-01
Thu Phan, 307, 2023-03-17,	2023-03-20

*/

SELECT * FROM afloralhotelinprovence;
SELECT guestName GUEST_NAME, r.roomID ROOM_NUMBER, startDate BEGIN_DATE, endDate END_DATE
FROM Reservations r 
JOIN Guests g 
ON r.guestID = g.guestID
JOIN Rooms ro 
ON r.roomID = ro.roomID
JOIN Room_Amenity rm 
ON rm.roomID = ro.roomID
WHERE ameID = 2;

-- 3. Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the rooms reserved, the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.)

/*
Selected guest: Aurore Lipton, returned 2 records
Aurore Lipton	302	2023-03-18	10
Aurore Lipton	304	2023-06-17	10

*/
SELECT * FROM afloralhotelinprovence;

SELECT guestName GUEST_NAME, r.roomID ROOM_NUMBER, startDate BEGIN_DATE, extraPerson EXTRA_PERSON
FROM Reservations r 
JOIN Guests g ON r.guestID = g.guestID
JOIN Rooms ro ON r.roomID = ro.roomID
WHERE g.guestID = 5;


-- 4. Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. The results should include all rooms, whether or not there is a reservation associated with the room
/*
IFNULL() function returns a specific value, syntax: IFNULL(expression, alt_value)

This query returns 26 rows (records):

201	4	199.99
202	7	349.98
203	2	999.95
203	21	399.98
204	16	184.99
205	15	699.96
206	12	599.96
206	23	449.97
207	10	174.99
208	13	599.96
208	20	149.99
301	9	799.96
301	24	599.97
302	6	924.95
302	25	699.96
303	18	199.99
304	14	184.99
305	3	349.98
305	19	349.98
306	NULL NULL	
307	5	524.97
308	1	299.98
401	11	1199.97
401	17	1259.97
401	22	1199.97
402	NULL NULL	

*/
SELECT * FROM afloralhotelinprovence;
SELECT IFNULL(r.roomID, ro.roomID) ROOM_NUMBER, reservID RESERVATION_ID, totalCost TOTAL_COST
FROM Reservations r 
RIGHT JOIN Rooms ro 
ON r.roomID = ro.roomID;

-- 5. Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in April 2023.

-- 1 result returned: 301	4	2023-04-09

SELECT * FROM afloralhotelinprovence;
SELECT ro.roomID ROOM_NUMBER, ro.maxOcc CAPACITY, startDate BEGIN_DATE
FROM Rooms ro
JOIN Reservations r 
ON r.roomID = ro.roomID
WHERE maxOcc >= 3 AND startDate between '2023-04-01' and '2023-04-30';

-- 6. Write a query that returns a list of all guest names and the number of reservations per guest, sorted starting with the guest with the most reservations and then by the guest's last name.

/*
This query returned 11 records:

Mack Simmer	    4
Bettyann Seery	3
Duane Cullison	2
Karie Yang	    2
Aurore Lipton	2
Walter Holaway	2
Wilfred Vise	2
Maritza Tilton	2
Joleen Tison	2
Thu Phan	    2
Zachery Luechtefeld	    1

*/

SELECT * FROM afloralhotelinprovence;
SELECT guestName GUEST_NAME, COUNT(r.guestID) NUMBER_OF_RESERVATIONS
FROM Reservations r 
JOIN Guests g
ON r.guestID = g.guestID
GROUP BY g.guestID
ORDER BY NUMBER_OF_RESERVATIONS DESC;


-- 7. Write a query that displays the name, address, and phone number of a guest based on their phone number. (choose a phone number from the existing data.)
/*
Selected phone number (814) 485-2615, result:

Zachery Luechtefeld	7 Poplar Dr.	Arvada	CO	80003	(814) 485-2615

*/

SELECT * FROM afloralhotelinprovence;
SELECT guestName GUEST_NAME, address ADDRESS, city CITY, state STATE, zip ZIPCODE, phone PHONE 
FROM Guests
WHERE phone = '(814) 485-2615';

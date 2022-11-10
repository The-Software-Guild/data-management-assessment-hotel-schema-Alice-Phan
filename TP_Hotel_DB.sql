DROP DATABASE IF EXISTS AFloralHotelInProvence;
CREATE DATABASE AFloralHotelInProvence;

USE AFloralHotelInProvence;
CREATE TABLE Guests(
    guestID INT PRIMARY KEY auto_increment NOT NULL,
    guestName VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(20),
    state VARCHAR(2),
    zip CHAR(5),
    phone CHAR(20)
);

CREATE TABLE Rooms(
    roomID INT PRIMARY KEY NOT NULL,
    roomType ENUM('DOUBLE', 'SINGLE', 'SUITE'),
    adaAccess BOOLEAN NOT NULL,
    standardOcc INT,
    maxOcc INT,
    basePrice DECIMAL(10,2),
    extraPerson DECIMAL(10,2) NULL

);


CREATE TABLE Reservations(
    reservID INT PRIMARY KEY auto_increment NOT NULL,
    roomID INT NOT NULL,
    guestID INT NOT NULL,
    numAdults INT,
    numChildren INT,
    startDate DATE,
    endDate DATE,
    totalCost DECIMAL(15,2),
    FOREIGN KEY (roomID) REFERENCES Rooms(roomID),
    FOREIGN KEY (guestID) REFERENCES Guests(guestID)
    
);


CREATE TABLE Amenities(
    ameID INT PRIMARY KEY auto_increment NOT NULL,
    ameType CHAR(30)
);

CREATE TABLE Room_Amenity(
    roomID INT,
    ameID INT,
    PRIMARY KEY (roomID, ameID),
    FOREIGN KEY (roomID) REFERENCES Rooms(roomID),
    FOREIGN KEY (ameID) REFERENCES Amenities(ameID)

);
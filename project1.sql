CREATE DATABASE IF NOT EXISTS CarRentals_db;

CREATE TABLE dm_date (
    Date_id SERIAL PRIMARY KEY,
    pickup_date DATE NOT NULL,
    Year_pickup INT NOT NULL,
    Month_pickup INT NOT NULL,
    Day_pickup INT NOT NULL,
    Return_date DATE NULL
);


CREATE TABLE dm_renter(
    renter_id SERIAL PRIMARY KEY,
    RenterName VARCHAR(250),
    RenterEmail VARCHAR(250),
    RentersPhone VARCHAR(50)
);

CREATE TABLE dm_vehicle(
    Car_id SERIAL PRIMARY KEY,
    CarModel VARCHAR(100),
    CarRating VARCHAR(10),
    isCarAvailForRent VARCHAR(10),
    TotalRentalHours VARCHAR(10)
);

CREATE TABLE ft_CarRentals(
   rental_id SERIAL PRIMARY KEY,
   carCostPrice DECIMAL(7,2),
   pricePerHour DECIMAL(7,2),
   renter_id INTEGER REFERENCES dm_renter(renter_id),
   vehicle_id INTEGER REFERENCES dm_vehicle(vehicle_id),
   date_id INTEGER REFERENCES dm_date(date_id)
);
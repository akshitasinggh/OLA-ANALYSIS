create database ola;
use ola;
 #1. Retrieve all successful BOOKING:
 SELECT * FROM BOOKING
 WHERE Booking_Status = 'Success';
 # 2. Find the average ride distance for each vehicle type:
 SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM booking GROUP BY
 Vehicle_Type;
  #3. Get the total number of cancelled rides by customers:
 SELECT COUNT(*) FROM booking WHERE Booking_Status = 'cancelled by Customer';
 # 4. List the top 5 customers who booked the highest number of rides:
 SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM booking GROUP BY
 Customer_ID ORDER BY total_rides DESC LIMIT 5;
 # 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 SELECT COUNT(*) FROM booking WHERE cancelled_Rides_by_Driver = 'Personal & Car
 related issue';
 # 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
 booking WHERE Vehicle_Type = 'Prime Sedan';
 #8. Find the average customer rating per vehicle type:
 SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM booking
 GROUP BY Vehicle_Type;
# 9. Calculate the total booking value of rides completed successfully:
 SELECT SUM(Booking_Value) as total_successful_value FROM booking WHERE
 Booking_Status = 'Success';
 #10. List all incomplete rides along with the reason:
 SELECT Booking_ID, Incomplete_Rides_Reason FROM booking WHERE Incomplete_Rides =
 'Yes';

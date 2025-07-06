-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

-- 2. Window Function: Rank properties based on total bookings
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM Booking
GROUP BY property_id;

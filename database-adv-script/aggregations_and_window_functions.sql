-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

-- 2. Window Function: Rank properties using ROW_NUMBER based on booking count
SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM Booking
    GROUP BY property_id
) AS property_bookings;

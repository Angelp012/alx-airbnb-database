-- find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.
SELECT u.user_id, 
	u.first_name, 
	u.last_name, 
	COUNT(b.booking_id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name;


-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have-- property_popularity_ranking.sql
SELECT 
    p.property_id,
    p.name AS property_name,
    p.location,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS popularity_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_num
FROM 
    Property p
LEFT JOIN 
    Booking b ON p.property_id = b.property_id
GROUP BY 
    p.property_id, p.name, p.location
ORDER BY 
    total_bookings DESC;

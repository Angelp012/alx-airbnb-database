-- INNER JOIN: All bookings and their respective users
SELECT b.booking_id, b.start_date, b.end_date, u.first_name, u.last_name
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- LEFT JOIN: All properties and their reviews (including properties with no reviews)
SELECT p.property_id, p.name AS property_name, r.rating, r.comment
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id
ORDER BY p.property_id;

-- FULL OUTER JOIN: All users and all bookings, even if unlinked
SELECT u.user_id, u.first_name, b.booking_id, b.start_date
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id
ORDER BY u.user_id;

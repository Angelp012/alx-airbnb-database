--LEFT JOIN
SELECT 
    Property.property_id,
    Property.name,
    Review.rating,
    Review.comment
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id;

--INNER JOIN
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    User.first_name,
    User.email
FROM Booking
INNER JOIN User ON Booking.user_id = User.user_id;
Shows bookings and who made them

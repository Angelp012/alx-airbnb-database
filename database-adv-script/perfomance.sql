-- Initial query with WHERE and AND clause
EXPLAIN ANALYZE
SELECT b.booking_id, b.start_date, b.end_date, b.total_price, b.status,
       u.first_name, u.last_name, u.email,
       p.name AS property_name, p.location, p.pricepernight,
       pay.amount, pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON pay.booking_id = b.booking_id
WHERE b.status = 'confirmed' AND b.start_date >= '2025-01-01';

-- Refactored query with same filter logic and LEFT JOIN on Payment
EXPLAIN ANALYZE
SELECT b.booking_id, b.start_date, b.end_date, b.total_price, b.status,
       u.first_name, u.last_name, u.email,
       p.name AS property_name, p.location, p.pricepernight,
       pay.amount, pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id
WHERE b.status = 'confirmed' AND b.start_date >= '2025-01-01';

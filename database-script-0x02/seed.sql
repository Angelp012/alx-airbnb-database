-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
  ('11', 'Angel', 'Smith', 'angelsmith@gmail.com', 'hashed_pw1', '0714445678', 'guest', CURRENT_TIMESTAMP),
  ('2', 'Jane', 'Johnson', 'janedoe@gmail.com', 'hashed_pw2', '0723458889', 'host', CURRENT_TIMESTAMP);

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
  ('367', '2', 'Cozy Apartment', 'A lovely apartment in the city center.', 'Nairobi', 3500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
  ('444', '367', '11', '2025-07-01', '2025-07-05', 14000.00, 'confirmed', CURRENT_TIMESTAMP);

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
  ('543', '444', 14000.00, CURRENT_TIMESTAMP, 'mpesa');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
  ('223', '367', '11', 5, 'Great stay! Very clean and central.', CURRENT_TIMESTAMP);

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
  ('777', '11', '2', 'Hi, is the apartment available on July 1st?', CURRENT_TIMESTAMP);

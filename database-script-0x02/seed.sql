/*
  SQL script to populate the database with sample data
 */

-- Insert Users
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role) VALUES
('11111111-1111-1111-1111-111111111111','Alice','Smith','alice@example.com','hash_password1','+1234567890','guest'),
('22222222-2222-2222-2222-222222222222','Bob','Johnson','bob@example.com','hash_password2','+1987654321','host'),
('33333333-3333-3333-3333-333333333333','Carol','Williams','carol@example.com','hash_password3',NULL,'host'),
('44444444-4444-4444-4444-444444444444','Dave','Brown','dave@example.com','hash_password4','+1122334455','admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight) VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa','22222222-2222-2222-2222-222222222222','Sunny Apartment','A bright and modern apartment in downtown.','New York, NY',150.00),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb','22222222-2222-2222-2222-222222222222','Cozy Cottage','A quaint countryside cottage with a fireplace.','Asheville, NC',120.00),
('cccccccc-cccc-cccc-cccc-cccccccccccc','33333333-3333-3333-3333-333333333333','Beach House','Oceanfront property with private beach access.','Santa Monica, CA',300.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status) VALUES
('dddddddd-dddd-dddd-dddd-dddddddddddd','aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa','11111111-1111-1111-1111-111111111111','2025-06-01','2025-06-05',600.00,'pending'),
('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee','bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb','11111111-1111-1111-1111-111111111111','2025-07-10','2025-07-15',600.00,'confirmed');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method) VALUES
('ffffffff-ffff-ffff-ffff-ffffffffffff','eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee',600.00,'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment) VALUES
('99999999-9999-9999-9999-999999999999','bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb','11111111-1111-1111-1111-111111111111',5,'Lovely stay! The cottage was cozy and hosts were very welcoming.'),
('aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee','cccccccc-cccc-cccc-cccc-cccccccccccc','11111111-1111-1111-1111-111111111111',4,'Great view and location, but the Wi-Fi was a bit slow.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body) VALUES
('12345678-1234-1234-1234-123456789012','11111111-1111-1111-1111-111111111111','22222222-2222-2222-2222-222222222222','Hi Bob, I have a question about check-in time.'),
('21098765-4321-4321-4321-210987654321','22222222-2222-2222-2222-222222222222','11111111-1111-1111-1111-111111111111','Hi Alice, check-in is after 3 PM. Let me know if you need anything else.');


-- Initial complex query
EXPLAIN ANALYZE
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,

    "User".user_id,
    "User".first_name,
    "User".last_name,
    "User".email,

    Property.property_id,
    Property.name AS property_name,
    Property.description,

    Payment.payment_id,
    Payment.amount,
    Payment.payment_date,
    Payment.status

FROM Booking
JOIN "User" ON Booking.user_id = "User".user_id
JOIN Property ON Booking.property_id = Property.property_id
JOIN Payment ON Booking.booking_id = Payment.booking_id
WHERE Booking.start_date >= '2024-01-01'
  AND Payment.status = 'completed';


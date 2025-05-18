SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM Booking
GROUP BY property_id;


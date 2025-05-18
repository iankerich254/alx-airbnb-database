-- Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

-- Ranking properties using ROW_NUMBER()
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number_rank
FROM Booking
GROUP BY property_id;

-- Ranking properties using RANK()
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_position
FROM Booking
GROUP BY property_id;


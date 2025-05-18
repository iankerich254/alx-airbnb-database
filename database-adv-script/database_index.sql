-- Index for joining and filtering on user_id in Booking
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index for joining and filtering on property_id in Booking
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index for joining and filtering on property_id in Review
CREATE INDEX idx_review_property_id ON Review(property_id);

-- Index for user_id in User (quoted because User is a reserved keyword)
CREATE INDEX idx_user_user_id ON "User"(user_id);

-- Index for property_id in Property
CREATE INDEX idx_property_property_id ON Property(property_id);

-- Analyze performance of a commonly used query
EXPLAIN ANALYZE
SELECT user_id, COUNT(*) 
FROM Booking 
GROUP BY user_id;
-- Index for joining and filtering on user_id in Booking
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index for joining and filtering on property_id in Booking
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index for joining and filtering on property_id in Review
CREATE INDEX idx_review_property_id ON Review(property_id);

-- Index for user_id in User (quoted because User is a reserved keyword)
CREATE INDEX idx_user_user_id ON "User"(user_id);

-- Index for property_id in Property
CREATE INDEX idx_property_property_id ON Property(property_id);

-- Analyze performance of a commonly used query
EXPLAIN ANALYZE
SELECT user_id, COUNT(*) 
FROM Booking 
GROUP BY user_id;


-- Create indexes to improve query performance

-- Index on Booking table for user_id (used in JOINs)
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking table for property_id (used in JOINs)
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Booking table for start_date (used in date range queries)
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on Property table for property_id
CREATE INDEX idx_property_id ON Property(property_id);

-- Index on User table for user_id
CREATE INDEX idx_user_id ON User(user_id);

-- Measure performance before indexes
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 5;
EXPLAIN ANALYZE SELECT * FROM Booking WHERE property_id = 10;
EXPLAIN ANALYZE SELECT * FROM Booking WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

-- Measure performance after indexes
-- (Assume indexes are already created)
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 5;
EXPLAIN ANALYZE SELECT * FROM Booking WHERE property_id = 10;
EXPLAIN ANALYZE SELECT * FROM Booking WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

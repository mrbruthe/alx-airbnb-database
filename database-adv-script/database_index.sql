-- Create indexes to improve query performance

-- Index on Booking table for user_id (used in JOINs)
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking table for property_id (used in JOINs)
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Property table for property_id (primary key often already indexed)
CREATE INDEX idx_property_id ON Property(property_id);

-- Index on User table for user_id (primary key often already indexed)
CREATE INDEX idx_user_id ON User(user_id);

-- Index on Booking start_date for queries filtering by date range
CREATE INDEX idx_booking_start_date ON Booking(start_date);

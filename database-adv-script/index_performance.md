-- Index on User table
CREATE INDEX idx_user_id ON User(user_id);

-- Index on Booking table
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Index on Property table
CREATE INDEX idx_property_id ON Property(property_id);

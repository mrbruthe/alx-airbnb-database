-- Create a partitioned Booking table based on start_date
CREATE TABLE BookingPartitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20)
) PARTITION BY RANGE (start_date);

-- Create partitions for different years
CREATE TABLE Booking_2024 PARTITION OF BookingPartitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF BookingPartitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE Booking_2026 PARTITION OF BookingPartitioned
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

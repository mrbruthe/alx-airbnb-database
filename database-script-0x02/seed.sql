-- Insert sample users
INSERT INTO users (id, name, email, password, created_at)
VALUES
(1, 'Alice Johnson', 'alice@example.com', 'hashed_password1', NOW()),
(2, 'Bob Smith', 'bob@example.com', 'hashed_password2', NOW());

-- Insert sample properties
INSERT INTO properties (id, user_id, title, description, price_per_night, location, created_at)
VALUES
(1, 1, 'Cozy Beach House', 'A lovely beachside property with 2 bedrooms.', 120.00, 'Lagos, Nigeria', NOW()),
(2, 2, 'Luxury Apartment', 'Modern apartment in city center.', 250.00, 'Abuja, Nigeria', NOW());

-- Insert sample bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date, total_price, status)
VALUES
(1, 2, 1, '2025-09-10', '2025-09-15', 600.00, 'confirmed'),
(2, 1, 2, '2025-09-20', '2025-09-25', 1250.00, 'pending');

-- Insert sample payments
INSERT INTO payments (id, booking_id, amount, status, created_at)
VALUES
(1, 1, 600.00, 'paid', NOW()),
(2, 2, 1250.00, 'pending', NOW());

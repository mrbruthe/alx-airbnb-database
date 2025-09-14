-- INNER JOIN: Retrieve all bookings with respective users
SELECT b.booking_id, b.start_date, b.end_date, u.user_id, u.name
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- LEFT JOIN: Retrieve all properties and their reviews, even if no reviews exist
SELECT p.property_id, p.name AS property_name, r.review_id, r.rating
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id;

-- FULL OUTER JOIN: Retrieve all users and all bookings, including unmatched records
SELECT u.user_id, u.name AS user_name, b.booking_id, b.start_date
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;

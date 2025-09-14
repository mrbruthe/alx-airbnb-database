-- Total number of bookings made by each user
SELECT user_id, COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

-- Rank properties based on the total number of bookings using ROW_NUMBER()
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM Booking
GROUP BY property_id
ORDER BY rank;

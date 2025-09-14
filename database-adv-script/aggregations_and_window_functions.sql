-- Total number of bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

-- Rank properties based on total bookings
SELECT property_id, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM Booking
GROUP BY property_id;

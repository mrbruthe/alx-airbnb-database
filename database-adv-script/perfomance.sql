-- Initial complex query (optimized using indexing)
SELECT b.booking_id, b.start_date, b.end_date,
       u.user_id, u.name AS user_name,
       p.property_id, p.name AS property_name,
       pay.payment_id, pay.amount
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id
INNER JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

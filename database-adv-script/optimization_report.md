# Optimization Report

## Objective
Refactor the initial query to reduce execution time while retrieving all bookings along with user, property, and payment details.

## Steps Taken
1. Reviewed the initial query and identified redundant joins.
2. Added indexes on frequently queried columns: Booking(user_id, property_id, start_date), Payment(booking_id).
3. Used EXPLAIN ANALYZE to compare performance before and after indexes.

## Observations
- Without indexes, the query scanned the entire Booking table.
- After creating indexes, the query execution time significantly decreased.
- EXPLAIN ANALYZE shows the planner is using the indexes efficiently.

## Conclusion
Refactoring the query and adding indexes improved query performance for retrieving bookings and related details.

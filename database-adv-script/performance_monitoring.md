# Database Performance Monitoring

## Objective
Monitor frequently used queries and refine schema for optimization.

## Steps Taken
- Used `EXPLAIN ANALYZE` to measure query execution times.
- Identified slow joins and missing indexes.
- Added indexes on `user_id`, `property_id`, `start_date`.
- Partitioned large Booking table.

## Result
- Queries are faster and more efficient.
- Schema adjustments improved overall database performance.

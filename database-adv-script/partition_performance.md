# Partition Performance Report

## Objective
Optimize queries on the large Booking table by partitioning it based on the `start_date` column.

## Steps Taken
1. Created a new table `BookingPartitioned` with RANGE partitioning on `start_date`.
2. Created yearly partitions: `Booking_2024`, `Booking_2025`, and `Booking_2026`.
3. Tested queries fetching bookings for specific date ranges.

## Observations
- Queries on a specific year only scan the relevant partition, reducing the number of rows read.
- Execution time for date-range queries decreased significantly.
- EXPLAIN ANALYZE shows the planner is efficiently using partitions.

## Conclusion
Partitioning by `start_date` greatly improves query performance on large Booking tables.

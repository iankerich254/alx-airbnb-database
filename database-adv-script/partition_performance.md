# Booking Table Partitioning Performance Report

## Problem
The `Booking` table has grown large and queries that filter by `start_date` were performing slowly due to full table scans.

## Solution
We implemented **range partitioning** on the `start_date` column using PostgreSQL’s native table partitioning feature. The table was split into yearly partitions.

## Steps Taken
- Renamed the original `Booking` table.
- Created a partitioned parent `Booking` table with `PARTITION BY RANGE (start_date)`.
- Added yearly partitions for 2023, 2024, and 2025.
- Inserted all existing data into the new partitioned structure.

## Performance Test

We tested the following query **before and after** partitioning:

```sql
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';


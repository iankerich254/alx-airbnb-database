# Database Performance Monitoring Report

## Step 1: Monitoring Query Performance

We used `EXPLAIN ANALYZE` to assess several frequently used queries in the system.

### Query 1: Retrieve bookings by user

```sql
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 42;

### Query 2: Retrieve properties with reviews above a certain rating

```sql
EXPLAIN ANALYZE
SELECT p.property_id, p.name
FROM Property p
JOIN Review r ON p.property_id = r.property_id
GROUP BY p.property_id
HAVING AVG(r.rating) > 4.0;

## Observations

Queries were run before and after implementing indexes.
Indexes greatly improve the speed of executing queries.

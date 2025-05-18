# Optimization Report

## Initial Query Description

The initial query retrieves all booking records along with user details, property details, and payment details. It joins the Booking table with User, Property, and Payment using INNER JOINs.

## Performance Analysis

Using `EXPLAIN ANALYZE`, we observed:

- Sequential scans on large tables (especially User and Payment)
- High cost of joins due to missing indexes
- No filters or LIMITs applied, which leads to large result sets and full table scans

## Optimization Steps Taken

1. **Created indexes**:
   - `Booking.user_id`
   - `Booking.property_id`
   - `Booking.booking_id`
   - `"User".user_id`
   - `Property.property_id`
   - `Payment.booking_id`

2. **Reduced column selection**:
   - Selected only necessary fields for output

3. **Refactored query** to avoid unnecessary joins in specific use cases
   - For example, if payment info isn’t needed on every screen, defer or lazy-load it separately

## Refactored Query

```sql
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.first_name,
    u.last_name,
    p.name AS property_name
FROM Booking b
JOIN "User" u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id;


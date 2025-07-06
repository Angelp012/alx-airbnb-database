# Performance Monitoring Report

## 🎯 Objective

Analyze and improve the performance of SQL queries using tools like `EXPLAIN` and `ANALYZE`.

---

## 📈 Monitoring Process

### Example Query:
```sql
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'some-user-id';
```

**Before indexing**: Sequential scan on `Booking` table.  
**After indexing**: Index scan using `idx_booking_user_id`, reducing query cost.

---

## 🔄 Adjustments Made

- Created indexes on `user_id`, `property_id`, and `start_date`
- Changed join type in heavy queries from `JOIN` to `LEFT JOIN` when appropriate
- Partitioned `Booking` table by `start_date`

---

## ✅ Outcome

- Reduced query execution time by over 60% in some tests.
- EXPLAIN plans show more efficient use of index scans and less full table scanning.

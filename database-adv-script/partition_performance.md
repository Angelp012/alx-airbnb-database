# Partitioning Report – Booking Table

## 📌 Problem

The `Booking` table contains a large volume of records, leading to slow performance on date-based queries.

---

## 🔧 Solution

Implemented **range partitioning** on the `start_date` column.

### Structure:
- Parent table: `Booking_partitioned`
- Partitions: `Booking_2024`, `Booking_2025`

---

## 🧪 Performance Results

### Before Partitioning:
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2025-01-01' AND '2025-06-01';
-- Result: Full table scan, slow response
```

### After Partitioning:
```sql
SELECT * FROM Booking_partitioned WHERE start_date BETWEEN '2025-01-01' AND '2025-06-01';
-- Result: Only scans relevant partition (e.g., Booking_2025)
```

**Observation**: Execution time significantly reduced due to partition pruning.

---

## ✅ Recommendation

Use partitioning for large, date-based tables to improve query filtering and performance.

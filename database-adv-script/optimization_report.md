# Query Optimization Report

## 🎯 Objective

To retrieve bookings along with user, property, and payment details while improving query performance.

---

## 🧪 Initial Query (Before Optimization)

Used `JOIN` on all related tables including Payment.

**Issue**: Query performance suffered due to unnecessary strict join on Payment table, which could result in missing records if a payment was not yet made.

---

## ✅ Optimization Strategy

- Changed `JOIN Payment` to `LEFT JOIN Payment` to include bookings even if no payment has been made.
- Used indexed columns (`user_id`, `property_id`, `booking_id`) to speed up joins.

---

## 🔍 Performance Analysis

### Before Optimization:
- Full joins on large tables increased execution time.
- `EXPLAIN ANALYZE` showed sequential scans on unindexed columns.

### After Optimization:
- Reduced execution cost by avoiding unnecessary join strictness.
- Faster query execution using index scan.

---

## 📝 Recommendation

Use `LEFT JOIN` only when necessary and ensure indexes exist on all joining keys.

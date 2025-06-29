# Database Normalization Process for Airbnb Clone

This document explains the normalization steps applied to the Airbnb database schema to ensure data integrity and minimize redundancy, achieving the Third Normal Form (3NF).

## First Normal Form (1NF)

- ✅ All tables have atomic (indivisible) values.
- ✅ Each column contains values of a single type.
- ✅ Each record is unique and identified by a primary key.

---

## Second Normal Form (2NF)

- ✅ The database is already in 1NF.
- ✅ All non-key attributes are fully dependent on the **whole primary key** (note: we use UUIDs as PKs).
- ✅ No partial dependencies exist since we are not using composite primary keys.

---

## Third Normal Form (3NF)

- ✅ The database is in 2NF.
- ✅ There are **no transitive dependencies** — no non-key attribute depends on another non-key attribute.

### 🔎 Example Checks:
- In the **User** table, `email` is unique but does not determine `password_hash` — no transitive dependency.
- In **Booking**, all fields depend only on `booking_id` (the PK).
- Each table keeps logically grouped data without redundancy.

---

## Summary

The schema satisfies:
- ✅ 1NF by having atomic columns and unique rows.
- ✅ 2NF by ensuring full dependency on primary keys.
- ✅ 3NF by avoiding any indirect dependencies.


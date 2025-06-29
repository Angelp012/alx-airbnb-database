#  Database Schema Design – Airbnb Clone Backend

This document outlines the SQL-based database schema design for the Airbnb Clone backend. The schema includes all required entities, their relationships, and associated constraints as defined in the system's specifications. The design follows relational database best practices and has been normalized up to **Third Normal Form (3NF)** to eliminate redundancy and ensure data integrity.

##  Overview of Tables

The schema consists of six core tables:

1. **User**: Stores user information such as name, email, and role (guest, host, admin).
2. **Property**: Contains property listings created by hosts.
3. **Booking**: Manages guest bookings of properties.
4. **Payment**: Stores payment records linked to bookings.
5. **Review**: Captures user feedback and ratings for properties.
6. **Message**: Supports direct messaging between users.


Each table is defined using appropriate data types, primary keys (UUIDs), foreign keys, and constraints such as `NOT NULL`, `UNIQUE`, and `ENUM`.

## Relationships

- Users can be guests or hosts.
- Hosts own properties.
- Guests make bookings for properties.
- Bookings can have one payment.
- Guests can leave reviews for properties.
- Users can send messages to other users.

All foreign keys enforce referential integrity.

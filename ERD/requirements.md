# ER Diagram for Airbnb Clone

## Entities and Their Attributes

### User
- user_id (PK)
- first_name
- last_name
- email (UNIQUE)
- password_hash
- phone_number
- role (guest, host, admin)
- created_at

### 🏠Property
- property_id (PK)
- host_id (FK → User.user_id)
- name
- description
- location
- pricepernight
- created_at
- updated_at

### 📅 Booking
- booking_id (PK)
- property_id (FK → Property.property_id)
- user_id (FK → User.user_id)
- start_date
- end_date
- total_price
- status (pending, confirmed, canceled)
- created_at

### 💳 Payment
- payment_id (PK)
- booking_id (FK → Booking.booking_id)
- amount
- payment_date
- payment_method (credit_card, paypal, stripe)

### ⭐ Review
- review_id (PK)
- property_id (FK → Property.property_id)
- user_id (FK → User.user_id)
- rating (1–5)
- comment
- created_at

### 💬 Message
- message_id (PK)
- sender_id (FK → User.user_id)
- recipient_id (FK → User.user_id)
- message_body
- sent_at

---

## Relationships

- A **User** can be a **guest** or **host**
- A **User** (as guest) can make many **Bookings**
- A **User** (as host) can list many **Properties**
- A **Property** can have many **Bookings**
- A **Booking** has one **Payment**
- A **User** can leave multiple **Reviews** on **Properties**
- A **User** can send and receive many **Messages**

---


---

## Notes

- All UUID primary keys are indexed
- The system enforces referential integrity via foreign key constraints

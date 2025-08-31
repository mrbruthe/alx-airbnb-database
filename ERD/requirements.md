# ERD Requirements

This project requires designing an Entity-Relationship Diagram (ERD) for an Airbnb-like database system based on the following specification.

## Entities and Attributes
- **User**
  - user_id (PK, UUID, Indexed)
  - first_name (VARCHAR, NOT NULL)
  - last_name (VARCHAR, NOT NULL)
  - email (VARCHAR, UNIQUE, NOT NULL)
  - password_hash (VARCHAR, NOT NULL)
  - phone_number (VARCHAR, NULL)
  - role (ENUM: guest, host, admin, NOT NULL)
  - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

- **Property**
  - property_id (PK, UUID, Indexed)
  - host_id (FK → User.user_id)
  - name (VARCHAR, NOT NULL)
  - description (TEXT, NOT NULL)
  - location (VARCHAR, NOT NULL)
  - pricepernight (DECIMAL, NOT NULL)
  - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
  - updated_at (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)

- **Booking**
  - booking_id (PK, UUID, Indexed)
  - property_id (FK → Property.property_id)
  - user_id (FK → User.user_id)
  - start_date (DATE, NOT NULL)
  - end_date (DATE, NOT NULL)
  - total_price (DECIMAL, NOT NULL)
  - status (ENUM: pending, confirmed, canceled, NOT NULL)
  - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

- **Payment**
  - payment_id (PK, UUID, Indexed)
  - booking_id (FK → Booking.booking_id)
  - amount (DECIMAL, NOT NULL)
  - payment_date (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)
  - payment_method (ENUM: credit_card, paypal, stripe, NOT NULL)

- **Review**
  - review_id (PK, UUID, Indexed)
  - property_id (FK → Property.property_id)
  - user_id (FK → User.user_id)
  - rating (INTEGER, 1–5, NOT NULL)
  - comment (TEXT, NOT NULL)
  - created_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

- **Message**
  - message_id (PK, UUID, Indexed)
  - sender_id (FK → User.user_id)
  - recipient_id (FK → User.user_id)
  - message_body (TEXT, NOT NULL)
  - sent_at (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)

## Relationships
- A **User** can own many **Properties** (1-to-many).
- A **User** can make many **Bookings** (1-to-many).
- A **Property** can have many **Bookings** (1-to-many).
- A **Booking** has one **Payment** (1-to-1).
- A **User** can leave many **Reviews** for different **Properties** (1-to-many).
- **Users** can send **Messages** to each other (many-to-many via sender/recipient).

## Tools
- Use **Draw.io** (or a similar tool) to create the ERD.
- Save/export your diagram and upload/link it in the repository.

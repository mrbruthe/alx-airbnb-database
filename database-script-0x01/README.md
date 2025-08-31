# Database Schema (DDL)

This schema defines the Airbnb-like database for the `alx-airbnb-database` project.

## Tables
1. **Users**: Stores user information (hosts and guests).
2. **Listings**: Properties listed by users for booking.
3. **Bookings**: Reservations linking users to listings.
4. **Reviews**: Feedback left by guests for bookings.
5. **Payments**: Tracks transactions for bookings.

## Constraints
- Primary keys on all tables.
- Foreign keys to enforce relationships.
- Indexes on email, location, and booking status for faster queries.
- Data types chosen for correctness (e.g., `DECIMAL` for prices, `ENUM` for status).

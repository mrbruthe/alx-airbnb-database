# Database Seeding Script

This folder contains SQL scripts for populating the **Airbnb database** with sample data.

## Files
- `seed.sql` → Contains `INSERT` statements for:
  - Users
  - Properties
  - Bookings
  - Payments

## Usage
Run the script after creating the schema:
```bash
mysql -u <username> -p alx_airbnb < seed.sql

# Database Normalization (to 3NF)

## Step 1: Review of Current Schema
The initial schema included some redundancy:
- `country` was stored directly in both `Users` and `Listings`.
- This caused duplication and potential inconsistency.

## Step 2: First Normal Form (1NF)
- Ensured all tables have atomic values (e.g., no multiple emails in one field).
- Each row is unique.

## Step 3: Second Normal Form (2NF)
- Verified that all non-key attributes depend on the whole primary key.
- For example, in `Bookings`, attributes like `start_date` and `end_date` depend on `id`, not partially.

## Step 4: Third Normal Form (3NF)
- Removed transitive dependency by extracting `country` into a new table.
- New schema:


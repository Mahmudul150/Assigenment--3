#  Football Ticket Booking System

# 📖 Project Overview

The Football Ticket Booking System is designed to manage:

- Registered Users (Football Fans & Ticket Managers)
- Football Matches
- Ticket Bookings

The system maintains relationships between users, matches, and bookings while ensuring data integrity through Primary Keys and Foreign Keys.

---

#  Objectives

- Design a relational database using PostgreSQL
- Implement Primary Key and Foreign Key constraints
- Maintain Referential Integrity
- Practice SQL JOIN operations
- Use Aggregate Functions
- Practice Subqueries
- Use Pattern Matching (LIKE & ILIKE)
- Handle NULL values using COALESCE
- Implement Pagination using LIMIT & OFFSET

---

#  Database Schema

## 1. Users Table

Stores all registered users.

| Column | Type |
|----------------|----------------|
| user_id | SERIAL PRIMARY KEY |
| full_name | VARCHAR(100) |
| email | VARCHAR(100) UNIQUE |
| role | VARCHAR(50) |
| phone_number | VARCHAR(20) |

---

## 2. Matches Table

Stores football match information.

| Column | Type |
|-----------------------|----------------|
| match_id | SERIAL PRIMARY KEY |
| fixture | VARCHAR(100) |
| tournament_category | VARCHAR(100) |
| base_ticket_price | INT |
| match_status | VARCHAR(50) |

---

## 3. Bookings Table

Stores ticket booking records.

| Column | Type |
|----------------|----------------|
| booking_id | SERIAL PRIMARY KEY |
| user_id | INT REFERENCES users(user_id) |
| match_id | INT REFERENCES matches(match_id) |
| seat_number | VARCHAR(20) |
| payment_status | VARCHAR(50) |
| total_cost | INT |
---

# 🔗 ERD Relationship

Users (1) --------< Bookings >-------- (1) Matches

One User can have many Bookings.

One Match can have many Bookings.

Each Booking belongs to exactly one User and one Match.

---

#  Constraints Used

- Primary Key
- Foreign Key
- Unique Constraint
- NOT NULL
- Referential Integrity

---

#  Sample Data

## Users

| ID | Name |
|------|----------------|
|1|Tanvir Rahman|
|2|Asif Haque|
|3|Sajjad Rahman|
|4|Jannat Ara|

---

## Matches

| ID | Fixture |
|------|------------------------------|
|101|Real Madrid vs Barcelona|
|102|Man City vs Liverpool|
|103|Bayern Munich vs PSG|
|104|AC Milan vs Inter Milan|
|105|Juventus vs Roma|

---

## Bookings

| Booking ID | User | Match |
|------------|-----------|------------|
|501|Tanvir|101|
|502|Tanvir|102|
|503|Asif|101|
|504|Asif|101|
|505|Sajjad|102|

---

#  SQL Queries Implemented

## Query 1
Retrieve all available Champions League matches.

Concept:
- WHERE
- AND

---

## Query 2
Search users using LIKE and ILIKE.

Concept:
- LIKE
- ILIKE

---

## Query 3
Replace NULL payment status using COALESCE.

Concept:
- IS NULL
- COALESCE

---

## Query 4
Display booking details with user name and match fixture.

Concept:
- INNER JOIN

---

## Query 5
Display all users including users without bookings.

Concept:
- LEFT JOIN

---

## Query 6
Find bookings whose total cost is greater than average booking cost.

Concept:
- Aggregate Function
- Subquery

---

## Query 7
Retrieve top expensive matches while skipping the highest one.

Concept:
- ORDER BY
- LIMIT
- OFFSET

---

#  Technologies Used

- PostgreSQL
- SQL
- Draw.io / Lucidchart
- Git & GitHub

---

# 📁 Project Structure

```
Football-Ticket-Booking-System
│
├── README.md
├── QUERY.sql
└── ERD Link
```

---

#  How to Run

1. Create the database.
2. Create Users, Matches and Bookings tables.
3. Insert sample data.
4. Execute the SQL queries from `QUERY.sql`.

---

#  Concepts Covered

- Database Design
- ERD
- Primary Key
- Foreign Key
- JOIN
- LEFT JOIN
- Aggregate Functions
- GROUP BY
- HAVING
- Subquery
- LIKE
- ILIKE
- COALESCE
- LIMIT
- OFFSET

---
## link
vedio_Link : https://drive.google.com/file/d/1cIvbtr5l6QsxecfdNL8s2Je6utbI7rR-/view?usp=drivesdk

ERD_Link : https://drive.google.com/file/d/1hW9Zfyrs0IKAm3qI4o9C6HMhtaTshFxz/view


#  Author

**Mahmudul Hasan**

Football Ticket Booking System Database Project

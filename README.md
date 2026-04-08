# BookClub
📚 Book Club Database System

A robust relational database management system (RDBMS) designed to handle a book club's ecosystem, including user management, book catalogs, loan tracking, and user reviews. This project was developed as a final assignment to demonstrate advanced SQL skills, database normalization, and relational design.
🛠 Tech Stack

    Database: MariaDB / MySQL

    Language: SQL (DDL, DML, DQL)

    Design Tools: dbdiagram.io / Draw.io (ER Diagramming)

    Normalization: 1NF, 2NF, 3NF

🌟 Key Features

    Comprehensive Data Model: Tracks 50+ books and 40+ users with complex many-to-many relationships.

    Relational Integrity: Implements Primary and Foreign keys with ON DELETE constraints to ensure data consistency.

    Advanced Analytics: Includes pre-configured queries to identify top-rated books, active borrowers, and catalog gaps.

    Optimized Performance: Fully normalized structure (up to 3NF) to eliminate data redundancy.

🏗 Database Schema (ERD)

The system consists of the following core entities:

    Users: Member profiles and registration details.

    Books & Authors: Catalog linked via a junction table (Book_Authors) to support multiple authors per book.

    Genres: Categorized classification for easy filtering.

    Loans: Transactional records for tracking book checkouts and returns.

    Reviews: User-generated ratings (1–10) and feedback.

📊 Analytical Insights

The project includes specialized SQL scripts to answer business questions:

    Top Performers: Identifies the top 3 books based on user reviews with an average rating >7.

    Activity Tracking: Flags power users who have borrowed more than 3 books in the current month.

    Audit Reports: Lists books that haven't received reviews yet, sorted by publication year to help manage old inventory.

🚀 How to Use

    Clone the repository:
    Bash

    git clone https://github.com/your-username/book-club-db.git

    Import the schema:
    Run the provided .sql script in your MariaDB/MySQL environment:
    SQL

    SOURCE path/to/book_club_script.sql;

    Run Analytics:
    Execute the queries in the Step 4: Analytics section of the script to see the results.

📝 Project Requirements Checklist

    [x] SQL Schema (Tables & Keys)

    [x] ER-Diagram (PDF/Image)

    [x] 1NF → 3NF Normalization Explanation

    [x] Sample Data (INSERT scripts)

    [x] Analytical SQL Queries

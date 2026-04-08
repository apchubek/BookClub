USE BookClub;
-- 
-- CREATE TABLE Genres (
--     genre_id INT AUTO_INCREMENT PRIMARY KEY,
--     genre_name VARCHAR(100) NOT NULL
-- );
-- 
-- CREATE TABLE Authors (
--     author_id INT AUTO_INCREMENT PRIMARY KEY,
--     author_name VARCHAR(255) NOT NULL
-- );
-- 
-- CREATE TABLE Users (
--     user_id INT AUTO_INCREMENT PRIMARY KEY,
--     full_name VARCHAR(255) NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     registration_date DATE NOT NULL
-- );
-- 
-- CREATE TABLE Books (
--     book_id INT AUTO_INCREMENT PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     pub_year INT,
--     genre_id INT,
--     FOREIGN KEY (genre_id) REFERENCES Genres(genre_id) ON DELETE SET NULL
-- );
-- 
-- CREATE TABLE Book_Authors (
--     book_id INT,
--     author_id INT,
--     PRIMARY KEY (book_id, author_id),
--     FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
--     FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE
-- );
-- 
-- CREATE TABLE Loans (
--     loan_id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     book_id INT,
--     loan_date DATE NOT NULL,
--     return_date DATE DEFAULT NULL,
--     FOREIGN KEY (user_id) REFERENCES Users(user_id),
--     FOREIGN KEY (book_id) REFERENCES Books(book_id)
-- );
-- 
-- CREATE TABLE Reviews (
--     review_id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT,
--     book_id INT,
--     rating INT CHECK (rating BETWEEN 1 AND 10),
--     comment TEXT,
--     review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (user_id) REFERENCES Users(user_id),
--     FOREIGN KEY (book_id) REFERENCES Books(book_id)
-- );
-- 
-- INSERT INTO Genres (genre_name) VALUES
-- ('Fantasy'), ('Sci-Fi'), ('Classic'), ('Mystery'), ('Biography'), ('History'), ('Romance'), ('Thriller');
-- 
-- INSERT INTO Authors (author_name) VALUES
-- ('J.K. Rowling'), ('George Orwell'), ('Stephen King'), ('F. Scott Fitzgerald'), ('Jane Austen'), ('Leo Tolstoy'), ('Agatha Christie'), ('Ernest Hemingway'), ('J.R.R. Tolkien'), ('Isaac Asimov'), ('Dan Brown'), ('Paulo Coelho'), ('Haruki Murakami'), ('Margaret Atwood'), ('Neil Gaiman'), ('George R.R. Martin'), ('Frank Herbert'), ('William Gibson'), ('Ursula K. Le Guin'), ('Orson Scott Card'), ('Neal Stephenson'), ('Liu Cixin'), ('Stieg Larsson'), ('Gillian Flynn'), ('Walter Isaacson'), ('Yuval Noah Harari');
-- 
-- INSERT INTO Books (title, pub_year, genre_id) VALUES
-- ('1984', 1949, 3), ('Harry Potter and the Philosopher Stone', 1997, 1), ('The Great Gatsby', 1925, 3), ('The Shining', 1977, 4), ('The Hobbit', 1937, 1), ('The Fellowship of the Ring', 1954, 1), ('A Game of Thrones', 1996, 1), ('American Gods', 2001, 1), ('Dune', 1965, 2), ('Foundation', 1951, 2), ('Neuromancer', 1984, 2), ('The Left Hand of Darkness', 1969, 2), ('Ender''s Game', 1985, 2), ('Snow Crash', 1992, 2), ('The Three-Body Problem', 2008, 2), ('Pride and Prejudice', 1813, 3), ('To Kill a Mockingbird', 1960, 3), ('The Catcher in the Rye', 1951, 3), ('Brave New World', 1932, 3), ('War and Peace', 1869, 3), ('Crime and Punishment', 1866, 3), ('Moby Dick', 1851, 3), ('Anna Karenina', 1877, 3), ('The Girl with the Dragon Tattoo', 2005, 4), ('Gone Girl', 2012, 4), ('The Da Vinci Code', 2003, 4), ('Murder on the Orient Express', 1934, 4), ('The Hound of the Baskervilles', 1902, 4), ('And Then There Were None', 1939, 4), ('The Silent Patient', 2019, 4), ('Steve Jobs', 2011, 5), ('The Diary of a Young Girl', 1947, 5), ('Long Walk to Freedom', 1994, 5), ('I Know Why the Caged Bird Sings', 1969, 5), ('The Autobiography of Malcolm X', 1965, 5), ('Sapiens: A Brief History of Humankind', 2011, 6), ('Guns, Germs, and Steel', 1997, 6), ('The Guns of August', 1962, 6), ('1776', 2005, 6), ('A People''s History of the United States', 1980, 6), ('The Notebook', 1996, 7), ('Outlander', 1991, 7), ('The Fault in Our Stars', 2012, 7), ('Me Before You', 2012, 7), ('The Girl on the Train', 2015, 8), ('Sharp Objects', 2006, 8), ('Verity', 2018, 8), ('The Woman in the Window', 2018, 8), ('The Big Sleep', 1939, 4), ('The Maltese Falcon', 1930, 4);
-- 
-- INSERT INTO Book_Authors (book_id, author_id) VALUES
-- (1, 2), (2, 1), (3, 4), (4, 3), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (16, 16), (17, 17), (18, 18), (19, 19), (20, 20), (21, 21), (22, 22), (23, 23), (24, 24), (25, 25), (26, 26), (27, 1), (28, 2), (29, 3), (30, 4), (31, 5), (32, 6), (33, 7), (34, 8), (35, 9), (36, 10), (37, 11), (38, 12), (39, 13), (40, 14), (41, 15), (42, 16), (43, 17), (44, 18), (45, 19), (46, 20), (47, 21), (48, 22), (49, 23), (50, 24);
-- 
-- INSERT INTO Users (full_name, email, registration_date) VALUES
-- ('Ivan Ivanov', 'ivan@mail.com', '2025-01-10'), ('Maria Petrovna', 'maria@mail.com', '2025-02-15'), ('Alex Smith', 'alex@gmail.com', '2026-03-01'), ('User 4', 'user4@mail.com', '2025-04-04'), ('User 5', 'user5@mail.com', '2025-05-05'), ('User 6', 'user6@mail.com', '2025-06-06'), ('User 7', 'user7@mail.com', '2025-07-07'), ('User 8', 'user8@mail.com', '2025-08-08'), ('User 9', 'user9@mail.com', '2025-09-09'), ('User 10', 'user10@mail.com', '2025-10-10'), ('User 11', 'user11@mail.com', '2025-11-11'), ('User 12', 'user12@mail.com', '2025-01-12'), ('User 13', 'user13@mail.com', '2025-02-13'), ('User 14', 'user14@mail.com', '2025-03-14'), ('User 15', 'user15@mail.com', '2025-04-15'), ('User 16', 'user16@mail.com', '2025-05-16'), ('User 17', 'user17@mail.com', '2025-06-17'), ('User 18', 'user18@mail.com', '2025-07-18'), ('User 19', 'user19@mail.com', '2025-08-19'), ('User 20', 'user20@mail.com', '2025-09-20'), ('User 21', 'user21@mail.com', '2025-10-21'), ('User 22', 'user22@mail.com', '2025-11-22'), ('User 23', 'user23@mail.com', '2025-01-23'), ('User 24', 'user24@mail.com', '2025-02-24'), ('User 25', 'user25@mail.com', '2025-03-25'), ('User 26', 'user26@mail.com', '2025-04-26'), ('User 27', 'user27@mail.com', '2025-05-27'), ('User 28', 'user28@mail.com', '2025-06-28'), ('User 29', 'user29@mail.com', '2025-07-01'), ('User 30', 'user30@mail.com', '2025-08-02'), ('User 31', 'user31@mail.com', '2025-09-03'), ('User 32', 'user32@mail.com', '2025-10-04'), ('User 33', 'user33@mail.com', '2025-11-05'), ('User 34', 'user34@mail.com', '2025-01-06'), ('User 35', 'user35@mail.com', '2025-02-07'), ('User 36', 'user36@mail.com', '2025-03-08'), ('User 37', 'user37@mail.com', '2025-04-09'), ('User 38', 'user38@mail.com', '2025-05-10'), ('User 39', 'user39@mail.com', '2025-06-11'), ('User 40', 'user40@mail.com', '2025-07-12');
-- 
-- INSERT INTO Loans (user_id, book_id, loan_date, return_date) VALUES
-- (1, 1, '2026-03-15', NULL), (1, 2, '2026-03-20', NULL), (1, 3, '2026-03-25', NULL), (1, 4, '2026-04-01', NULL),
-- (2, 5, '2026-03-10', '2026-04-05'), (3, 6, '2026-03-12', NULL),
-- (4, 7, '2025-04-04', '2025-06-15'), (5, 8, '2025-05-05', '2025-07-16'), (6, 9, '2025-06-06', NULL), (7, 10, '2025-07-07', '2025-09-18'), (8, 11, '2025-08-08', '2025-10-19'), (9, 12, '2025-09-09', '2025-11-20'), (10, 13, '2025-10-10', '2025-12-21'), (11, 14, '2025-11-11', NULL), (12, 15, '2025-01-12', '2025-03-23'), (13, 16, '2025-02-13', '2025-04-24'), (14, 17, '2025-03-14', '2025-05-25'), (15, 18, '2025-04-15', '2025-06-26'), (16, 19, '2025-05-16', NULL), (17, 20, '2025-06-17', '2025-08-28'), (18, 21, '2025-07-18', '2025-09-01'), (19, 22, '2025-08-19', '2025-10-02'), (20, 23, '2025-09-20', '2025-11-03'), (21, 24, '2025-10-21', NULL), (22, 25, '2025-11-22', '2026-02-05'), (23, 26, '2025-01-23', '2025-03-06'), (24, 27, '2025-02-24', '2025-04-07'), (25, 28, '2025-03-25', '2025-05-08'), (26, 29, '2025-04-26', NULL), (27, 30, '2025-05-27', '2025-07-10'), (28, 31, '2025-06-28', '2025-08-11'), (29, 32, '2025-07-01', '2025-09-12'), (30, 33, '2025-08-02', '2025-10-13'), (31, 34, '2025-09-03', NULL), (32, 35, '2025-10-04', '2025-12-15'), (33, 36, '2025-11-05', '2026-02-16'), (34, 37, '2025-01-06', '2025-03-17'), (35, 38, '2025-02-07', '2025-04-18'), (36, 39, '2025-03-08', NULL), (37, 40, '2025-04-09', '2025-06-20'), (38, 41, '2025-05-10', '2025-07-21'), (39, 42, '2025-06-11', '2025-08-22'), (40, 43, '2025-07-12', '2025-09-23'), (1, 44, '2025-08-13', NULL), (2, 45, '2025-09-14', '2025-11-25'), (3, 46, '2025-10-15', '2025-12-26'), (4, 47, '2025-11-16', '2026-02-27'), (5, 48, '2025-01-17', '2025-03-28'), (6, 49, '2025-02-18', NULL), (7, 50, '2025-03-19', '2025-05-02'), (8, 1, '2026-03-01', NULL);
-- 
-- INSERT INTO Reviews (user_id, book_id, rating, comment) VALUES
-- (1, 1, 10, 'Incredible!'), (2, 1, 9, 'Must read.'), (3, 1, 10, 'Classic.'), (4, 2, 9, 'Magic!'), (5, 2, 8, 'Loved it.'), (6, 2, 10, 'Better than movies.'), (7, 3, 9, 'Deeply moving.'), (8, 3, 10, 'Perfect prose.'), (9, 3, 8, 'Strongly recommend.'),
-- (10, 4, 5, 'Okay.'), (11, 5, 4, 'Boring.'), (12, 6, 7, 'Good.'), (13, 7, 2, 'Bad.'), (14, 8, 6, 'Average.'), (15, 9, 8, 'Cool.'), (16, 10, 5, 'Meh.'), (17, 11, 4, 'Not for me.'), (18, 12, 10, 'Super!'), (19, 13, 1, 'Hated it.'), (20, 14, 9, 'Nice.'), (21, 15, 3, 'Weak.'), (22, 16, 6, 'Fine.'), (23, 17, 7, 'Solid.'), (24, 18, 8, 'Wow.'), (25, 19, 5, 'Slow.'), (26, 20, 9, 'Impressive.'), (27, 21, 2, 'Terrible.'), (28, 22, 10, 'Masterpiece.'), (29, 23, 4, 'Confusing.'), (30, 24, 8, 'Gripping.'), (31, 25, 7, 'Engaging.'), (32, 26, 9, 'Brilliant.'), (33, 27, 3, 'Overrated.'), (34, 28, 6, 'Decent.'), (35, 29, 5, 'Old school.'), (36, 30, 10, 'Shocking ending!'), (37, 31, 8, 'Inspiring.'), (38, 32, 7, 'Educational.'), (39, 33, 9, 'Powerful.'), (40, 34, 4, 'Hard to read.'), (1, 35, 10, 'Legendary.'), (2, 36, 5, 'Dry.'), (3, 37, 6, 'Okay.'), (4, 38, 7, 'Classic.'), (5, 39, 8, 'Interesting.'), (6, 40, 3, 'Didn''t finish.'), (7, 41, 9, 'Tearjerker.'), (8, 42, 6, 'Historical.'), (9, 43, 10, 'Emotional.'), (10, 44, 4, 'Sad.'), (11, 45, 8, 'Suspenseful.'), (12, 46, 7, 'Dark.'), (13, 47, 5, 'Spooky.'), (14, 48, 9, 'Mysterious.'), (15, 49, 10, 'Cool detective.'), (16, 50, 6, 'Old-fashioned.'), (17, 1, 9, 'Again great.'), (18, 2, 8, 'Still magic.'), (19, 3, 10, 'Legend!'), (20, 4, 2, 'Awful.'), (21, 5, 5, 'Passable.'), (22, 6, 6, 'Ok.'), (23, 7, 7, 'Nice.'), (24, 8, 8, 'Good.'), (25, 9, 9, 'Very good.'), (26, 10, 10, 'Excellent.');

-- SELECT * FROM Books;
-- SELECT * FROM Authors;
-- SELECT * FROM  Book_Authors;
-- SELECT * FROM Genres ;
-- SELECT * FROM Loans ;
-- SELECT * FROM Reviews ;
-- SELECT * FROM Users ;



-- SELECT b.title, COUNT(r.review_id) AS total_reviews, AVG(r.rating) AS avg_rating
-- FROM Books b
-- JOIN Reviews r ON b.book_id = r.book_id
-- GROUP BY b.book_id
-- HAVING avg_rating > 7
-- ORDER BY total_reviews DESC
-- LIMIT 3;	
-- 
-- SELECT u.full_name, COUNT(l.loan_id) AS books_taken
-- FROM Users u
-- JOIN Loans l ON u.user_id = l.user_id
-- WHERE l.loan_date >= DATE_SUB('2026-04-08', INTERVAL 1 MONTH)
-- GROUP BY u.user_id
-- HAVING books_taken > 3;

SELECT b.title, b.pub_year
FROM Books b
LEFT JOIN Reviews r ON b.book_id = r.book_id
WHERE r.review_id IS NULL
ORDER BY b.pub_year ASC;
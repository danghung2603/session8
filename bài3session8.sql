CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(150) NOT NULL,
    publication_year INT,
    pages INT CHECK (pages > 0)
);
CREATE TABLE BorrowingRecords (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
SELECT COUNT(*) AS total_books
FROM Books;
SELECT SUM(pages) AS total_pages_in_library
FROM Books;
SELECT AVG(pages) AS average_pages_per_book
FROM Books;
SELECT MIN(publication_year) AS oldest_book_year
FROM Books;
SELECT MAX(publication_year) AS newest_book_year
FROM Books;
SELECT MIN(borrow_date) AS first_borrow_date
FROM BorrowingRecords;
SELECT COUNT(*) AS books_after_2000
FROM Books
WHERE publication_year > 2000;

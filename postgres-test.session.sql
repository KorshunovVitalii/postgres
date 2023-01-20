



DROP TABLE books;

CREATE TABLE books (
    id serial PRIMARY KEY,
    author_books varchar(100) UNIQUE CHECK(author_books != ''),
    name_books varchar(100) UNIQUE CHECK(name_books != ''),
    year_of_issue date,
    publishing_house text  CHECK(publishing_house != ''),
    category varchar(200) CHECK(category != ''),
    synopsis text CHECK(synopsis != ''),
    number_of_copies smallint CHECK(number_of_copies > 0),
    comments text NOT NULL
);

INSERT INTO books(author_books, name_books, year_of_issue, category, publishing_house, synopsis, number_of_copies, comments) VALUES
('Stephen King', 'Carrie', '1974-04-05', 'horror', 'Doubleday', 'Carrie is a 1974 horror novel by American author Stephen King', 200, 'This is a wonderful book'),
('Franz Kafka', 'Brief an Den Vater', '1995-12-05', 'horror', 'Fisher', 'Franz Kafka wrote this letter to his father, Hermann Kafka, in November 1919', 350, 'This is a wonderful book');



ALTER TABLE books
ADD CHECK(year_of_issue < current_date);
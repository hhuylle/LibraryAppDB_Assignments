@us05 @db
Feature: As a data consumer, I want to know genre of books are being borrowed the most

  Scenario: verify the the common book genre that’s being borrowed
    Given Establish the database connection
    When I execute query to find most popular book genre
    Then verify "Fantasy" is the most popular book genre.
    #When execute query "select name from book_categories where id=(select book_category_id from books where id=(select book_id from book_borrow group by book_id order by count(*) desc limit 1));"
    #If I want to provide my query from feature file
-- this is SQL
-- for comments

-- when nothing is highlighted, and we run/execute everything in the current query is run
-- you can select only a specific command, and only run that one

SELECT * FROM Customer;
-- when you make a query to a DB, any result will take the form of a table

SELECT 'Hello World';
-- single quotes mark a string literal

SELECT 2 + 2;

SELECT SYSUTCDATETIME();

-- USUALLY nothing in SQL is case sensitive
select 2 + 2;

-- semicolons are not a required end-line character. they are an end of operation/end of thought. and are not generally required.
SELECT 2 + 2


SELECT Address FROM Customer;
-- SELECT (Columns) FROM (Table)
--          ^ select-list


-- Column Alias 
-- great for concatenating multiple columns together.
SELECT FirstName + ' ' + LastName, Address FROM Customer;
SELECT FirstName + ' ' + LastName AS FullName, Address FROM Customer;
SELECT FirstName + ' ' + LastName AS 'FullName', Address FROM Customer;
SELECT FirstName + ' ' + LastName AS [FullName], Address FROM Customer;


-- filtering with WHERE

SELECT * -- get this column
FROM Customer -- from this table
WHERE LEN(FirstName) > 5; -- for entries that meet this condition

SELECT *
FROM Customer
WHERE Country = 'Brazil';

SELECT *
FROM Customer
WHERE Country = 'Brazil' AND City = 'São Paulo';

SELECT *
FROM Customer
WHERE CustomerId = 10;


-- Aggregate Functions

SELECT COUNT(*)
FROM Customer;

SELECT SUM(Total)
FROM Invoice;

-- other agg functions include min, max, avg

SELECT CustomerId, SUM(Total)
FROM Invoice
GROUP BY CustomerId; -- Group By gives us a way to group the results of an agg. function by entries


SELECT CustomerId, SUM(Total) AS Sum_Total
FROM Invoice
WHERE BillingCountry != 'USA'
GROUP BY CustomerId
HAVING SUM(Total) > 40
ORDER BY Sum_Total DESC, CustomerId; 

-- Logical order of operations is:
-- FROM
-- WHERE
-- GROUP BY
-- HAVING
-- SELECT
-- ORDER BY


--JOINS
--accessing more than one table to return the desired data

SELECT * 
FROM Employee As e1 CROSS JOIN Employee As e2
WHERE e1.EmployeeID != e2.EmployeeId;

-- Cross Join
--Inner Join
-- Left/Right Join
-- Outter Jojn

-- every album by artist
SELECT Album.Title AS [Album Title], Artist.Name As [Artist Name]
FROM Album INNER JOIN Artist ON Album.ArtistId = Artist.ArtistId


SELECT al.Title, ar.Name
FROM Album As al INNER JOIN Artist As ar
    ON al.ArtistId = ar.ArtistId;


-- all rock songs, showing the name in the format "Artist-Name - Song-Name"

-- genre has genre name and genre ID
--track has track name, genre id
--album id and artist id
--artist has name and artist id


SELECT *
FROM Track
    INNER JOIN Genre ON Genre.GenreID = Track.GenreId
    JOIN Album ON Track.AlbumID = Album.AlbumId
    JOIN Artist ON Album.ArtistID = Artist.ArtistId



SELECT *
FROM Genre -- genre has genre name and genre ID


Select *
FROM Track

SELECT *
FROM Artist







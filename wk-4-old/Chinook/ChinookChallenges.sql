-- On the Chinook DB, practice writing queries with the following exercises

-- List all customers (full name, customer id, and country) who are not in the USA
-- Get a list of tables and views in the current database
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country!= 'USA'



-- List all customers from Brazil
SELECT *
FROM Customer
WHERE Country = 'Brazil';


-- List all sales agents
SELECT *
FROM Employee
WHERE title = 'Sales support Agent';


-- Retrieve a list of all countries in billing addresses on invoices
SELECT DISTINCT BillingCountry
FROM Invoice;


-- Retrieve how many invoices there were in 2009, and what was the sales total for that year?
    -- (challenge: find the invoice count sales total for every year using one query)

SELECT COUNT(Total) As InvoiceIn2009,  SUM(Total) As TotalSales
FROM Invoice
where InvoiceDate LIKE '%2009%'

SELECT BillingCountry, COUNT(BillingCountry) 
FROM Invoice 
GROUP BY BillingCountry;


-- how many line items were there for invoice #37

select Count(ar.InvoiceId) as "Number of Line Items of Invoice 37" 
from InvoiceLine ar 
where ar.InvoiceId = 37;


-- how many invoices per country?
SELECT m.BillingCountry, COUNT(m.BillingCountry) as "Number of Invoices" 
FROM Invoice m 
GROUP BY m.BillingCountry;


-- Retrieve the total sales per country, ordered by the highest total sales first.




-- JOINS CHALLENGES
-- Show all invoices of customers from brazil (mailing address not billing)
SELECT * 
FROM Invoice
WHERE BillingCountry = 'Brazil'


-- Show all invoices together with the name of the sales agent for each one
SELECT Invoice .* , Employee.FirstName + ' ' + Employee.LastName As FULLNAME
FROM Invoice INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId

--or do this

SELECT inv.* , emp.FirstName + ' ' + emp.LastName AS SalesRep
FROM Invoice inv INNER JOIN Customer cus ON inv.CustomerId = cus.CustomerID 
JOIN Employee emp ON cus.SupportRepId = emp.EmployeeId




-- Show all playlists ordered by the total number of tracks they have


-- Which sales agent made the most sales in 2009?


-- How many customers are assigned to each sales agent?


-- Which track was purchased the most ing 20010?


-- Show the top three best selling artists.


-- Which customers have the same initials as at least one other customer?
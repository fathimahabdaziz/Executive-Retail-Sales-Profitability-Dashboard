-- ======================================================
-- PROJECT: Retail Executive Sales Analysis
-- DESCRIPTION: Database Schema, Data, and Relationships
-- ======================================================

-- SECTION 1: CREATE TABLES (The Structure)
-- Creating the Dimension tables first so the Fact table can reference them.

CREATE TABLE Dim_Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
);

CREATE TABLE Dim_Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Segment VARCHAR(50)
);

CREATE TABLE Dim_Date (
    DateKey DATE PRIMARY KEY,
    Year INT,
    MonthName VARCHAR(20),
    Quarter INT
);

CREATE TABLE Fact_Sales (
    SalesID INT PRIMARY KEY,
    DateKey DATE,
    ProductID INT,
    CustomerID INT,
    Quantity INT,
    Revenue DECIMAL(18, 2)
);

-- SECTION 2: DATA INSERTION (The Rows)
-- Adding the sample data we used for our January 2026 report.

INSERT INTO Dim_Product VALUES 
(1, 'Laptop', 'Electronics'),
(2, 'Paper', 'Office Supplies'),
(3, 'Phone', 'Electronics');

INSERT INTO Dim_Customer VALUES 
(101, 'John Doe', 'Consumer'),
(102, 'Acme Corp', 'Corporate'),
(103, 'Jane Smith', 'Home Office');

INSERT INTO Dim_Date VALUES 
('2026-01-01', 2026, 'January', 1),
('2026-01-02', 2026, 'January', 1);

INSERT INTO Fact_Sales VALUES 
(1, '2026-01-01', 1, 101, 1, 1200.00),
(2, '2026-01-01', 2, 102, 5, 150.00),
(3, '2026-01-02', 3, 103, 1, 610.00);

-- SECTION 3: RELATIONSHIPS (The Star Schema)
-- Defining Foreign Keys to ensure data integrity and model performance.

ALTER TABLE Fact_Sales ADD CONSTRAINT FK_Product FOREIGN KEY (ProductID) REFERENCES Dim_Product(ProductID);
ALTER TABLE Fact_Sales ADD CONSTRAINT FK_Customer FOREIGN KEY (CustomerID) REFERENCES Dim_Customer(CustomerID);
ALTER TABLE Fact_Sales ADD CONSTRAINT FK_Date FOREIGN KEY (DateKey) REFERENCES Dim_Date(DateKey);
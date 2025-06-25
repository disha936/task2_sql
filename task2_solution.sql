
-- Create Table
CREATE TABLE Employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary INTEGER,
    email TEXT
);

-- Insert Data
INSERT INTO Employees (id, name, department, salary, email) VALUES
(1, 'Amit', 'HR', 40000, 'amit@example.com'),
(2, 'Priya', 'IT', 50000, NULL),
(3, 'Ravi', NULL, 30000, 'ravi@example.com'),
(4, 'Neha', 'Finance', NULL, NULL),
(5, 'Raj', 'IT', 55000, 'raj@example.com');

-- Update department for Ravi
UPDATE Employees
SET department = 'Sales'
WHERE name = 'Ravi';

-- Update NULL salaries to default 35000
UPDATE Employees
SET salary = 35000
WHERE salary IS NULL;

-- Delete employees with salary less than 30000
DELETE FROM Employees
WHERE salary < 30000;

-- Delete employees with NULL emails
DELETE FROM Employees
WHERE email IS NULL;

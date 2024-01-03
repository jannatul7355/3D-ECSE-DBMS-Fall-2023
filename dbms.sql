
-- 1. AND | OR
SELECT * FROM employees
WHERE department = 'Sales' AND (salary < 60000 OR salary > 40000);

-- 2. ALTER TABLE
ALTER TABLE customers
ADD COLUMN email_address VARCHAR(50);

-- 3. AS (alias)
SELECT first_name AS "First", last_name AS "Last"
FROM employees;

-- 4. BETWEEN
SELECT * FROM products
WHERE price BETWEEN 20 AND 30;

-- 5. CREATE DATABASE
CREATE DATABASE university_db;

-- 6. CREATE TABLE
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT
);

-- 7. CREATE INDEX
CREATE INDEX idx_category ON products(category);

-- 8. CREATE VIEW
CREATE VIEW high_it_salaries AS
SELECT * FROM employees WHERE salary > 90000 AND department = 'IT';

-- 9. DELETE
DELETE FROM orders
WHERE order_date < '2023-05-01';

-- 10. GRANT
GRANT UPDATE, DELETE ON orders TO order_manager;

-- 11. REVOKE
REVOKE SELECT ON employees FROM temporary_user;

-- 12. COMMIT
COMMIT;

-- 13. ROLLBACK
ROLLBACK TO sp1;

-- 14. SAVEPOINT
SAVEPOINT sp2;

-- 15. DROP DATABASE
DROP DATABASE unused_database;

-- 16. DROP INDEX
DROP INDEX idx_product_name ON products;

-- 17. DROP TABLE
DROP TABLE old_table;

-- 18. EXISTS
SELECT * FROM orders
WHERE EXISTS (SELECT 1 FROM customers WHERE customers.customer_id = orders.customer_id);

-- 19. GROUP BY
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 20. HAVING
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 70000;
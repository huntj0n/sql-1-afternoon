-- TABLE PERSON
-- P1
CREATE TABLE person ( 
    person_id SERIAL PRIMARY KEY, 
    name VARCHAR(200), 
    age INTEGER, 
    height INTEGER, 
    city VARCHAR(200), 
    favorite_color VARCHAR(200)
);

-- P2
INSERT INTO person ( name, age, height, city, favorite_color ) VALUES 
( 'Chuck Norris', 21, 120, 'New York', 'green' );
( 'Kill Bill', 31, 140, 'Chicago', 'blue' );
( 'Chad Brad', 41, 160, 'Los Angeles', 'red' );
( 'Little Biggie', 55, 180, 'Seattle', 'yellow' );
( 'Orange Peel', 99, 200, 'Dallas', 'orange' );

-- P3
SELECT * FROM person ORDER BY height DESC;

-- P4
SELECT * FROM person ORDER BY height ASC;

-- P5
SELECT * FROM person ORDER BY age DESC;

-- P6
SELECT * FROM person WHERE age > 20;

-- p7
SELECT * FROM person WHERE age = 18;

-- p8
SELECT * FROM person WHERE age < 20 OR age > 30;

-- p9
SELECT * FROM person WHERE age != 27;

-- p10
SELECT * FROM person WHERE favorite_color != 'red';

-- p11
SELECT * FROM person WHERE favorite_color != 'red' AND != 'blue';

-- p12
SELECT * FROM person WHERE favorite_color = 'green' OR favorite_color = 'orange';

-- p13
SELECT * FROM person WHERE favorite_color IN ('green', 'orange', 'blue');

-- p14
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');

-- TABLE ORDERS
-- p1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);
-- p2
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (1, 'NOT A FLAME THROWER', 500.0001, 2);
INSERT INTO orders (person_id, product_name, product_price, quantity) VALUES (2, 'Model S', 85000.0001, 1);
-- p3
SELECT * FROM orders;
-- p4
SELECT SUM(quantity) FROM orders;
-- p5
SELECT SUM(product_price) FROM orders;
-- p6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

-- TABLE ARTISTS
-- p1
INSERT INTO artist (name) VALUES 
('Bach');
('Mozart');
('Beethoven');
-- p2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
-- p3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
-- P4
SELECT * FROM artist WHERE name LIKE ('Black%');
-- P5
SELECT * FROM artist WHERE name LIKE ('%Black%');

-- TABLE EMPLOYEE
-- P1
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
-- p2
SELECT MAX(birth_date) FROM employee;
-- p3
SELECT MIN(birth_date) FROM employee;
-- p4
SELECT * FROM employee WHERE reports_to = 2;
-- p5
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- TABLE INVOICE
-- P1
SELECT COUNT(*) FROM invoice WHERE billing_country = "USA";
-- P2
SELECT MAX(total) FROM invoice;
-- P3
SELECT MIN(total) FROM invoice;
-- P4
SELECT * FROM invoice WHERE total > 5;
-- P5
SELECT COUNT(*) FROM invoice WHERE total < 5;
-- P6
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ')
-- p7
SELECT AVG(total) FROM invoice;
-- P8
SELECT SUM(total) FROM invoice;
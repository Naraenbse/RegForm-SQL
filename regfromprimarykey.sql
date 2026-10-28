CREATE TABLE registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    date_of_birth DATE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone CHAR(10) NOT NULL,
    gender ENUM('Male', 'Female') NOT NULL,
    telephone VARCHAR(20) NOT NULL,
    image VARCHAR(255) NOT NULL,

    joining_date DATE NOT NULL,
    joining_time TIME NOT NULL,

    department VARCHAR(50) NOT NULL,
    month_value CHAR(7) NOT NULL,
    range_value INT DEFAULT 50,
    website_url VARCHAR(255) NOT NULL,
    week_value VARCHAR(8) NOT NULL,

    country VARCHAR(50) NOT NULL,
    state VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,

    large_number BIGINT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    UNIQUE (email)
);




INSERT INTO registrations (
    name,
    email,
    date_of_birth,
    password,
    phone,
    gender,
    telephone,
    image,
    joining_date,
    joining_time,
    department,
    month_value,
    range_value,
    website_url,
    week_value,
    country,
    state,
    city,
    address,
    large_number
)
VALUES (
    'Bachira',
    'bachira@example.com',
    '2006-01-26',
    'password11',
    '9876543210',
    'Male',
    '04221234567',
    'bachira.jpg',
    '2026-10-28',
    '09:30:00',
    'CSE',
    '2026-10',
    50,
    'https://lewishamilton.com',
    '2026-W44',
    'India',
    'Tamil Nadu',
    'Madurai',
    '123 Main Road, Madurai',
    9876543210
);


FOREIGN KEY
CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE states (
    state_id INT AUTO_INCREMENT PRIMARY KEY,
    state_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,

    FOREIGN KEY (country_id)
        REFERENCES countries(country_id),

    UNIQUE (country_id, state_name)
);

CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(100) NOT NULL,
    state_id INT NOT NULL,

    FOREIGN KEY (state_id)
        REFERENCES states(state_id),

    UNIQUE (state_id, city_name)
);
INSERT INTO countries (country_name)
VALUES ('India'), ('USA'), ('China');

INSERT INTO states (state_name, country_id)
VALUES
('Tamil Nadu', 1),
('Kerala', 1),
('Karnataka', 1),
('California', 2),
('Texas', 2),
('Zhuang', 3),
('Tokyo', 3);

INSERT INTO cities (city_name, state_id)
VALUES
('Chennai', 1),
('Coimbatore', 1),
('Madurai', 1),
('Kochi', 2),
('Kozhikode', 2),
('Bengaluru', 3),
('Los Angeles', 4),
('San Diego', 4),
('Houston', 5),
('Dallas', 5),
('Kanto', 6),
('Senjoo', 7);

SELECT * FROM countries;
SELECT * FROM states;
SELECT * FROM cities;




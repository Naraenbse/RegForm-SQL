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

SELECT * FROM registrations ;



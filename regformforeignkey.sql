
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
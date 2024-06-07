-- Create a new database
CREATE DATABASE IF NOT EXISTS docker_db;

-- Switch to the new database
USE docker_db;

-- Create the first table
CREATE TABLE IF NOT EXISTS interns_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


-- Insert initial data into the first table
INSERT INTO interns_table (name) VALUES
('papila'),
('sujata');



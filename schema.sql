CREATE TABLE IF NOT EXISTS Users (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Login VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Colors (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT NOT NULL,
    Name VARCHAR(255) NOT NULL
);

-- Sample user for testing (login: demo / password: demo123)
INSERT INTO Users (Login, Password, firstName, lastName) VALUES ('demo', 'demo123', 'Demo', 'User');

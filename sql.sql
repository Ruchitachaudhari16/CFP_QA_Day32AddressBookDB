Create database AddressBookServiceDB;
use AddressBookServiceDB;
CREATE TABLE AddressBook (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip VARCHAR(10),
    phone_number VARCHAR(15),
    email VARCHAR(255)
);

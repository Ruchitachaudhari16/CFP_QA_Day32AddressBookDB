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


		INSERT INTO AddressBook(first_name,last_name,address,city,state,zip,phone_number,email)
        VALUES 
		('Ruchita','Chaudhari','RadhaNagar','Amravti','Maharastra',444105,9158834080,'cruchi@gmail.com'),
		('Rucha','Ingale','Alkachowk','Pune','Maharastra',444105,9158834080,'rucha@gmail.com'),
		('Nikita', 'Chaudhari','Bypass','Kharadi','Maharastra',444105,9150034080,'cnikii@gmail.com'),
		('Swati','Lodha','washim','karanja','Maharastra',442105,9158809999,'swati987@gmail.com'),
		('shama','ingale','rahatni','Amravti','Maharastra',400105,9356763410,'shamaingale@gmail.com'),
		('Rasikaa','Deshmukh','Pune','Kharadi','Maharastra',411105,9888888880,'rasika@gmail.com'),
		('tanavi','banait','Mumbai','Airoli','Maharastra',444100,9345678900,'tanavibanait@gmail.com');
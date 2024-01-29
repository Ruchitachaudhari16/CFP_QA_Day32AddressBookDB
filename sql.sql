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
        SELECT *from AddressBoook;
      #UC4:-update contact.  
		UPDATE AddressBook SET city='Delhi' where first_name='Rucha';
        UPDATE AddressBook SET city='Delhi' WHERE first_name='Rucha' AND key_column_name = key_value;
SET SQL_SAFE_UPDATES = 0;

	#UC5:-Delete person using persons name 
        DELETE FROM AddressBook WHERE first_name='Nikita';
        select * FROM AddressBook;
        #UC6 Ability to retrieve Person Belonging to a city or state from the AddressBook
		SELECT * From AddressBook WHERE city='Amravti';
        
        #UC7 Ability to understand the size of address book by city and State
		SELECT COUNT(*) From AddressBook WHERE city='Amravti' ;
        SELECT COUNT(*) From AddressBook WHERE state ='Maharastra';
        # SELECT COUNT(*) From AddressBook WHERE city='Amravti' AND state ='Maharastra' ;
        
        #UC8 Ability to retrieve entries sorted 
		SELECT * From AddressBook ORDER BY city ASC;
		SELECT * From AddressBook Where city='Amravti' ORDER BY first_name ASC;
		SELECT * From AddressBook ORDER BY first_name;
        
        #UC9:-Ability to identify each Address Book with name and type.
		-- Here the type could Family, Friends,Profession, etc Alter Address Book to add name and type
		ALTER TABLE AddressBook ADD AddressBookType VARCHAR(50);
		ALTER TABLE AddressBook ADD AddressBookName VARCHAR(50);
		UPDATE AddressBook SET AddressBookType='Friends',AddressBookName='AB' 
		WHERE id='2';
		UPDATE AddressBook SET AddressBookType='Friends' ,AddressBookName='KL' 
		WHERE id='4';
		UPDATE AddressBook SET AddressBookType='Office' ,AddressBookName='MN' 
		WHERE id='5';
        UPDATE AddressBook SET AddressBookType='Emergancy' ,AddressBookName='NB' 
		WHERE id='1';
		UPDATE AddressBook SET AddressBookType='Friends' ,AddressBookName='Siu' 
		WHERE id='6';
        
        #UC10-bility to get number of contact persons i.e. count by type
		#Ruchita is variable where will store the adressbooktype count
		SELECT AddressBookType,COUNT(AddressBookType) AS Ruchita From AddressBook GROUP BY AddressBookType;
		
       
       
        

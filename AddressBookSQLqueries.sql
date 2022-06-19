/*-----UC1-----*/

CREATE DATABASE AddressBook;
use AddressBook;

/*-----UC2----*/

create table Address_Book (
	ID int IDENTITY(1,1) PRIMARY KEY (ID),
	FIRSTNAME varchar(50),
	LASTNAME varchar(50),
	ADDRESSs varchar(100),
	CITY varchar(50),
	STATE varchar(50),
	ZIP varchar(6),
	PHONENO varchar(12),
	EMAIL varchar(50));

	SELECT * FROM Address_Book;

/*------UC3-----*/

INSERT INTO Address_Book VALUES('VIJAYA','TALLURI','6/72,PARAWADA','VIZAG','ANDHRA PRADESH',530045,9553945608,'vijaya@gmail.com');
INSERT INTO Address_Book VALUES('HARSHA','TALLURI','5/83,PEDATUMMIDI','BANTUMILLI','ANDHRA PRADESH',521329,9291261316,'harsha@gmail.com');
SELECT * FROM Address_Book WHERE FIRSTNAME = 'VIJAYA';
UPDATE Address_Book SET State = 'HYDERABAD' WHERE FIRSTNAME = 'VIJAYA';

/*---UC4-----*/
SELECT * FROM Address_Book WHERE City = 'VIZAG';
SELECT * FROM Address_Book WHERE State = 'BANTUMILLI';
SELECT * FROM Address_Book WHERE State = 'HYDERABAD';

/*----UC5-----*/
SELECT COUNT(*) FROM Address_Book WHERE State = 'ANDHRA PRADESH';

/*----UC6-----*/
SELECT * FROM Address_Book ORDER BY FIRSTNAME;

/*----UC7-----*/
ALTER TABLE Address_Book ADD Type VARCHAR(20);

/*----UC8-----*/
UPDATE Address_Book SET Type='FRIENDS' WHERE FirstName = 'VIJAYA';

/*----UC9-----*/
UPDATE Address_Book SET Type='FAMILY' WHERE FirstName = 'HARSHA' OR FirstName = 'AARNA';

/*----UC10-----*/
SELECT COUNT(*) FROM Address_Book WHERE Type='Family';

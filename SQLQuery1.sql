CREATE DATABASE AUTOWORD

DROP DATABASE AUTOWORD
--
CREATE TABLE CARBARRANDS
(
	IDCB INT NOT NULL PRIMARY KEY,
	BRANDS NVARCHAR(30)
)

--
CREATE TABLE WARRANTY
(
	IDWARRANTY INT NOT NULL PRIMARY KEY,
	SCHEMES NVARCHAR(50)
)
--
ALTER TABLE CAR 
(
	IDCAR INT IDENTITY(1,1) PRIMARY KEY,
	NOTE VARCHAR (300),
	PRICE FLOAT,
	NAMECAR VARCHAR(30),
	FUELTYPE VARCHAR(30),
	STOCK VARCHAR(30),
	GASOLINE VARCHAR(30),
	ENGINE VARCHAR (30),
	TRANSMISSION VARCHAR(30),
	VIN VARCHAR(30),
	MILEAGE VARCHAR(30),
	IDWARRANTY INT FOREIGN KEY REFERENCES WARRANTY(IDWARRANTY),
	IDCB INT FOREIGN KEY REFERENCES CARBARRANDS(IDCB),
	IMAGECAR VARCHAR(50)
)
--
CREATE TABLE BANK
(
	IDBANK INT NOT NULL PRIMARY KEY,
	MAXAMOUNT FLOAT,
	INTERESTRATE FLOAT,
	LURATION NVARCHAR(50),
	MONEYTOPAY FLOAT,
	CONDITIONS NVARCHAR(100), 
)
--
CREATE TABLE COMPANY 
(
	IDCOMPANY INT NOT NULL PRIMARY KEY,
	PHONE FLOAT,
	EMAIL NVARCHAR(30), 
)

--

--
INSERT INTO dbo.CARBARRANDS VALUES (1,N'Acura')
INSERT INTO dbo.CARBARRANDS VALUES (2,N'BMW')
INSERT INTO dbo.CARBARRANDS VALUES (3,N'Chevrolet')
INSERT INTO dbo.CARBARRANDS VALUES (4,N'Ford')
INSERT INTO dbo.CARBARRANDS VALUES (5,N'Honda')
INSERT INTO dbo.CARBARRANDS VALUES (6,N'Jeep')
--
INSERT INTO dbo.WARRANTY VALUES (5448,N'ENGINE 12 MONTHS,WHEEL 5 YEAR,NANO 2 YEAR')
INSERT INTO dbo.WARRANTY VALUES (4889,N'ENGINE 24 MONTH,WHEEL 3 YEAR,NANO 4 YEAR ')
INSERT INTO dbo.WARRANTY VALUES (7999,N'ENGINE 20 MONTH,WHEEL 2 YEAR,NANO 3 YEAR')
INSERT INTO dbo.WARRANTY VALUES (9945,N'ENGINE 15 MOUNT,WHEEL 2 YEAR,NANO 2 YEAR')
INSERT INTO dbo.WARRANTY VALUES (7991,N'ENGINE 20 MONTH,WHEEL 4 YEAR,NANO 2 YEAR')
INSERT INTO dbo.WARRANTY VALUES (9794,N'ENGINE 24 MONTH,WHEEL 5 YEAR,NANO 3 YEAR')
--
INSERT INTO dbo.CAR VALUES (99713,258064,N'AUDI A8',5448,478,'car-1.jpg')
INSERT INTO dbo.CAR VALUES (74216,129032,N'AUDI A7',9794,478,'car-2.jpg')
INSERT INTO dbo.CAR VALUES (41551,176350,N'AUDI R8',9945,478,'car-3.jpg')
INSERT INTO dbo.CAR VALUES (65132,300000,N'BMW HOMMAGE',7999,855,'car-4.jpg')
INSERT INTO dbo.CAR VALUES (35135,162627,N'BMW I8',4889,855,'car-5.jpg')
INSERT INTO dbo.CAR VALUES (65133,164000,N'BMW M3',7999,855,'car-6.jpg')
INSERT INTO dbo.CAR VALUES (31531,3000000,N'BUGATTI VERON',9945,659,'car-7.jpg')
INSERT INTO dbo.CAR VALUES (23233,2000000,N'BUGATTI EB 118',7991,659,'car-1.jpg')
INSERT INTO dbo.CAR VALUES (48631,2600000,N'BUGATTI CHIRON',5448,659,'car-2.jpg')
INSERT INTO dbo.CAR VALUES (65151,51000,N'FORD EVERET',4889,799,'car-3.jpg')
INSERT INTO dbo.CAR VALUES (74651,100000,N'FORD EVERET',5448,799,'car-4.jpg')
INSERT INTO dbo.CAR VALUES (21215,150000,N'FORD EVERET',9945,799,'car-5.jpg')
INSERT INTO dbo.CAR VALUES (56151,20000,N'HONDA CITY',7991,365,'car-6.jpg')
INSERT INTO dbo.CAR VALUES (65461,50000,N'HONDA CIVIC',9945,365,'car-7.jpg')
INSERT INTO dbo.CAR VALUES (97894,20000,N'HONDA JAZZ',7999,365,'car-1.jpg')
INSERT INTO dbo.CAR VALUES (64511,18000,N'SUZUKI VITARAS',9794,777,'car-2.jpg')
INSERT INTO dbo.CAR VALUES (65161,25806,N'SUZUKI CIAZ',5448,777,'car-3.jpg')
INSERT INTO dbo.CAR VALUES (48651,120000,N'SUZUKI IGNIS',4889,777,'car-4.jpg')
--
INSERT INTO dbo.BANK VALUES (315535,5000000,20,N'CAR AUDI',380000,N'ID CARD')
INSERT INTO dbo.BANK VALUES (654651,3000000,30,N'CAR BMW',3000000,N'PAPER FROM HOME')
INSERT INTO dbo.BANK VALUES (665654,6000000,40,N'CAR BUGATTI',3500000,N'PAPER FROM HOME')
INSERT INTO dbo.BANK VALUES (468656,2000000,20,N'CAR FORD',2000000,N'ID CARD')
INSERT INTO dbo.BANK VALUES (651515,3000000,20,N'CAR HONDA',2000000,N'PAPER FROM HOME')
INSERT INTO dbo.BANK VALUES (615313,4000000,35,N'CAR SUZUKI',3400000,N'ID CAR')
--
INSERT INTO dbo.COMPANY VALUES (6846555,01465464840,N'AUDI@GMAIL.COM')
INSERT INTO dbo.COMPANY VALUES (5433131,09514335133,N'BMW@GMAIL.COM')
INSERT INTO dbo.COMPANY VALUES (3213515,05468415166,N'FORD@GMAIL.COM')
INSERT INTO dbo.COMPANY VALUES (5221353,01643548466,N'BUGATTI@GMAIL.COM')
INSERT INTO dbo.COMPANY VALUES (3131232,01964684646,N'HONDA@GMAIL.COM')
INSERT INTO dbo.COMPANY VALUES (6513131,01679465165,N'SUZUKI@GMAIL.COM')


 




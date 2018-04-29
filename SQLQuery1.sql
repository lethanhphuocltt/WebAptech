CREATE DATABASE AUTOWORD

DROP DATABASE AUTOWORD
--
CREATE TABLE MAKE
(
	IDMAKE INT IDENTITY(1,1) PRIMARY KEY,
	BRANDS NVARCHAR(30),
	ADDRESSBRANDS NVARCHAR(100)
)

--

--
CREATE TABLE CAR 
(
	IDCAR INT IDENTITY(1,1) PRIMARY KEY,
	NOTE VARCHAR (300),
	PRICE FLOAT,
	NAMECAR VARCHAR(100),
	FUELTYPE VARCHAR(30),
	STOCK VARCHAR(30),
	GASOLINE VARCHAR(30),
	ENGINE VARCHAR (30),
	TRANSMISSION VARCHAR(30),
	VIN VARCHAR(30),
	MILEAGE VARCHAR(30),
	IDMAKE INT FOREIGN KEY REFERENCES MAKE(IDMAKE),
	IMAGECAR VARCHAR(50),
	YEARMAKE VARCHAR(5),
)
--

CREATE TABLE BANK
(
	IDBANK INT IDENTITY(1,1) PRIMARY KEY,
	NAMEBANK VARCHAR(50),
	IMAGEBANK VARCHAR(50),
	SUMMARY VARCHAR(500),
	MAXAMOUNT FLOAT,
	INTERESTRATE FLOAT,
	TIMEREPAY INT
)
CREATE TABLE CONDITIONS
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	IDBANK INT FOREIGN KEY REFERENCES BANK(IDBANK),
	CONDITION VARCHAR(200)
)


--


--

--
INSERT INTO dbo.MAKE VALUES (N'Acura',NULL)
INSERT INTO dbo.MAKE VALUES (N'BMW',NULL)
INSERT INTO dbo.MAKE VALUES (N'Chevrolet',NULL)
INSERT INTO dbo.MAKE VALUES (N'Ford',NULL)
INSERT INTO dbo.MAKE VALUES (N'Honda',NULL)
INSERT INTO dbo.MAKE VALUES (N'Jeep',NULL)
--

--

INSERT INTO dbo.CAR
VALUES  ( 
          '***CARFAX ONE OWNER***, **MOONROOF / SUNROOF, **NAVIGATION / GPS, **NO ACCIDENTS - CLEAN HISTORY, **MAZDA CERTIFIED, **LEATHER INTERIOR, **HEATED SEATS, **' , -- NOTE - varchar(300)
          29500 , -- PRICE - float
          'Jeep Wrangler Unlimited Sport' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'MP1218' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.6l v6 24v vvt' , -- ENGINE - varchar(30)
          '5-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '1C4HJWD' , -- VIN - varchar(30)
          '41,730' , -- MILEAGE - varchar(30)
          3 , -- IDMAKE - int
          'car-1.jpg',  -- IMAGECAR - varchar(50)
		  '2016'
        )

--
INSERT INTO dbo.BANK VALUES  ('HSBC','HSBC.jpg','We always provide convenient banking services through various service channels to support your needs in the best way.',900000,0.07,12)
INSERT INTO dbo.BANK VALUES  ('ANZ','ANZ.jpg','Advice does not take into account your personal needs and financial circumstances. Please consider if it is appropriate for you and read the terms and conditions, Product Disclosure Statement and Financial Services Guide before acquiring any product. Applications for credit subject to approval. Terms and conditions available on application. Fees and charges apply.',1000000,0.075,36)
INSERT INTO dbo.BANK VALUES  ('Standard Chartered','Standard_Chartered.jpg','We believe convenience balances a busy life schedule. Presenting online banking puts the bank at your service anytime and anywhere you want.',800000,0.09,16)
INSERT INTO dbo.BANK VALUES  ('Shinhan Vietnam','Shinhan_Vietnam.jpg','Since opening its first representative office in Ho Chi Minh City, We have constantly expanded our network to bring the best service to our customers. To date, Shinhan Bank has 18 branches and transaction offices nationwide. With the expansion of the network, the number of Shinhan Bank customers in Vietnam has increased rapidly.',1200000,0.068,24)

INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (1,'Have monthly income greater than 50000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (1,'Total assets over 1500000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (1,'Full identity papers')


INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (2,'Have monthly income greater than 80000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (2,'Total assets over 1900000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (2,'Full identity papers')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (2,'No previous loan')


INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (3,'Have monthly income greater than 90000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (3,'Total assets over 2000000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (3,'Full identity papers')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (3,'No previous loan')


INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (4,'Have monthly income greater than 100000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (4,'Total assets over 8000000$')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (4,'Full identity papers')
INSERT INTO dbo.CONDITIONS(IDBANK, CONDITION )VALUES  (4,'No previous loan')

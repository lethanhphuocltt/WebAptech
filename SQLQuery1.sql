CREATE DATABASE AUTOWORD

DROP DATABASE AUTOWORD
--
CREATE TABLE MAKE
(
	IDMAKE INT IDENTITY(1,1) PRIMARY KEY,
	BRANDS NVARCHAR(30),
	ADDRESSBRANDS NVARCHAR(100),
	NOTE VARCHAR(600),
	IMAGEMAKE VARCHAR(50)
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
INSERT INTO dbo.MAKE VALUES (N'Acura',NULL,'A premium brand of Honda, Japan. Originally introduced in 1986 in the North American and Hong Kong markets, the brand mainly produces luxury cars and sports cars. In 2004, the brand was introduced and sold in Mexico, in 2006 in China and Russia, and in the coming years Honda plans to introduce it to the Japanese market.','Acura.jpg')
INSERT INTO dbo.MAKE VALUES (N'BMW',NULL,'BMW (Bayerische Motoren Werke AG) is an important German car and motorcycle manufacturer. BMW is world-famous brand for luxury, sporty design and high performance.','BMW.jpg')
INSERT INTO dbo.MAKE VALUES (N'Chevrolet',NULL,'Chevrolet, commonly known as Chevy, is a full-fledged Chevrolet Division of the General Motors Company, a US automotive division of General Motors (GM). Louis Chevrolet and the founder of General Motors were disgraced. William C. Durant founded the company on November 3, 1911 as the Chevrolet Motor Car Company.','Chevrolet.jpg')
INSERT INTO dbo.MAKE VALUES (N'Ford',NULL,'The company was founded by Henry Ford and its shareholders on June 16, 1903. In addition to Lincoln is subsidiaries, Ford also owns a minority stake in Mazda Japan and Aston Martin of Britain. Former Ford UK companies such as Jaguar and Land Rover were sold to India is Tata in March 2008.','Ford.jpg')
INSERT INTO dbo.MAKE VALUES (N'Honda',NULL,'Honda is the world is largest engine manufacturer based in Tokyo, Japan. with more than 14 million units annually. Since 2004, the company has started to produce clean and quiet diesel engines that do not need filters to meet pollution standards. However, it can be said that the foundation that makes up this company is work is from making the motorbike.','Honda.jpg')
INSERT INTO dbo.MAKE VALUES (N'Jeep',NULL,'An American automobile brand is a trademark of Chrysler Group LLC in a global alliance with Fiat. In 1987, the CEO of Chrysler Corporation acquired the Jeep brand, along with the remaining assets of American Motors.','Jeep.jpg')
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

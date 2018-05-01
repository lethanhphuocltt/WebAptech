CREATE DATABASE AUTOWORD

DROP DATABASE AUTOWORD
--
CREATE TABLE MAKE
(
	IDMAKE INT IDENTITY(1,1) PRIMARY KEY,
	BRANDS NVARCHAR(30),
	ADDRESSMAKE VARCHAR(100),
	PHONEMAKE VARCHAR(20),
	MAILMAKE VARCHAR(50),
	WEBMAKE VARCHAR(100),
	DEFAULTLAT VARCHAR(50),
	DEFAULTLNG VARCHAR(50),
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

CREATE TABLE WARRANTY
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	IDMAKE INT FOREIGN KEY REFERENCES MAKE(IDMAKE),
	TIMEWARRANTY INT
)

CREATE TABLE CONDITIONSWARRANTY
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	IDWARRANTY INT FOREIGN KEY REFERENCES dbo.WARRANTY(ID),
	CONDITION VARCHAR(500)
)

CREATE TABLE DETAILSWARRANTY
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	IDWARRANTY INT FOREIGN KEY REFERENCES dbo.WARRANTY(ID),
	DETAIL VARCHAR(500)
)


--


--

INSERT INTO dbo.MAKE VALUES  ( N'Acura','Ward 15, Go Vap District, Ho Chi Minh City','098 555 777','acuracar@gmail.com','acuracar.com','10.827842' ,'106.642045' ,'A premium brand of Honda, Japan. Originally introduced in 1986 in the North American and Hong Kong markets, the brand mainly produces luxury cars and sports cars. In 2004, the brand was introduced and sold in Mexico, in 2006 in China and Russia, and in the coming years Honda plans to introduce it to the Japanese market.' ,'Acura.jpg')
INSERT INTO dbo.MAKE VALUES  ( N'BMW','45 Truong Son Street, Ward 2, Tan Binh District, Ho Chi Minh City','098 666 888','bmwcar@gmail.com','bmwcar.com','10.813685','106.663277' ,'BMW (Bayerische Motoren Werke AG) is an important German car and motorcycle manufacturer. BMW is world-famous brand for luxury, sporty design and high performance.' ,'BMW.jpg')
INSERT INTO dbo.MAKE VALUES  ( N'Chevrolet','170/5 Hoang Van Thu Street, Ward 9, Phu Nhuan District, Ho Chi Minh City','098 444 777','chevroletcar@gmail.com','chevroletcar.com','10.799837', '106.675442' ,'Chevrolet, commonly known as Chevy, is a full-fledged Chevrolet Division of the General Motors Company, a US automotive division of General Motors (GM). Louis Chevrolet and the founder of General Motors were disgraced. William C. Durant founded the company on November 3, 1911 as the Chevrolet Motor Car Company.' ,'Chevrolet.jpg')
INSERT INTO dbo.MAKE VALUES  ( N'Ford','7/2 Ho Bieu Chanh Street, Ward 12, Phu Nhuan District, Ho Chi Minh City, Ward 12','098 999 111','fordcar@gmail.com','fordcar.com','10.793998', '106.676910' ,'Chevrolet, commonly known as Chevy, is a full-fledged Chevrolet Division of the General Motors Company, a US automotive division of General Motors (GM). Louis Chevrolet and the founder of General Motors were disgraced. William C. Durant founded the company on November 3, 1911 as the Chevrolet Motor Car Company.' ,'Ford.jpg')
INSERT INTO dbo.MAKE VALUES  ( N'Honda','182 / 4A Le Van Sy Street, Ward 10, Phu Nhuan District, Ho Chi Minh City, Vietnam','098 444 333','hondacar@gmail.com','hondacar.com','10.793078', '106.670725' ,'Honda is the world is largest engine manufacturer based in Tokyo, Japan. with more than 14 million units annually. Since 2004, the company has started to produce clean and quiet diesel engines that do not need filters to meet pollution standards. However, it can be said that the foundation that makes up this company is work is from making the motorbike.' ,'Honda.jpg')
INSERT INTO dbo.MAKE VALUES  ( N'Jeep','Lane 766/16/15, Ward 5, Tan Binh District, Ho Chi Minh City, Vietnam','098 555 222','jeepcar@gmail.com','jeepcar.com','10.788832', '106.663366' ,'An American automobile brand is a trademark of Chrysler Group LLC in a global alliance with Fiat. In 1987, the CEO of Chrysler Corporation acquired the Jeep brand, along with the remaining assets of American Motors.' ,'Jeep.jpg')

--
INSERT INTO dbo.WARRANTY VALUES  (1,24)
INSERT INTO dbo.WARRANTY VALUES  (2,56)
INSERT INTO dbo.WARRANTY VALUES  (3,123)
INSERT INTO dbo.WARRANTY VALUES  (4,78)
INSERT INTO dbo.WARRANTY VALUES  (5,24)
INSERT INTO dbo.WARRANTY VALUES  (6,24)


INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (1,'The  Vehicle  must  be  submitted  to  a  Ford  Authorised  Repairer  within  seven  days  of  any failure becoming apparent.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (1,'Before any work can be carried out under your Warranty, you must produce your Ford Service  History  Log  duly  stamped  and  showing  scheduled  servicing.  Invoices  and/or  receipts  in  respect  of  any  services  may  be  requested  and  all  parts  replaced  will  become the property of the Company.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (1,' The benefi ts of this Warranty are Vehicle based and there is no facility for the cover to be transferred to another vehicle.')

INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (2,'The  Vehicle  must  be  submitted  to  a  Ford  Authorised  Repairer  within  seven  days  of  any failure becoming apparent.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (2,'Before any work can be carried out under your Warranty, you must produce your Ford Service  History  Log  duly  stamped  and  showing  scheduled  servicing.  Invoices  and/or  receipts  in  respect  of  any  services  may  be  requested  and  all  parts  replaced  will  become the property of the Company.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (2,' The benefi ts of this Warranty are Vehicle based and there is no facility for the cover to be transferred to another vehicle.')

INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (3,'The  Vehicle  must  be  submitted  to  a  Ford  Authorised  Repairer  within  seven  days  of  any failure becoming apparent.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (3,'Before any work can be carried out under your Warranty, you must produce your Ford Service  History  Log  duly  stamped  and  showing  scheduled  servicing.  Invoices  and/or  receipts  in  respect  of  any  services  may  be  requested  and  all  parts  replaced  will  become the property of the Company.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (3,' The benefi ts of this Warranty are Vehicle based and there is no facility for the cover to be transferred to another vehicle.')

INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (4,'The  Vehicle  must  be  submitted  to  a  Ford  Authorised  Repairer  within  seven  days  of  any failure becoming apparent.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (4,'Before any work can be carried out under your Warranty, you must produce your Ford Service  History  Log  duly  stamped  and  showing  scheduled  servicing.  Invoices  and/or  receipts  in  respect  of  any  services  may  be  requested  and  all  parts  replaced  will  become the property of the Company.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (4,' The benefi ts of this Warranty are Vehicle based and there is no facility for the cover to be transferred to another vehicle.')

INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (5,'The  Vehicle  must  be  submitted  to  a  Ford  Authorised  Repairer  within  seven  days  of  any failure becoming apparent.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (5,'Before any work can be carried out under your Warranty, you must produce your Ford Service  History  Log  duly  stamped  and  showing  scheduled  servicing.  Invoices  and/or  receipts  in  respect  of  any  services  may  be  requested  and  all  parts  replaced  will  become the property of the Company.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (5,' The benefi ts of this Warranty are Vehicle based and there is no facility for the cover to be transferred to another vehicle.')

INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (6,'The  Vehicle  must  be  submitted  to  a  Ford  Authorised  Repairer  within  seven  days  of  any failure becoming apparent.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (6,'Before any work can be carried out under your Warranty, you must produce your Ford Service  History  Log  duly  stamped  and  showing  scheduled  servicing.  Invoices  and/or  receipts  in  respect  of  any  services  may  be  requested  and  all  parts  replaced  will  become the property of the Company.')
INSERT INTO dbo.CONDITIONSWARRANTY VALUES  (6,' The benefi ts of this Warranty are Vehicle based and there is no facility for the cover to be transferred to another vehicle.')


INSERT INTO dbo.DETAILSWARRANTY VALUES (1,'Warranty whole car parts')
INSERT INTO dbo.DETAILSWARRANTY VALUES (1,'Lubricant free')

INSERT INTO dbo.DETAILSWARRANTY VALUES (2,'Warranty whole car parts')
INSERT INTO dbo.DETAILSWARRANTY VALUES (2,'Lubricant free')

INSERT INTO dbo.DETAILSWARRANTY VALUES (3,'Warranty whole car parts')
INSERT INTO dbo.DETAILSWARRANTY VALUES (3,'Lubricant free')

INSERT INTO dbo.DETAILSWARRANTY VALUES (4,'Warranty whole car parts')
INSERT INTO dbo.DETAILSWARRANTY VALUES (4,'Lubricant free')

INSERT INTO dbo.DETAILSWARRANTY VALUES (5,'Warranty whole car parts')
INSERT INTO dbo.DETAILSWARRANTY VALUES (5,'Lubricant free')

INSERT INTO dbo.DETAILSWARRANTY VALUES (6,'Warranty whole car parts')
INSERT INTO dbo.DETAILSWARRANTY VALUES (6,'Lubricant free')

INSERT INTO dbo.CAR
VALUES  ( 
          '' , -- NOTE - varchar(300)
          , -- PRICE - float
          '' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '' , -- ENGINE - varchar(30)
          '' , -- TRANSMISSION - varchar(30)
          '' , -- VIN - varchar(30)
          '' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'BMW_9_1.jpg',  -- IMAGECAR - varchar(50)
		  ''
        )

INSERT INTO dbo.CAR
VALUES  ( 
          '2016 GRAY ACURA MDX ADVANCE, CLEAN CARFAX, HEATED GRAY LEATHER SEATS, NAVIGATION, LANE DEPARTURE ASSIST SYSTEM, FRONT AND REAR SENSORS, 360 DEGREE REAR BACK UP CAMERA, BLUETOOTH, MOON ROOF, POWER TAILGATE, ACURA CERTIFICATION INSPECTION COMPLETED.' , -- NOTE - varchar(300)
          33897, -- PRICE - float
          'Acura MDX 3.5L w/Advance & Entertainment Pkgs' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'PD8270' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          'V6 Cylinder' , -- ENGINE - varchar(30)
          '9-SPEED' , -- TRANSMISSION - varchar(30)
          '5FRYD4' , -- VIN - varchar(30)
          '35,401' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_1.jpg',  -- IMAGECAR - varchar(50)
		  '2016'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'This 2007 Acura MDX 4dr 4WD 4dr Tech/Entertainment Pkg features a 3.7L V6 CYLINDER 6cyl Gasoline engine. It is equipped with a 5 Speed Automatic transmission. The vehicle is Formal Black with a Ebony Full Leather interior.' , -- NOTE - varchar(300)
          11950, -- PRICE - float
          'Acura MDX Tech/Entertainment Pkg' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'B861' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          'V6 Cylinder', -- ENGINE - varchar(30)
          '5-SPEED' , -- TRANSMISSION - varchar(30)
          '2HNYD' , -- VIN - varchar(30)
          '102,946' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_2.jpg',  -- IMAGECAR - varchar(50)
		  '2007'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'Leather Seats! Power Sunroof! Heated Seats! New Tires! Drives Great! WE FINANCE! BUY WITH CONFIDENCE! GIVE US A CALL AT (630) 592-8436 187 NORTH AVE VILLA PARK IL, 60181 www.savimotors.com' , -- NOTE - varchar(300)
          3495, -- PRICE - float
          'Acura TL' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '18100812' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.2L V6 24V MPFI SOHC' , -- ENGINE - varchar(30)
          '5-Speed' , -- TRANSMISSION - varchar(30)
          '19UUA' , -- VIN - varchar(30)
          '231,234' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_3.jpg',  -- IMAGECAR - varchar(50)
		  '2005'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'YOU NEED TO DRIVE IT!! Only 41K miles on this CarFax Certified ONE OWNER and ACCIDENT FREE 2012 Acura TL Technology AWD!!! Basque Red Pearl with Parchment Leather Interior!!! Call us TODAY for more information!' , -- NOTE - varchar(300)
          18851, -- PRICE - float
          'Acura TL 3.7' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'PG1075A' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.7L V6 24V MPFI SOHC' , -- ENGINE - varchar(30)
          '6-Speed' , -- TRANSMISSION - varchar(30)
          '19UUA' , -- VIN - varchar(30)
          '41,451' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_4.jpg',  -- IMAGECAR - varchar(50)
		  '2012'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'NO ACCIDENT!!! CLEAN TITLE. Please visit our website: www.motozoneinc.com for more pictures and free carfax report.' , -- NOTE - varchar(300)
          1995, -- PRICE - float
          'Acura CL 3.2' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '17258510' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.2L V6 24V MPFI SOHC' , -- ENGINE - varchar(30)
          '5-Speed' , -- TRANSMISSION - varchar(30)
          '19UYA' , -- VIN - varchar(30)
          '174,219' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_5.jpg',  -- IMAGECAR - varchar(50)
		  '2001'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'CARVANA CERTIFIED INCLUDES: 150-POINT INSPECTION -- We put each vehicle through a 150-point inspection so that you can be 100% confident in the quality and safety of your vehicle. ' , -- NOTE - varchar(300)
          26400, -- PRICE - float
          'Acura MDX 3.5L' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '2000114070' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.5L V6 24V GDI SOHC' , -- ENGINE - varchar(30)
          '6-Speed' , -- TRANSMISSION - varchar(30)
          '5FRYD' , -- VIN - varchar(30)
          '43,631' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_6.jpg',  -- IMAGECAR - varchar(50)
		  '2015'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'This is the One, Best Price in Town, Only 1702 Miles, Technology Package, Front Wheel Drive, Robust 150hp 2.0 ' , -- NOTE - varchar(300)
          13975, -- PRICE - float
          'Acura ILX 2.0L Technology' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'Y088' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '2.0L I4 16V MPFI SOHC' , -- ENGINE - varchar(30)
          '5-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '19VDE1' , -- VIN - varchar(30)
          '1,702' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_7.jpg',  -- IMAGECAR - varchar(50)
		  '2013'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'LUXURY AUTO SELECTION OFFERS YOU: 2006 Acura RSX TYPE-S 2dr Coupe Blaze Orange Metallic Exterior Over Black Leather Interior Fully Serviced!! Amazing Condition!' , -- NOTE - varchar(300)
          8985, -- PRICE - float
          'Acura RSX Type S' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'L0852' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '2.0L I4 16V MPFI DOHC' , -- ENGINE - varchar(30)
          '6-Speed Manual' , -- TRANSMISSION - varchar(30)
          'JH4DC' , -- VIN - varchar(30)
          '106,882' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_8.jpg',  -- IMAGECAR - varchar(50)
		  '2006'
        )


INSERT INTO dbo.CAR
VALUES  ( 
          'The ALL NEW Honda of Downtown Chicago is Proud to offer you this Exceptional 2014 Acura RDX, Appointed with the Trim and is finished in Crystal Black Pearl over Ebony w/Perforated Leather-Trimmed Interior inside.' , -- NOTE - varchar(300)
          19998, -- PRICE - float
          'Acura RDX Base' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'H018537A' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.5L V6 24V MPFI SOHC' , -- ENGINE - varchar(30)
          '6-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '5J8TB' , -- VIN - varchar(30)
          '28,016' , -- MILEAGE - varchar(30)
          1, -- IDMAKE - int
          'Acura_9.jpg',  -- IMAGECAR - varchar(50)
		  '2014'
        )

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
          6 , -- IDMAKE - int
          'Jeep_1.jpg',  -- IMAGECAR - varchar(50)
		  '2016'
        )
INSERT INTO dbo.CAR
VALUES  ( 
          'CARFAX One-Owner. Brilliant Black Crystal Pearlcoat 2012 Jeep Grand Cherokee SRT8 4WD 5-Speed Automatic SRT HEMI 6.4L V8 MDS *New Oil &amp; Filter Change*, *Professionally Detailed Inside &amp' , -- NOTE - varchar(300)
          29700 , -- PRICE - float
          'Jeep Grand Cherokee SRT8' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'PS2232' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '6.4L V8 16V MPFI OHV' , -- ENGINE - varchar(30)
          '5-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '1C4RJFD' , -- VIN - varchar(30)
          '73,255' , -- MILEAGE - varchar(30)
          6 , -- IDMAKE - int
          'Jeep_2.jpg',  -- IMAGECAR - varchar(50)
		  '2012'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'JEEP CERTIFIED!! 7 YEAR - 100,000 MILE WARRANTY!! SRT 4x4 EDITION!! 470 HORSEPOWER!!! 6.4L V8!!! STILL UNDER FACTORY POWERTRAIN WARRANTY!! BLACK ON BLACK!! NAVIGATION!! ADAPTIVE CRUISE CONTROL!! BLIND SPOT MONITORING AND CROSS PATH DETECTION!! FORWARD COLLISION WARNING! LEATHER AND SUEDE SEATING!' , -- NOTE - varchar(300)
          29700 , -- PRICE - float
          'Jeep Grand Cherokee SRT' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '61263A' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '6.4L V8 16V MPFI OHV' , -- ENGINE - varchar(30)
          '8-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '1C4RJF' , -- VIN - varchar(30)
          '34,892' , -- MILEAGE - varchar(30)
          6 , -- IDMAKE - int
          'Jeep_3.jpg',  -- IMAGECAR - varchar(50)
		  '2014'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'JEEP CERTIFIED!! 7 YEAR - 100,000 MILE WARRANTY!! SRT 4x4 EDITION!! 470 HORSEPOWER!!! 6.4L V8!!! STILL UNDER FACTORY POWERTRAIN WARRANTY!! BLACK ON BLACK!! NAVIGATION!! ADAPTIVE CRUISE CONTROL!! BLIND SPOT MONITORING AND CROSS PATH DETECTION!! FORWARD COLLISION WARNING! LEATHER AND SUEDE SEATING!' , -- NOTE - varchar(300)
          44894 , -- PRICE - float
          'Jeep Grand Cherokee SRT' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '61263A' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '6.4L V8 16V MPFI OHV' , -- ENGINE - varchar(30)
          '8-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '1C4RJF' , -- VIN - varchar(30)
          '34,892' , -- MILEAGE - varchar(30)
          6 , -- IDMAKE - int
          'Jeep_4.jpg',  -- IMAGECAR - varchar(50)
		  '2014'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'Recent Arrival! 2010 Jeep Wrangler Unlimited Rubicon Black Clearcoat/Black Hard Top **ACCIDENT FREE CARFAX**, **NAVIGATION**, **BLUETOOTH**, **KEYLESS ENTRY**, **BACK-UP CAMERA**, **ROCK CRAWLER**,, 4WD. Odometer is 32900 miles below market average!' , -- NOTE - varchar(300)
          24993, -- PRICE - float
          'Jeep Wrangler Unlimited Rubicon' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'A1341A' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '3.8L V6 12V MPFI OHV' , -- ENGINE - varchar(30)
          '6-Speed Manual' , -- TRANSMISSION - varchar(30)
          '1J4HA6' , -- VIN - varchar(30)
          '36,581' , -- MILEAGE - varchar(30)
          6 , -- IDMAKE - int
          'Jeep_5.jpg',  -- IMAGECAR - varchar(50)
		  '2010'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'New Price! Clean CARFAX. CARFAX One-Owner. 2018 4WD Jeep Grand Cherokee Trackhawk Granite Crystal Metallic Clearcoat HEMI 8-Speed Automatic 4D Sport Utility *Still Under Factory Warranty**, Still Under Factory Powertrain Warranty**' , -- NOTE - varchar(300)
          87990, -- PRICE - float
          'Jeep Grand Cherokee Trackhawk' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          'MM1377A' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '6.2L V8 16V MPFI OHV' , -- ENGINE - varchar(30)
          '8-Speed Automatic' , -- TRANSMISSION - varchar(30)
          '1C4RJF' , -- VIN - varchar(30)
          '2,037' , -- MILEAGE - varchar(30)
          6 , -- IDMAKE - int
          'Jeep_6.jpg',  -- IMAGECAR - varchar(50)
		  '2018'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'Carfax Certified! 4x4! 5-Speed! 4.0L Straight Six! Drives Great! Look MEAN! Hardtop and Full Doors! Clean Title and Clean Carfax! MIDWESTS VOLUME PREOWNED VW DEALER! Finance Available for Qualifying Customers!' , -- NOTE - varchar(300)
          6100, -- PRICE - float
          'Jeep Wrangler Sport' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '1304' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          'Straight 6 Cylinder' , -- ENGINE - varchar(30)
          '5-SPEED M/T' , -- TRANSMISSION - varchar(30)
          '1J4FY1' , -- VIN - varchar(30)
          '152,473' , -- MILEAGE - varchar(30)
          6 , -- IDMAKE - int
          'Jeep_7.jpg',  -- IMAGECAR - varchar(50)
		  '1997'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          '4.0L (242) SMFI I6 &quot;POWER TECH&quot; ENGINE&lt;br&gt;&lt;br&gt;This vehicle includes a Money-Back Guarantee* and passed our precise inspection process. Best of all the price you see is the price you pay.' , -- NOTE - varchar(300)
          3999, -- PRICE - float
          'Jeep Grand Cherokee Laredo' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '3C585650' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          'Gas I6 4.0L/242' , -- ENGINE - varchar(30)
          '4-Speed Automatic w/OD' , -- TRANSMISSION - varchar(30)
          '1J4GW' , -- VIN - varchar(30)
          '117,461' , -- MILEAGE - varchar(30)
          6, -- IDMAKE - int
          'Jeep_8.jpg',  -- IMAGECAR - varchar(50)
		  '2003'
        )

INSERT INTO dbo.CAR
VALUES  ( 
          'Vehicle Runs WellSmooth rideNew tiresUpgraded stereoNon-smoker ownerLots of storageRegularly maintainedArctic cold a/cMust test driveDone all Scheduled MaintenanceCustom wheelsMint ConditionGreat first rideFamily friendlyDrives greatNot seen any accidents' , -- NOTE - varchar(300)
          7995, -- PRICE - float
          'Jeep Wrangler SE' , -- NAMECAR - varchar(30)
          'Gasoline' , -- FUELTYPE - varchar(30)
          '496275' , -- STOCK - varchar(30)
          'Automatic' , -- GASOLINE - varchar(30)
          '4 Cylinder' , -- ENGINE - varchar(30)
          '5-SPEED M/T' , -- TRANSMISSION - varchar(30)
          '1J4FY2' , -- VIN - varchar(30)
          '135,166' , -- MILEAGE - varchar(30)
          6, -- IDMAKE - int
          'Jeep_9.jpg',  -- IMAGECAR - varchar(50)
		  '1999'
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

SELECT c.* FROM dbo.WARRANTY w, dbo.CONDITIONSWARRANTY c, dbo.MAKE m WHERE c.IDWARRANTY = w.ID AND m.IDMAKE= w.IDMAKE AND m.IDMAKE='1'
SELECT DISTINCT m.* FROM dbo.CAR c, dbo.MAKE m WHERE c.IDMAKE = m.IDMAKE AND c.IDMAKE='1'
SELECT d.* FROM dbo.MAKE m , dbo.WARRANTY w , dbo.DETAILSWARRANTY d  WHERE m.IDMAKE = w.IDMAKE AND w.ID=d.IDWARRANTY AND w.IDMAKE ='1'
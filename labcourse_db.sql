create database labcourse_db
use labcourse_db

create table Ambullanca(
AmbullancaId int identity (1,1),
Targat varchar (255),
VozitesiName varchar (255),
VozitesiLastname varchar (255)
)
 
insert into Ambullanca  values ('589-638-3079', 'Wilfrid', 'Anderl');
insert into Ambullanca  values ('528-451-1488', 'Bentlee', 'Soanes');
insert into Ambullanca  values ('118-583-1367', 'Allx', 'Nettleship');
insert into Ambullanca  values ('190-497-8222', 'Tatiania', 'Scantlebury');

create table appointments(
	appointmentid int identity (1,1),
	username varchar(255) ,
	uselastname varchar(255) ,
	userphone varchar(255) ,
	useremail varchar(255) ,
	appointmentdate date ,
	textmessage varchar(255),
	departmentid varchar(255),
	doctorid varchar (255)
)

insert into appointments  values ('Marco', 'Castanho', '983-788-9374', 'mbysouth0@miitbeian.gov.cn', '8/20/2022', null, 'Nurology', 'Bysouth');
insert into appointments  values ('Dinnie', 'Ruckhard', '271-408-9135', 'ddunster1@seattletimes.com', '1/29/2021', null, 'Cardiology', 'Dunster');
insert into appointments  values ('Kenon', 'Kevis', '206-106-7389', 'kmcilmurray2@jigsy.com', '9/24/2020', null, 'Nurology', 'McIlmurray');
insert into appointments  values ('Marina', 'Cristofano', '969-464-0128', 'mkinton3@disqus.com', '5/17/2021', null, 'Cardiology', 'Kinton');

create table Department(
	departamentid int identity(1,1),
	departmentname varchar (255),
	departmentrooms varchar (255),
	departmentdescription varchar (255)
)

insert into Department values ('Cardiology', '1', 'Kontrolli per semundje te zemres');
insert into Department values ('Ortoped', '2', 'Kontrolli per eshtera');
insert into Department values ('Pediatry', '1', 'Kontrolli per femijet dhe te rinjet');
insert into Department values ('Urology', '2', 'Kontrolli per semundjet urinare');


create table Departments(
	DepartmentId int identity(1,1),
	DepartmentName varchar(500)
)

insert into Departments values('Cardiology');
insert into Departments values('Neurology');

select * from diagnoses
create table diagnoses(
    patientsname varchar (255) not null,
	diagnoseid int identity (1,1),
	diagnosename varchar (max) not null,
	diagnosedescription varchar (max),
	nursesname varchar (255) not null,
	doctorsname varchar (255) not null
)

insert into diagnoses values('Jesica','Diabet','Mase me e madhe sesa qe duhet e sheqerit ne trup','Richard Jeff','Walter Roger')
insert into diagnoses values('Nerita','Mbipeshe','Mase me e madhe sesa qe duhet','Richard Jeff','Dimitri Heizenberg')
insert into diagnoses values('Anabelle','Nenpeshe','Mase me e vogel sesa qe duhet te kete njeriu','Cathleen Monkleigh','Sara Roger')
insert into diagnoses values('Jesica','Diabet','Mase me e madhe sesa qe duhet e sheqerit ne trup','Richard Jeff','Oliver Twist')

create table dietFood(
	dietFoodid int identity (1,1),
	dietName varchar(255),
	allowedFoods varchar(255),
	notallowedFoods varchar(255),
	proteins varchar(255),
	PhotoFileName varchar(500),
)

insert into dietFood values ('Mediterranean Diet', 'Fruits, veggies, grains, beans, nuts, olive oil and flavorful herbs and spices', 'Sweets and red meat is not allowed', 'Fiber-packed produce and whole grains.','healthy.png')
insert into dietFood values ('Flexitarian Diet', 'Veggie hash with eggs, oatmeal with hazelnuts, soup, greek yogurt with berries, quiche', 'Fried things, breaded, baked, grilled, broiled and steamed', 'Fiber-packed produce and grains','healthy.png')
insert into dietFood values ('Weight Watchers Diet', 'Egg, bacon and avocado sandwiches, spinach salad, classic lasagna, chicken soup, red meat, oatmea ', 'No foods are off limits', 'Fiber-packed produce, grains, beans','healthy.png');
insert into dietFood values ('Nordic Diet', 'Fruits, vegetables, root veggies, grains: rye,barley and oats, salmon, yougurt and other low-fat diary.', 'Grilled or smoked meats, white bread, convenience foods', 'Fiber-packed produce, grains, beans, seeds, nuts','healthy.png')

create table diets(
	dietid int identity (1,1),
	diettype varchar(255),
	startdate varchar (255) ,
	enddate varchar(255) 
)

insert into diets values ('Maintain Weight','05-03-2022','15-04-2022');
insert into diets values ('Maintain Weight','05-06-2022','15-06-2022');
insert into diets values ('Maintain Weight','05-07-2022','25-07-2022');
insert into diets values ('Maintain Weight','05-08-2022','02-09-2022');

create table DoctorsCardsData(
	DoctorId int identity(1,1),
	DoctorName varchar(500),
	Department varchar(500),
	PhotoFileName varchar(500),
	CV varchar(500)
)

insert into doctorsCardsData values('Gus McCraine','Neurology','doc1.png','Gus_McCraine_CV.docx');
insert into doctorsCardsData values('Cathleen Monkleigh','Neurology','doc1.png','Cathleen_Monkleigh_CV.docx');
insert into doctorsCardsData values('Constance Lantaff','Neurology','doc1.png','Constance_Lantaff_CV.docx');
insert into doctorsCardsData values('Sari Spellacey','Neurology','doc1.png','Sari_Spellacey_CV.docx');
select * from DoctorsCardsData

create table fatura (
	faturaid int identity (1,1),
	vizita varchar (255),
	totali varchar (255),
	pacientiname varchar (255),
	pacientilastname varchar (255)
)

insert into fatura  values ('Kontrolla', 49.15, 'Norris', 'Meriott');
insert into fatura  values ('Kontrolla', 15.89, 'Cortie', 'Winston');
insert into fatura  values ('Trajtim', 44.73, 'Shaine', 'Goodere');
insert into fatura  values ('Kontrolla', 24.75, 'Michaela', 'Eccleshall');

create table Laboratori(
	laboratoriId int identity (1,1),
	llojianalizes varchar (255),
	cmimianalizes varchar(255)
)

insert into Laboratori  values ('VitaminD', '€24,57');
insert into Laboratori  values ('Kolesteroli', '€60,83');
insert into Laboratori  values ('Crp', '€13,12');
insert into Laboratori  values ('Kalciumi', '€109,02');

create table medikamentet(
medikamentiid int identity (1,1),
emri varchar (255),
doktoriname varchar (255),
doktorilastname varchar (255),
cmimi varchar (255)
)

insert into medikamentet  values ('Fluorouracil', 'Claude', 'Garnsworth', 46.51);
insert into medikamentet  values ('Pure Ivory Skin Defense Makeup SPF 15', 'Fairleigh', 'Molines', 35.35);
insert into medikamentet  values ('lansoprazole', 'Pieter', 'Orris', 33.74);
insert into medikamentet  values ('Migraine Headache Therapy', 'Callida', 'Fellman', 47.69);


create table nurses(
	id int identity (1,1),
	name varchar(255) not null,
	lastname varchar(255) not null,
	birthday varchar(255),
	phone varchar(255),
	email varchar(255) not null,
	password varchar(255) not null,
	logkey char (3)
)

insert into nurses  values ('Sol', 'Cromack', '4/9/1990', '352-561-5593', 'scromack0@woothemes.com', 3518395, 294);
insert into nurses  values ('Manuel', 'Shawel', '4/4/1962', '193-392-4427', 'mshawel1@scientificamerican.com', 4319688, 294);
insert into nurses  values ('Agnes', 'Eynaud', '10/23/1970', '475-430-1062', 'aeynaud2@wisc.edu', 4869886, 294);
insert into nurses  values ('Austina', 'Keets', '2/8/1998', '355-296-3635', 'akeets3@hp.com', 4707431, 294);

create table orari(
	orariID int identity(1,1),
	Doktori varchar(255),
	dita varchar(255),
	Fillimi varchar(255),
	Mbarimi varchar(255)
)
insert into orari values ('Oliver Jackson','E Hane','10:00','14:00');
insert into orari values ('Joseph Kenedy','E Marte','09:00','13:00');
insert into orari values ('Bob Tyler','E Merkure','10:00','14:00');
insert into orari values ('Tonye Sutcliffe','E Ejte','10:00','14:00');

create table orarinur(
	orariID int identity(1,1),
	Nurse varchar(255),
	dita varchar(255),
	Fillimi varchar(255),
	Mbarimi varchar(255)
)

insert into orarinur  values ('Anne Twist','E Merkur','10:00', '20:00')
insert into orarinur  values ('Sol Cromack','E Hene','10:00', '20:00')
insert into orarinur  values ('Anne Twist','E Merkur','10:00', '20:00')

create table room(
	dhomaid int identity (1,1),
	nrdhomes varchar(255),
	kapaciteti varchar(255),
	departamenti varchar(255)
)  

insert into room  values (5, 15, 'Cardiology');
insert into room  values (1, 19, 'Nurology');
insert into room  values (11, 12, 'Stomatology');
insert into room  values (8, 10, 'Oncology');

create table patients(
	id int identity (1,1),
	name varchar(255) not null,
	lastname varchar(255) not null,
	birthday varchar(255),
	phone varchar(255),
	email varchar(255) not null,
	password varchar(255) not null,
	logkey char (3),
)

insert into patients values ('Estelle', 'Harbisher', '9/25/2000', '587-729-7456', 'eharbisher0@yelp.com', 2685807, 295);
insert into patients values ('Vernon', 'Sandeman', '3/27/1978', '200-575-5064', 'vsandeman1@lycos.com', 3120812, 295);
insert into patients values ('Wang', 'Keigher', '4/24/1973', '253-900-0798', 'wkeigher2@tinyurl.com', 2702816, 295);
insert into patients values ('Curtice', 'Wrightham', '9/10/1966', '635-417-9529', 'cwrightham3@cocolog-nifty.com', 4717325, 295);

---Hapi 1 Krijimi i nje master key nga passwordi---
------------------
USE labcourse_db;
GO
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'SQLShack@1';

---Hapi 2--Per me pa master key
------------------
SELECT name KeyName,
	symmetric_key_id KeyID,
	key_length KeyLength,
	algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

----Hapi 3--Per me kriju nje certifikate --
------------------
USE labcourse_db;
GO
CREATE CERTIFICATE MyCertificate WITH SUBJECT = 'Protect my data';
GO

----Hapi 4 --Me shfaqe certifikten
-----------------
SELECT name CertName,
	certificate_id CertID,
	pvt_key_encryption_type_desc EncryptType,
	issuer_name Issuer
FROM sys.certificates;

--Hapi 5 --Krijimi i qelesit simetrik--
----------------
CREATE SYMMETRIC KEY SymetricKey WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE MyCertificate;

---Hapi 6 -- selecti per mi shiqu krejt usert--
----------------
SELECT * FROM dbo.diagnoses

---hapi 6 -- select per me shfaqe pjesen e maseter key dhe symetric key--
----------------
SELECT name KeyName,
	symmetric_key_id KeyID,
	key_length KeyLength,
	algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;

----hapi 7 -- krijimi i nje kolone te re qe ka me shfaqe dekriptimin me vone ---
ALTER TABLE labcourse_db.dbo.diagnoses
ADD Diagnose_encrypt varbinary(MAX)

--hapi 8 -- enkriptimi i kolones qe ka pas si qeelim per tu enkriptuar--
----------------
OPEN SYMMETRIC KEY SymetricKey
	DECRYPTION BY CERTIFICATE MyCertificate;


UPDATE labcourse_db.dbo.diagnoses
	SET Diagnose_encrypt = EncryptByKey (Key_GUID('SymetricKey'), diagnosedescription)
	FROM labcourse_db.dbo.diagnoses;
GO

CLOSE SYMMETRIC KEY SymetricKey;
GO

------------

--Hapi 9 -- Fshirja e kolones se paenkriptuar--
---------------
ALTER TABLE labcourse_db.dbo.diagnoses DROP COLUMN diagnosedescription;
GO

--Hapi 10 -- Dekriptimi i kolones
---------------
OPEN SYMMETRIC KEY SymKey_test
	DECRYPTION BY CERTIFICATE Certificate_test;


SELECT patientsname, diagnoseid, diagnosename, Diagnose_encrypt AS 'Encrypted data', nursesname, doctorsname,
	CONVERT(varchar, DecryptByKey(Diagnose_encrypt)) AS 'Decrypted diagnose description'
FROM labcourse_db.dbo.diagnoses;


CLOSE SYMMETRIC KEY SymetricKey;
GO

--Hapi 11 -- Krijimi i nje useri te ri ne databaze--
--------------
USE [master]
GO
CREATE LOGIN [SQLShack] WITH PASSWORD=N'sqlshack', 
DEFAULT_DATABASE=[CustomerData], 
CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [CustomerData]
GO
CREATE USER [SQLShack] FOR LOGIN [SQLShack]
GO
USE [CustomerData]
GO
ALTER ROLE [db_datareader] ADD MEMBER [SQLShack]
GO


---Hapi 11 -- Tani shiqojme nese seri mund te kete qasje ne dekriptimin e te dhenave----
---Ketu se pari kete pjes te kodit e vendos me nje querry te ri qe e hap nga serveri i userit
---edhe e ben ekzekutimin ku e vren qe te shfaqet nje mesazh si ne vijim 
---(Msg 15151, Level 16, State 1, Line 1
---Cannot find the symmetric key 'SymKey_test', because it does not exist or you do not have permission.)
---dhe verehet qe tek kolona e dekriptimit te gjitha vlerat jane null.
---Nese kete kod e ekzekuton ketu ai te jep rezultatin e dekriptuar pasi qe eshte ne nivel te  System administratorit.
--------------
OPEN SYMMETRIC KEY SymKey_test
DECRYPTION BY CERTIFICATE Certificate_test;


SELECT CustID, CustName,BankACCNumber_encrypt AS 'Encrypted data',
CONVERT(varchar, DecryptByKey(BankACCNumber_encrypt)) AS 'Decrypted Bank account number'
FROM CustomerData.dbo.CustomerInfo;


---Hapi 12 -- Ne kete hap ne po i japin userit sqlshack acces per te dekriptuar kolonen specifike d.m.th sys.admin
-------------
GRANT VIEW DEFINITION ON SYMMETRIC KEY::SymKey_test TO SQLShack;
GO
GRANT VIEW DEFINITION ON Certificate::[Certificate_test] TO SQLShack;
GO
GRANT CONTROL ON Certificate::[Certificate_test] TO SQLShack

---Hapi 13 -- Nese shkojme tek querry i meparshem ne serverin e userit edhe provojm perseri me ekzekutu ate querry
---ne kete rast nuk ka per tu shfaqur errori ne dhe na jep rezultatin e dekriptimit pasi qe sys.admin i ka dhene 
---qasje per dekriptim---
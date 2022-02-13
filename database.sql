CREATE TABLE BUILDER
(
ID INT NOT NULL PRIMARY KEY,
phone INT NOT NULL,
email VARCHAR(40) NOT NULL,
name VARCHAR(80) NOT NULL
);

CREATE TABLE BUYER
(
ID INT NOT NULL PRIMARY KEY,
phone INT NOT NULL,
email VARCHAR(40) NOT NULL,
name VARCHAR(80) NOT NULL,
price_paid INT NOT NULL,
userID INT NOT NULL,
FOREIGN KEY (userID) REFERENCES USER(ID) on update cascade on delete set null
);

CREATE TABLE COMPANY
(
ID INT NOT NULL PRIMARY KEY,
phone INT NOT NULL,
email VARCHAR(40) NOT NULL,
name VARCHAR(80) NOT NULL,
address VARCHAR(160) NOT NULL
);

CREATE TABLE INFO
(
ID INT NOT NULL PRIMARY KEY,
bedrooms INT NOT NULL,
bathrooms INT NOT NULL,
stories INT NOT NULL,
size DECIMAL NOT NULL,
pool INT NOT NULL,
garages INT NOT NULL,
status VARCHAR(20) NOT NULL,
material VARCHAR(40),
ocean_view VARCHAR(3),
green_view VARCHAR(3)
);

CREATE TABLE OWNER
(
ID INT NOT NULL PRIMARY KEY,
phone INT NOT NULL,
email VARCHAR(40) NOT NULL,
name VARCHAR(80) NOT NULL,
realtorID INT NOT NULL,
userID INT NOT NULL,
FOREIGN KEY (userID) REFERENCES USER(ID) on update cascade on delete set null
FOREIGN KEY (realtorID) REFERENCES REALTOR(ID) on update cascade on delete set null
);

CREATE TABLE PRICE
(
ID INT NOT NULL,
pdate DATE NOT NULL,
price INT NOT NULL,
PRIMARY KEY (ID, pdate)
);

CREATE TABLE PROPERTY
(
propertyID INT NOT NULL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
buyerID INT,
realtorID INT NOT NULL,
builderID INT NOT NULL,
ownerID INT NOT NULL,
infoID INT NOT NULL,
date INT NOT NULL,
FOREIGN KEY (propertyID, date) REFERENCES PRICE(ID, pdate) on update cascade on delete set null,
FOREIGN KEY (realtorID) REFERENCES REALTOR(ID) on update cascade on delete set null,
FOREIGN KEY (builderID) REFERENCES BUILDER(ID) on update cascade on delete set null,
FOREIGN KEY (ownerID) REFERENCES OWNER(ID) on update cascade on delete set null,
FOREIGN KEY (infoID) REFERENCES INFO(ID) on update cascade on delete set null,
FOREIGN KEY (buyerID) REFERENCES BUYER(ID) on update cascade on delete set null
);

CREATE TABLE REALTOR
(
ID INT NOT NULL PRIMARY KEY,
companyID INT NOT NULL,
phone INT NOT NULL,
email VARCHAR(40) NOT NULL,
name VARCHAR(80) NOT NULL,
FOREIGN KEY (companyID) REFERENCES COMPANY(ID) on update cascade on delete set null
);

CREATE TABLE USER
(
ID INT NOT NULL PRIMARY KEY,
income INT,
search_status VARCHAR(40)
);

INSERT INTO BUILDER (ID, phone, email, name) VALUES (486486486, 2061119874, 'builder2@hotmail.com', 'richard miller');
INSERT INTO BUILDER (ID, phone, email, name) VALUES (654654654, 2061111234, 'builderemail@hotmail.com', 'john parker');

INSERT INTO BUYER (ID, phone, email, name, price_paid, userID) VALUES (489489489, 4255677485, 'buyer4.gmail.com', 'Karen Moore', 100000, 589589123);
INSERT INTO BUYER (ID, phone, email, name, price_paid, userID) VALUES (748748748, 4255678948, 'buyer3.gmail.com', 'jennifer thomas', 40000, 589589789);
INSERT INTO BUYER (ID, phone, email, name, price_paid, userID) VALUES (582582582, 4257894321, 'buyer2.gmail.com', 'joseph wilson', 75000, 589589456);
INSERT INTO BUYER (ID, phone, email, name, price_paid, userID) VALUES (987654321, 4251234567, 'buyeremail.gmail.com', 'william brown', 50000, 589589589);

INSERT INTO COMPANY (ID, phone, email, name, address) VALUES (789789147, 5431236543, 'company2@gmail.com', 'Susan White', '16842 123th avw w Bothell, WA');
INSERT INTO COMPANY (ID, phone, email, name, address) VALUES (789789789, 5431233456, 'companyemail@gmail.com', 'David Miller', '432 11th st w Seattle, WA');

INSERT INTO INFO (ID, bedrooms, bathrooms, stories, size, pool, garages, status, material, ocean_view, green_view) VALUES (47847848, 5, 3, 4, 2000, 2, 2, 'bought', 'cement wood', 'YES', 'YES');
INSERT INTO INFO (ID, bedrooms, bathrooms, stories, size, pool, garages, status, material, ocean_view, green_view) VALUES (47847851, 2, 1, 2, 1800, 0, 0, 'bought', 'cement wood', 'NO', 'NO');
INSERT INTO INFO (ID, bedrooms, bathrooms, stories, size, pool, garages, status, material, ocean_view, green_view) VALUES (47847859, 3, 2, 3, 1500, 1, 1, 'bought', 'cement wood', 'YES', 'NO');
INSERT INTO INFO (ID, bedrooms, bathrooms, stories, size, pool, garages, status, material, ocean_view, green_view) VALUES (45612378, 3, 2, 3, 1200, 0, 1, 'bought', 'cement wood', 'NO', 'YES');

INSERT INTO OWNER (ID, phone, email, name, realtorID, userID) VALUES (44444444, 4259851234, 'owner4@gmail.com', 'robert davis', 478964789, 58);
INSERT INTO OWNER (ID, phone, email, name, realtorID, userID) VALUES (33333333, 4257891456, 'owner3@gmail.com', 'mary smith', 478964789, 57);
INSERT INTO OWNER (ID, phone, email, name, realtorID, userID) VALUES (22222222, 4254257856, 'owner2@gmail.com', 'james williams', 345345345, 56);
INSERT INTO OWNER (ID, phone, email, name, realtorID, userID) VALUES (11111111, 4251111234, 'owneremail@gmail.com', 'bob smith', 345345345, 55);

INSERT INTO PRICE (ID, pdate, price) VALUES (9634356, '2019-7-22', 2000000);
INSERT INTO PRICE (ID, pdate, price) VALUES (7894356, '2020-12-1', 90000);
INSERT INTO PRICE (ID, pdate, price) VALUES (1234356, '2021-1-17', 150000);
INSERT INTO PRICE (ID, pdate, price) VALUES (4354356, '2021-3-16', 100000);

INSERT INTO PROPERTY (propertyID, name, buyerID, realtorID, builderID, ownerID, infoID, date) VALUES (9634356, 'property4', 489489489, 478964789, 486486486, 44444444, 47847848, '2019-7-22');
INSERT INTO PROPERTY (propertyID, name, buyerID, realtorID, builderID, ownerID, infoID, date) VALUES (7894356, 'property3', 748748748, 478964789, 654654654, 33333333, 47847851, '2020-12-1');
INSERT INTO PROPERTY (propertyID, name, buyerID, realtorID, builderID, ownerID, infoID, date) VALUES (1234356, 'property2', 582582582, 345345345, 486486486, 22222222, 47847859, '2021-1-17');
INSERT INTO PROPERTY (propertyID, name, buyerID, realtorID, builderID, ownerID, infoID, date) VALUES (4354356, 'thepropertyname', 987654321, 345345345, 654654654, 11111111, 45612378, '2021-3-16');

INSERT INTO REALTOR (ID, companyID, phone, email, name) VALUES (478964789, 789789147, 4561237894, 'realtoremail@gmail.com', 'Nick Jones');
INSERT INTO REALTOR (ID, companyID, phone, email, name) VALUES (345345345, 789789789, 4561237894, 'realtoremail@gmail.com', 'Nick Jones');

INSERT INTO USER (ID, income, search_status) VALUES (58, 250000, 'selling');
INSERT INTO USER (ID, income, search_status) VALUES (57, 99000, 'selling');
INSERT INTO USER (ID, income, search_status) VALUES (56, 50000, 'not selling');
INSERT INTO USER (ID, income, search_status) VALUES (55, 150000, 'not selling');
INSERT INTO USER (ID, income, search_status) VALUES (589589123, 100000, 'searching');
INSERT INTO USER (ID, income, search_status) VALUES (589589789, 95000, 'not searching');
INSERT INTO USER (ID, income, search_status) VALUES (589589456, 75000, 'not searching');
INSERT INTO USER (ID, income, search_status) VALUES (589589589, 85000, 'pending purchase');

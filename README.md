# Real-Estate-Database
SQL Database for storing information about properties

Introduction
This document provides design documents and implementation for a property database system. This system will allow prospective property buyers to browse properties, and for prospective sellers to not only list their property, but also look at other listings. This system allows those two parties, along with realtors and reality companies to have a centralized area to conduct business.

This 

With our current implementation we can expand usage to allow for things such as a rating system for other users.

Entity Relationship:
![image](https://user-images.githubusercontent.com/53063791/153776118-2726de1f-12ca-498e-98c8-63dead55f598.png)

Relational Map:
![image](https://user-images.githubusercontent.com/53063791/153776142-ffab683f-ecec-444c-89ef-b26442d1cae8.png)

Queries
SQL Statement
Purpose
EXAMPLE OF CREATE
CREATE TABLE PRICE
(
ID INT NOT NULL,
pdate INT NOT NULL,
price INT NOT NULL,
PRIMARY KEY (ID, pdate)
);
Used to Create tables
EXAMPLE OF INSERT
INSERT INTO PRICE(ID, pdate, price)
VALUES(654654123, 3-16-2021, 100000);
Inserting data into the table to fill with data
EXAMPLE OF DROP
Drop TABLE INFO;
 Clears the table INFO if there is a table called INFO.
EXAMPLE OF OPEN
.open REALESATE.db
Opens the database REALESATE.db




Support Functions
SQL Statement
Purpose
SELECT name
FROM PROPERTY
WHERE price > 100000;
Select property over 100,000
SELECT pname
FROM PRICE
WHERE price > 100000;
Select price over 100,000
SELECT name
FROM PROPERTY
WHERE infoID = (
SELECT ID
FROM INFO
WHERE pool > 0
);
 Select property with pools
SELECT ID
FROM REALTOR
WHERE companyID = 789789789;
Select realtor with the same companyID



Normal Form Discussion
All of our relations are in 3NF form. This is due to the fact that our system is strongly reliant on ID numbers, which means that each relation will only have 1 candidate key, which makes all functional dependencies not transitive. The IDs will identify all parts of the relation, and no attributes in any of the relations should be able to identify other non-key attributes. 



Project Evaluation

Each member of the group worked every week and responded and communicated in a timely manner. A significant effort was made by each member of the team to contribute their part of the project. The workload was distributed fairly evenly throughout the 3 people in the group. The project ended up consisting of 9 tables and a fairly simple schema utilizing IDs to avoid confusion. The communication and effort level as well as consistent and evenly distributed workloads were what went right. Suggestions for improvement, constructive criticism, and consistent feedback, are more benefits for working on the project as a group. The hard part about this project was trying to communicate complex ideas clearly, and constructing a timeline to finish the project and following through on that timeline. After revising the proposal there was an abundance of ideas and tables Some of which had to be left out of the final design. If we had more time to work on the project, we would have included more of these ideas including a rating system for the house as well as scores for neighborhoods and schools, etc. 



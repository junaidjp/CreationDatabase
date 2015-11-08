CREATE TABLE Bank
(
bankId int NOT NULL PRIMARY KEY,
bankName varchar(255),
bankType varchar(255),
locatiomn varchar(200)
);



CREATE TABLE accountInfo
(

accountno varchar(255),
accounttype varchar(255),
balance float
);


create tables for
Customer 

Employee 

Address 


CREATE TABLE customer	
(

phone varchar(255),
name varchar(255),
ssn varchar(255),
address varchar(255)
);

CREATE TABLE employee
(

name varchar(255),
empid varchar(255),
ssn varchar(255),
designation varchar(255)
);

CREATE TABLE address
(

city varchar(255),
streetname varchar(255),
zipcode varchar(255),
state varchar(255)
);

create database if not exists quanlybanhang;
use quanlybanhang;
create table Customer(
cID int primary key,
cName varchar(50),
cAge int
);
create table `Order`(
oID int primary key,
cID int,
oDate date,
oTotalprice int ,
foreign key(cID)references Customer(cID)
);
create table Product(
pID int primary key,
pName varchar(50),
pPrice int
);
create table OrderDetail(
oID int,
pID int,
odQTY varchar(50),
primary key(oID,pID),
foreign key(oID)references Product(pID),
foreign key(oID)references `Order`(oID)
);
use quanlybanhang;
insert into customer
value(1, 'Minh Quan', 10);
insert into customer
value(2, 'Ngoc Oanh', 20);
insert into customer
value(3, 'Hong Ha', 50);
insert into `order` (oID,cID,oDate) value(1, 1, '2006-01-03');
insert into `order` (oID,cID,oDate) value(2, 2, '2006-03-03');
insert into `order` (oID,cID,oDate) value(3, 1, '2006-06-03');
insert into product value(1, 'May Giat', 3);
insert into product value(2, 'Tu Lanh', 5);
insert into product value(3, 'Dieu Hoat', 7);
insert into product value(4, 'Quat', 1);
insert into product value(5, 'Bep Dien', 2);
insert into orderdetail value (1, 1, 3);
insert into orderdetail value (1, 3, 7);
insert into orderdetail value (1, 4, 2);
insert into orderdetail value (2, 1, 1);
insert into orderdetail value (3, 1, 8);
insert into orderdetail value (2, 5, 4);
insert into orderdetail value (2, 3, 3);
use quanlybanhang;
select oID,oDate,oTotalprice from `order`;
select c.cID, c.cName, c.cAge, p.pName, od.odQTY
from Customer c, `Order` o, Product p, OrderDetail od
where c.cID = o.cID and o.oID = od.oID and od.pID = p.pID;
select c.cName
from Customer c left join `Order` o on c.cID = o.cID
where o.oID is null;
select o.oID, o.oDate, sum(od.odQTY*p.pPrice) as Gia_tien
from `Order` o, OrderDetail od, Product p 
where o.oID = od.oID and p.pID = od.pID
group by o.oID;
           
select * from productSeller;
select count(*) from clients;
select * from clients c, orders o where c.idClient = idOrderClient;
select concat(Fname, ' ', Lname) as Client, idOrder as Request, orderStatus as Status  from clients c, orders o where c.idClient = idOrderClient;

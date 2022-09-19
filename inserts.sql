use ecommerce;
show tables;

insert into clients (Fname, Minit, Lname, CPF, Address)
		values('Ana', 'A', 'Bredariol', 556633251, 'rua antônio 29, Centro - Bauru'),
			  ('Josué', 'B', 'Silva', 987654321, 'rua josué 289, Centro - Bauru'),
              ('Henrique', 'F', 'Marques', 45678913, 'rua flor 109, Centro - Bauru'),
              ('Ricardo', 'S', 'Oliveira', 789123456, 'rua 30 861, Centro - Bauru'),
              ('Bianca', 'C', 'Caracol', 98745631, 'rua jau 19, Centro - Jau'),
              ('Marcos', 'M', 'Silva', 654789123, 'rua jau 28, Centro - Camboja');

insert into product (Pname, classification_kids, category, avaliação, size) values
					('Celular', false, 'Eletrôico', '4', null),
                    ('Fone', true, 'Eletrôico', '3', null),
                    ('Microfone', false, 'Eletrôico', '4', null),
                    ('Notebook', false, 'Eletrôico', '3', '3x57x80');

select * from clients;
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values
			(31, default, 'compra via aplicativo', null, 1),
            (32, default, 'compra via aplicativo', 50, 0),
            (33, 'Confirmado', null, null, 1),
            (34, default, 'compra via web site', 150, 0);
select * from product;
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
			(4,5,2,'Disponível'),
            (2,5,1,'Disponível'),
            (3,6,1,'Disponível');

insert into productStorage (storageLocation, quantity) values
			('Rio de Janeiro', 1000),
            ('Rio de Janeiro', 500),
            ('São Paulo', 10),
            ('São Paulo', 100),
            ('São Paulo', 10),
            ('Brasília', 60);

insert into storageLocation (idLproduct, idLstorage, location) values
			(1,2, 'RJ'),
            (2,6, 'GO');

insert into supplier (SocialName, CNPJ, contact) values
			('Almeida e filhos', 123456789123456, '21985474'),
            ('Eletrônicos Silva', 85451964914357, '21985484'),
            ('Eletrônicos Valma', 93456789393469, '21975745');

select * from supplier;

insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
			(1,1,500),
            (1,2,400),
            (2,4,633),
            (3,3,5),
            (2,5,10);

insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
			('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219567895),
            ('Botique Durgas', null,null, 123456783, 'Rio de Janeiro', 219567895),
            ('Kids world', null, 456789123654485, null, 'São Paulo', 1198657484);

select * from seller;

insert into productSeller (idPseller, idPproduct, prodQuantity) values
			(1,6,80),
            (2,7,10);
 
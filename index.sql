create database if not exists uvv;
show databases;
use uvv;

create table if not exists vendas(
venda_id int unique primary key not null,
produto varchar(100),
quantidade int not  null,
preco_unit int not null
);

insert into vendas
(venda_id, produto, quantidade, preco_unit)
values(1, 'produto a', '5', '10.00'),
(2, 'produto b', '3', 20.00),
(3, 'produto a', '2', 10.00),
(4, 'produto c', '7', '15.00'),
(5,'produto b', ' 4', '20.00'),
(6,'produto a', '3', '10.00');

select venda_id, sum(quantidade*preco_unit) from vendas group by venda_id;








 

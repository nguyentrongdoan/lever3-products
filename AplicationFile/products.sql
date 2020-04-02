create database products_manager;
use products_manager;
create table productlines(
    productLine varchar(50) not null primary key ,
    textDescription text not null ,
    htmlDescription varchar(255) not null ,
    images varchar(300)not null
);
create table products(
    productCode varchar(50)not null primary key ,
    productName varchar(50)not null ,
    productScale varchar(255)not null ,
    productVendor varchar(255)not null ,
    productDescription text not null ,
    quantityInStock int not null ,
    buyPrice float not null ,
    MSRP float not null
);
alter table products add productLine varchar(50);
alter table products add foreign key (productLine)references productlines(productLine);
select productCode, productName, buyPrice, quantityInStock from products where buyPrice > 56.76 and quantityInStock > 10;

select productCode, productName, buyPrice, textDescription from products join productlines on products.productLine = productlines.productLine where buyPrice > 56.76 and buyPrice < 95.59;

select productCode, productName, buyPrice, quantityInStock, productVendor, productLine from products where products.productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';
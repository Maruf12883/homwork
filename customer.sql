CREATE DARABASE ONLINEDOKON;
GO
USE ONLINEDOKON 
GO
CREATE TABLE CUSTOMERS (
      CUSTOMERSID INT IDENTITY(1,1) PRIMARY KEY,
	  FIRSTNAME NVARCHAR (50) NOT NULL,
	  LASTNAME NVARCHAR(50)
	  EMAIL NVARCHAR (100)
	  PHONE NVARCHAR(20) NULL,
	  CREATEDAT DATETIME DEFAULT GETDATE ()
);
CREATE TABLE products (
      productid identity int identity (1,1) primary key,
	  productname nvarchar (100) not null,
	  description nvarchar (255) null,
	  price decimal (10,2) not null,
	  stock int not null default 0,
	  createdat datetime default getdate ()
);
create table orders (
      orderid int identity (1,1) primary key,
	  customerid int not null,
	  orderdate datetime default getdate(),
	  totalamount decimal (10,2) not null,
	  totalamount decimal (10,2) not null,
	  foreign key (customerid) references customers(customerid)
create table ordersdetails (
      orderdetailid int identity (1,1) primary key,
	  orderid int not null,
	  productid int not null,
	  quantity int not null,
	  unitprice decimal (10,2) not null,
	  foreign key (ordersid) references orders(orderid)
	  foreign key (productid) references products(productid)
);
insert into customers (firstname, lastname,email,phone)
values
('ali','karimov','alikarimov@example.com','+998901233344')
('dilnoza','olimova','dilnoza.olimova@example.com','+998972343455');
insert into products(productname,description,price,stock)
values 
('noutbook lenovo','lenovo ideapad 3,8gb ram,512gb ssd',750.00, 10)
('smartfon iphone 13','apple iphone 13,128gn', 900.00,5);
insert into orders (customerid,totalamount)
values 
(1,1650.00);--ali karimovning buyurtmasi
insert into orderdetails (orderid,productid,quantity,uniprice)
values
(1,1,1, 750.00),--1 dona lenovo noutbook 
(1,2,1,900.00);--1 dona iphone 13
select 
8 from customers
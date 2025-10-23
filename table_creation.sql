create database Project_Store_DB;
use Project_Store_DB;

create table customers (customer_id int primary key auto_increment,
						first_name varchar(200) not null,
                        last_name varchar(200) not null,
                        phone varchar(20) ,
                        email varchar(200) not null,
                        street varchar(200) ,
                        city varchar(40),
                        state varchar(30),
                        zip_code varchar(30)
						);
select * from customers;

create	table stores ( store_id int primary key auto_increment,
						store_name varchar(2000) not null,
                        phone varchar(20),
                        email varchar(200),
                        street varchar(200),
                        city varchar(200),
                        state varchar(30),
                        zip_code varchar(30)
						);
select * from stores;

create table brands (brand_id int primary key auto_increment not null,
					brand_name varchar(200) not null
                    );
select * from brands;

create table categories (category_id int primary key auto_increment not null,
					category_name varchar(200) not null
                    );
select * from categories;

create table staffs (staff_id int primary key not null,
					 firt_name varchar(50) not null,
                     last_name varchar(50) not null,
                     email varchar(200) unique not null,
                     phone varchar(20),
                     `active` int not null,
                     store_id int not null ,
                     foreign key (store_id) references stores(store_id),
                     manager_id int
					);
select * from staffs;

create table orders (order_id int primary key not null,
					 customer_id int ,
                     order_status int not null,
                     order_date date not null,
                     required_date date not null,
                     shipped_date date ,
                    store_id int not null,
                    staff_id int not null,
					foreign key (customer_id) references customers(customer_id),
                    foreign key (store_id) references stores(store_id),
                    foreign key (staff_id) references staffs(staff_id)
					);
select * from orders;

create table products (product_id int primary key auto_increment,
						product_name varchar(255) not null,
                        brand_id int not null,
                        category_id int not null,
                        model_year int not null,
                        list_price decimal(10,2) not null,
                        foreign key (brand_id) references brands(brand_id),
                        foreign key (category_id) references categories(category_id)
                        );
select * from products;

-- Then recreate it with the same schema
create table order_items(order_id int ,
						item_id int,
                        product_id int not null,
                        quantity int not null,
                        list_price decimal(10,2) not null,
                        discount decimal(4,2)  not null,
                        foreign key (order_id) references orders(order_id),
                        foreign key (product_id) references products(product_id)
                        );
select * from order_items;

create table stocks	  (store_id int not null ,
                        product_id int not null,
                        quantity int ,
                         primary key (store_id,product_id),
                        foreign key (store_id) references stores(store_id),
                        foreign key (product_id) references products(product_id)
                        );
select * from stocks;
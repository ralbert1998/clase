sudo mariadb --entrar

show databases; --mirar las bases de datos que hay

drop database --(nombre)--; --borrar base de datos
create database --(nombre)--; --crear base de datos
use --(nombre de la base que quieres entrar)-- --para entrar en ella
constraint ??
drop  ??
select -- selecionar un dato

create table customers (
  `e-mail` varchar(150), -- en vez de la doble comilla con doble comilla en postgres solo se le pone acento en catalan `e-mail`. Esto es para caracteres raros
  fname varchar(50) not null,
  mname varchar(50),
  lname varchar(50) not null,
  address varchar(200),
  date_of_birth date default '1900-1-1',  -------default?
  constraint pk_customers primary key (`e-mail`),
  constraint uniq_address unique (address)
);

show create table `--nombre--`; --para mstrar el codigo puesto
describe --nombre tabla--;




--ctrl+h para cambiar todo "" por ``
create table orders (
  number serial primary key,
  date timestamp default now(),
  `e-mail` varchar(150),
  constraint fk_orders foreign key (`e-mail`) references customers (`e-mail`)
);

create table order_items (
  order_number int,
  line_number int, -- esto es como serial. SI EN LA CLAVE COMPUESTA LOS DOS NO SON INCREMENTS NO SE PUEDE HACER, HAY QUE PONERLO A MANO
  product_code varchar(5),
  quantity int default 1,
  price numeric (7,2), --precio no exite se cambia por numeric puedes poner las cifras para alante , y para atras. Tambien puede utilizar decimal. SERIAL AHORA TAMBIEN VALE
  constraint pk_order_items primary key (order_number, line_number),
  constraint fk_1_order_items foreign key (order_number) references orders (number),
  constraint fk_2_order_items foreign key (product_code) references products (code)
);

create table products (
  code varchar(5) primary key,
  name varchar(20) not null,
  price numeric (7,2)
);

ctrl+l -- limpiar pantalla
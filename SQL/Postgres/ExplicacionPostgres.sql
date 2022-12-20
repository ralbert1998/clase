su --entres en usuario--

varchar -- bloque de texto--
(150) -- caracteres--
not null -- campo obligatorio --
; --acabar la linea/orden --
unique -- es unico pero si le cabiar alguna cosa cuenta como disitinto aun que sea espacio o coma--
primary key --
foreign key --
number --
date -- 
select -- selecionar un dato
default ??????????????

create table -(nombre tabla)- --crear tabla--
insert into -(tabla)- (atributos) --insertar en tal tabla tantos atributos--
values (propiedades (osea dentro de la tabla))
date timestamp -- Incluye dato y hora del servidor donde esta situado --
numbre serial -- Va incrementandoel dato --
delete from -(tabla)- where number=2 A; -- Eliminar un dato de la tabla --
--constrins--
insert into products values ('play05' --comillas porque es un tipo de datos texto --, 'Playstation 5 Digital Edition, '400,99' -- si pongo comilla tengo que poner comillas arriba porque sinos lo interpreta como dos columnas--)
create database --nombre--
alter table --products--  añadir columna a la tabla
add column description varchar (150) -- como lo estas insertando en algo creado ya si ponemos not null nos causara problemas--
update products set description='A classic of my of my 40s' where code= 'play1';--nos lo aplicara en la fila porque le hemos puesto donde(primary key)
set description = 'blalalal'; -- aplica a toda la columna
\c -- nombre de la base de datos--
constraint --restriciion sobre las columnas

Que es description en codigo
















update --nombre--
set description = 'blalalal';



create table customer (
  email varchar(150) not null,
  name varchar(40) not null,
  surname varchar(40) not null,
  middle_name varchar(40) not null,
  address varchar(100),
  date_of_brith date not null,
  primary key (email)
);

create table order (
  order_number date auto_increment not null,
  datetime date not null
  primary key (order number)
  foreign key (email)
  references customer (email)
);

create table products (
  code varchar (5) primary key,
  name varchar(150) not null,
  price money
);

create table order_items (
  order_number int,
  line_number serial,
  product_code varchar (5),
  quantity int default 1,
  price money,
  constraint pk_order_items primary key (order_number, line_number),
  constraint fk_1_order_item foreign key (order_number) references orders (number),
  constraint fk_2_order_item foreign key (product_number) references products (code)
);

insert into order_items (orden_number, product_code, quantity, price) values
(1, 'play5', 5, 400.99),
(1, 'play4', 1, 200.99),
(1, 'play5', 10, 100.99);

select 

update order_items set quantity=2 where order_number=2 and product_code='play4';









Hecho por sergi

-- postgresql
create table customers (
  "e-mail" varchar(150),
  fname varchar(50) not null,
  mname varchar(50),
  lname varchar(50) not null,
  address varchar(200),
  date_of_birth date default '1900-1-1',
  constraint pk_customers primary key ("e-mail"),
  constraint uniq_address unique (address)
);
create table orders (
  number serial primary key,
  date timestamp default now(),
  "e-mail" varchar(150),
  constraint fk_orders foreign key ("e-mail") references customers ("e-mail")
);
create table products (
  code varchar(5) primary key,
  name varchar(20) not null,
  price money
);
create table order_items (
  order_number int,
  line_number serial,
  product_code varchar(5),
  quantity int default 1,
  price money,
  constraint pk_order_items primary key (order_number, line_number),
  constraint fk_1_order_items foreign key (order_number) references orders (number),
  constraint fk_2_order_items foreign key (product_code) references products (code)
);





insert into customers ("e-mail", fname, lname, address)
values ('s@noemail.org', 'Sergi', 'G.', 'Carcas, 6');

insert into orders ("e-mail")
values ('s@noemail.org');

insert into products
values ('PLAY1', 'Playstation 1', 100.99);

insert into order_items (order_number, product_code, quantity, price)
values (1, 'PLAY5', 5, 400.99),
  (1, 'PLAY4', 1, 200.99),
  (1, 'PLAY1', 10, 100.99);


update order_items
set quantity = 2
where order_number = 1
  and product_code = 'PLAY4';

update order_items
set quantity = 2
where order_number = 1
  and line_number = 2;













  ctrl+l -- limpiar pantalla
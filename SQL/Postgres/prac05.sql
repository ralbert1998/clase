create table gym_team (
id serial primary key,
nickname varchar(50) not null,
nif varchar(30),
address varchar(100),
country varchar(100) not null
);
create table gymnast (
  id serial primary key,
  name varchar(100) not null,
  subname varchar (300) not null,
  Id_number(DNI) varchar (25) not null, 


);
create table tournament (

);
create table level (
  email varchar(150) not null,
  name varchar(40) not null,
  surname varchar(40) not null,
  middle_name varchar(40) not null,
  address varchar(100),
  date_of_brith date not null,
  primary key (email)
);
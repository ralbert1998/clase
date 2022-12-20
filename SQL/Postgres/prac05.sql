create table team (
id serial primary key
nickname varchar(50)
);
create table match (

);
create table tournament (

);
create table customer (
  email varchar(150) not null,
  name varchar(40) not null,
  surname varchar(40) not null,
  middle_name varchar(40) not null,
  address varchar(100),
  date_of_brith date not null,
  primary key (email)
);